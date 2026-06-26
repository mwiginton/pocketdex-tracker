import { NextRequest, NextResponse } from "next/server";

import { createClient } from "@/lib/supabase/server";

type SupabaseClient = Awaited<ReturnType<typeof createClient>>;

type ImportedCard = {
  cardId: string;
  ownedAt: string | null;
};

type ImportParseResult = {
  cards: ImportedCard[];
  duplicateRows: number;
  skippedRows: number;
};

type ImportStatus = "error" | "success";

const IMPORT_BATCH_SIZE = 1000;
const MAX_IMPORT_BYTES = 2 * 1024 * 1024;

export async function POST(request: NextRequest) {
  const supabase = await createClient();
  const { data: authData, error: authError } = await supabase.auth.getUser();

  if (authError || !authData.user) {
    return NextResponse.redirect(new URL("/auth/login", request.url), 303);
  }

  const formData = await request.formData();
  const file = formData.get("collectionFile");

  if (!(file instanceof File) || file.size === 0) {
    return redirectToSettings(request, "error", {
      message: "Choose a JSON or CSV file to import.",
    });
  }

  if (file.size > MAX_IMPORT_BYTES) {
    return redirectToSettings(request, "error", {
      message: "Import files must be 2 MB or smaller.",
    });
  }

  let parsed: ImportParseResult;

  try {
    parsed = parseImportFile(await file.text(), file.name);
  } catch (error) {
    return redirectToSettings(request, "error", {
      message: getErrorMessage(error),
    });
  }

  if (parsed.cards.length === 0) {
    return redirectToSettings(request, "error", {
      message: "No card IDs were found in that file.",
    });
  }

  let existingCardIds: Set<string>;

  try {
    existingCardIds = await getExistingCardIds(
      supabase,
      parsed.cards.map((card) => card.cardId),
    );
  } catch (error) {
    return redirectToSettings(request, "error", {
      message: getErrorMessage(error),
    });
  }

  const importRows = parsed.cards
    .filter((card) => existingCardIds.has(card.cardId))
    .map((card) => ({
      user_id: authData.user.id,
      card_id: card.cardId,
      ...(card.ownedAt ? { owned_at: card.ownedAt } : {}),
    }));

  const unknownCards = parsed.cards.length - importRows.length;

  if (importRows.length === 0) {
    return redirectToSettings(request, "error", {
      message: "None of the imported card IDs exist in this database.",
      skipped: parsed.skippedRows + unknownCards,
      duplicates: parsed.duplicateRows,
    });
  }

  for (let index = 0; index < importRows.length; index += IMPORT_BATCH_SIZE) {
    const batch = importRows.slice(index, index + IMPORT_BATCH_SIZE);
    const { error } = await supabase
      .from("user_cards")
      .upsert(batch, { onConflict: "user_id,card_id" });

    if (error) {
      return redirectToSettings(request, "error", {
        message: error.message,
      });
    }
  }

  return redirectToSettings(request, "success", {
    imported: importRows.length,
    skipped: parsed.skippedRows + unknownCards,
    duplicates: parsed.duplicateRows,
  });
}

async function getExistingCardIds(supabase: SupabaseClient, cardIds: string[]) {
  const existingCardIds = new Set<string>();

  for (let index = 0; index < cardIds.length; index += IMPORT_BATCH_SIZE) {
    const batch = cardIds.slice(index, index + IMPORT_BATCH_SIZE);
    const { data, error } = await supabase
      .from("cards")
      .select("id")
      .in("id", batch);

    if (error) {
      throw new Error(error.message);
    }

    data.forEach((card) => existingCardIds.add(card.id));
  }

  return existingCardIds;
}

function parseImportFile(text: string, filename: string): ImportParseResult {
  const trimmedText = text.trim();
  const extension = filename.toLowerCase().split(".").pop();

  if (!trimmedText) {
    return { cards: [], duplicateRows: 0, skippedRows: 0 };
  }

  if (extension === "json" || trimmedText.startsWith("{")) {
    return parseJsonImport(trimmedText);
  }

  if (
    extension === "csv" ||
    trimmedText.includes(",") ||
    trimmedText.toLowerCase().startsWith("card_id")
  ) {
    return parseCsvImport(trimmedText);
  }

  throw new Error("Unsupported import file. Use JSON or CSV.");
}

function parseJsonImport(text: string): ImportParseResult {
  const parsed = JSON.parse(text) as unknown;
  const rawCards = getJsonCardRows(parsed);

  return normalizeImportedCards(
    rawCards.map((row) => {
      if (typeof row === "string") {
        return { cardId: row, ownedAt: null };
      }

      if (isObject(row)) {
        return {
          cardId: getStringValue(row.card_id) ?? getNestedCardId(row),
          ownedAt: normalizeOwnedAt(getStringValue(row.owned_at)),
        };
      }

      return { cardId: null, ownedAt: null };
    }),
  );
}

function parseCsvImport(text: string): ImportParseResult {
  const rows = parseCsvRows(text);

  if (rows.length === 0) {
    return { cards: [], duplicateRows: 0, skippedRows: 0 };
  }

  const headers = rows[0].map((header) => header.trim().toLowerCase());
  const cardIdIndex = headers.findIndex(
    (header) => header === "card_id" || header === "id",
  );
  const ownedAtIndex = headers.findIndex((header) => header === "owned_at");

  if (cardIdIndex === -1) {
    throw new Error("CSV imports must include a card_id column.");
  }

  return normalizeImportedCards(
    rows.slice(1).map((row) => ({
      cardId: row[cardIdIndex] ?? null,
      ownedAt: normalizeOwnedAt(row[ownedAtIndex]),
    })),
  );
}

function normalizeImportedCards(
  rows: Array<{ cardId: string | null; ownedAt: string | null }>,
): ImportParseResult {
  const cards = new Map<string, ImportedCard>();
  let duplicateRows = 0;
  let skippedRows = 0;

  rows.forEach((row) => {
    const cardId = row.cardId?.trim();

    if (!cardId) {
      skippedRows += 1;
      return;
    }

    if (cards.has(cardId)) {
      duplicateRows += 1;
      return;
    }

    cards.set(cardId, {
      cardId,
      ownedAt: row.ownedAt,
    });
  });

  return {
    cards: Array.from(cards.values()),
    duplicateRows,
    skippedRows,
  };
}

function getJsonCardRows(parsed: unknown): unknown[] {
  if (Array.isArray(parsed)) {
    return parsed;
  }

  if (isObject(parsed) && Array.isArray(parsed.user_cards)) {
    return parsed.user_cards;
  }

  throw new Error("JSON imports must include a user_cards array.");
}

function getNestedCardId(row: Record<string, unknown>) {
  if (isObject(row.card)) {
    return getStringValue(row.card.id);
  }

  return null;
}

function parseCsvRows(text: string) {
  const rows: string[][] = [];
  let field = "";
  let row: string[] = [];
  let inQuotes = false;

  for (let index = 0; index < text.length; index += 1) {
    const character = text[index];
    const nextCharacter = text[index + 1];

    if (character === '"' && inQuotes && nextCharacter === '"') {
      field += '"';
      index += 1;
      continue;
    }

    if (character === '"') {
      inQuotes = !inQuotes;
      continue;
    }

    if (character === "," && !inQuotes) {
      row.push(field);
      field = "";
      continue;
    }

    if ((character === "\n" || character === "\r") && !inQuotes) {
      if (character === "\r" && nextCharacter === "\n") {
        index += 1;
      }

      row.push(field);
      rows.push(row);
      field = "";
      row = [];
      continue;
    }

    field += character;
  }

  if (inQuotes) {
    throw new Error("CSV has an unclosed quoted field.");
  }

  row.push(field);
  rows.push(row);

  if (rows[0]?.[0]) {
    rows[0][0] = rows[0][0].replace(/^\uFEFF/, "");
  }

  return rows.filter((csvRow) =>
    csvRow.some((csvField) => csvField.trim().length > 0),
  );
}

function normalizeOwnedAt(value: string | null | undefined) {
  const trimmedValue = value?.trim();

  if (!trimmedValue) {
    return null;
  }

  return Number.isNaN(Date.parse(trimmedValue)) ? null : trimmedValue;
}

function getStringValue(value: unknown) {
  return typeof value === "string" ? value : null;
}

function isObject(value: unknown): value is Record<string, unknown> {
  return typeof value === "object" && value !== null && !Array.isArray(value);
}

function redirectToSettings(
  request: NextRequest,
  status: ImportStatus,
  params: Record<string, string | number>,
) {
  const url = new URL("/settings", request.url);

  url.searchParams.set("import", status);

  Object.entries(params).forEach(([key, value]) => {
    url.searchParams.set(key, String(value));
  });

  return NextResponse.redirect(url, 303);
}

function getErrorMessage(error: unknown) {
  return error instanceof Error ? error.message : "Unable to import that file.";
}
