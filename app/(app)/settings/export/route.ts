import { NextRequest, NextResponse } from "next/server";

import { createClient } from "@/lib/supabase/server";

type ExportFormat = "csv" | "json";

type ExportUserCardRow = {
  card_id: string;
  owned_at: string;
  cards: {
    category: string;
    collector_number: number;
    energy_type: string | null;
    id: string;
    name: string;
    rarity: string;
    set_id: string;
    sets: {
      id: string;
      name: string;
      slug: string;
    } | null;
  } | null;
};

const EXPORT_PAGE_SIZE = 1000;

export async function GET(request: NextRequest) {
  const supabase = await createClient();
  const { data: authData, error: authError } = await supabase.auth.getUser();

  if (authError || !authData.user) {
    return NextResponse.redirect(new URL("/auth/login", request.url));
  }

  const format = getExportFormat(request.nextUrl.searchParams.get("format"));

  if (!format) {
    return NextResponse.json(
      { error: "Unsupported export format. Use json or csv." },
      { status: 400 },
    );
  }

  const { rows, error } = await getOwnedCards(authData.user.id);

  if (error) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }

  const exportedAt = new Date();
  const fileBaseName = `pocketdex-collection-${formatDateForFilename(exportedAt)}`;

  if (format === "csv") {
    return new Response(toCsv(rows), {
      headers: getDownloadHeaders(`${fileBaseName}.csv`, "text/csv"),
    });
  }

  return new Response(toJson(rows, authData.user.id, exportedAt), {
    headers: getDownloadHeaders(
      `${fileBaseName}.json`,
      "application/json; charset=utf-8",
    ),
  });
}

async function getOwnedCards(userId: string) {
  const supabase = await createClient();
  const rows: ExportUserCardRow[] = [];

  for (let from = 0; ; from += EXPORT_PAGE_SIZE) {
    const to = from + EXPORT_PAGE_SIZE - 1;
    const { data, error } = await supabase
      .from("user_cards")
      .select(
        `
          card_id,
          owned_at,
          cards (
            id,
            name,
            collector_number,
            rarity,
            category,
            energy_type,
            set_id,
            sets (
              id,
              name,
              slug
            )
          )
        `,
      )
      .eq("user_id", userId)
      .order("card_id", { ascending: true })
      .range(from, to)
      .returns<ExportUserCardRow[]>();

    if (error) {
      return { rows, error };
    }

    rows.push(...data);

    if (data.length < EXPORT_PAGE_SIZE) {
      return { rows, error: null };
    }
  }
}

function getExportFormat(format: string | null): ExportFormat | null {
  if (format === "csv" || format === "json") {
    return format;
  }

  return null;
}

function getDownloadHeaders(filename: string, contentType: string) {
  return {
    "Cache-Control": "private, no-store",
    "Content-Disposition": `attachment; filename="${filename}"`,
    "Content-Type": contentType,
  };
}

function toJson(
  rows: ExportUserCardRow[],
  userId: string,
  exportedAt: Date,
) {
  return JSON.stringify(
    {
      schema: "pocketdex.user_cards.v1",
      exported_at: exportedAt.toISOString(),
      user_id: userId,
      card_count: rows.length,
      user_cards: rows.map((row) => ({
        card_id: row.card_id,
        owned_at: row.owned_at,
        card: row.cards
          ? {
              id: row.cards.id,
              name: row.cards.name,
              collector_number: row.cards.collector_number,
              rarity: row.cards.rarity,
              category: row.cards.category,
              energy_type: row.cards.energy_type,
              set_id: row.cards.set_id,
              set: row.cards.sets,
            }
          : null,
      })),
    },
    null,
    2,
  );
}

function toCsv(rows: ExportUserCardRow[]) {
  const headers = [
    "card_id",
    "owned_at",
    "set_id",
    "set_name",
    "set_slug",
    "collector_number",
    "card_name",
    "rarity",
    "category",
    "energy_type",
  ];

  const csvRows = rows.map((row) => {
    const card = row.cards;

    return [
      row.card_id,
      row.owned_at,
      card?.set_id ?? "",
      card?.sets?.name ?? "",
      card?.sets?.slug ?? "",
      card?.collector_number.toString() ?? "",
      card?.name ?? "",
      card?.rarity ?? "",
      card?.category ?? "",
      card?.energy_type ?? "",
    ]
      .map(formatCsvField)
      .join(",");
  });

  return `${headers.join(",")}\n${csvRows.join("\n")}\n`;
}

function formatCsvField(value: string) {
  if (/[",\r\n]/.test(value)) {
    return `"${value.replaceAll('"', '""')}"`;
  }

  return value;
}

function formatDateForFilename(date: Date) {
  return date.toISOString().slice(0, 10);
}
