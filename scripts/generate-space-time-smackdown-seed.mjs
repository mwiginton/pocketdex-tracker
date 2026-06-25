import { readFileSync, writeFileSync } from "node:fs";

const htmlPath =
  process.argv[2] ?? "C:/Users/miche/AppData/Local/Temp/a2-limitless.html";
const outputPath = process.argv[3] ?? "supabase/seed-space-time-smackdown.sql";

const setId = "A2";
const setName = "Space-Time Smackdown";
const mainSetCardCount = 155;
const totalCardCount = 207;

const html = readFileSync(htmlPath, "utf8");
const rows = [...html.matchAll(/<tr data-hover="([^"]+)">([\s\S]*?)<\/tr>/g)];

const typeMap = {
  G: "grass",
  R: "fire",
  W: "water",
  L: "lightning",
  P: "psychic",
  F: "fighting",
  D: "darkness",
  M: "metal",
  N: "dragon",
  C: "colorless",
};

const trainerTypeMap = {
  item: "item",
  supporter: "supporter",
  tool: "pokemon_tool",
  "pokemon tool": "pokemon_tool",
  "pokémon tool": "pokemon_tool",
};

function decodeHtml(value) {
  return value
    .replaceAll("&amp;", "&")
    .replaceAll("&#039;", "'")
    .replaceAll("&quot;", "\"")
    .replaceAll("&lt;", "<")
    .replaceAll("&gt;", ">")
    .trim();
}

function sqlString(value) {
  if (value === null) return "null";
  return `'${String(value).replaceAll("'", "''")}'`;
}

function mapRarity(value) {
  const text = value.replace(/\s+/g, " ").trim();

  if (text.includes("Crown")) return "crown";

  const diamonds = [...text].filter((character) => character === "\u25ca").length;
  if (diamonds > 0) return `diamond_${diamonds}`;

  const stars = [...text].filter((character) => character === "\u2606").length;
  if (stars > 0) return `star_${stars}`;

  throw new Error(`Unknown rarity: ${JSON.stringify(text)}`);
}

function mapTrainerType(value, collectorNumber) {
  const normalized = value.toLowerCase().replace(/\s+/g, " ").trim();
  const trainerType = trainerTypeMap[normalized];

  if (!trainerType) {
    throw new Error(
      `Unknown trainer type ${JSON.stringify(value)} on card ${collectorNumber}`,
    );
  }

  return trainerType;
}

function parseCard([, imageUrl, body]) {
  const cells = [...body.matchAll(/<td(?: class="[^"]+")?>([\s\S]*?)<\/td>/g)].map(
    (match) => match[1],
  );
  const collectorNumber = Number(cells[1].replace(/<[^>]+>/g, "").trim());
  const name = decodeHtml(cells[2].replace(/<[^>]+>/g, ""));
  const typeSymbol = cells[3].match(/<span class="ptcg-symbol">([^<]+)<\/span>/)
    ?.[1];
  const rarityText = decodeHtml(cells[4].replace(/<[^>]+>/g, ""));

  let category;
  let energyType = null;
  let trainerType = null;

  if (typeSymbol) {
    category = "pokemon";
    energyType = typeMap[typeSymbol];

    if (!energyType) {
      throw new Error(`Unknown type symbol ${typeSymbol} on card ${collectorNumber}`);
    }
  } else {
    category = "trainer";
    trainerType = mapTrainerType(
      decodeHtml(cells[3].replace(/<[^>]+>/g, "")),
      collectorNumber,
    );
  }

  return {
    id: `${setId}-${String(collectorNumber).padStart(3, "0")}`,
    setId,
    collectorNumber,
    name,
    category,
    energyType,
    trainerType,
    rarity: mapRarity(rarityText),
    variantOfCardId: null,
    imageUrl,
  };
}

const cards = rows.map(parseCard);
const baseCardIdByName = new Map();

for (const card of cards.filter((card) => card.collectorNumber <= mainSetCardCount)) {
  if (!baseCardIdByName.has(card.name)) {
    baseCardIdByName.set(card.name, card.id);
  }
}

for (const card of cards) {
  if (card.collectorNumber > mainSetCardCount) {
    card.variantOfCardId = baseCardIdByName.get(card.name) ?? null;
  }
}

const missingNumbers = [];
for (let collectorNumber = 1; collectorNumber <= totalCardCount; collectorNumber += 1) {
  if (!cards.some((card) => card.collectorNumber === collectorNumber)) {
    missingNumbers.push(collectorNumber);
  }
}

if (cards.length !== totalCardCount || missingNumbers.length > 0) {
  throw new Error(
    `Expected ${totalCardCount} cards with no gaps. Found ${cards.length}; missing ${missingNumbers.join(", ")}`,
  );
}

const toRow = (card, isLast) => {
  const values = [
    card.id,
    card.setId,
    card.collectorNumber,
    card.name,
    card.category,
    card.energyType,
    card.trainerType,
    card.rarity,
    card.variantOfCardId,
    card.imageUrl,
  ];

  return `  (${values
    .map((value) => (typeof value === "number" ? value : sqlString(value)))
    .join(", ")})${isLast ? "" : ","}`;
};

const mainCards = cards.filter((card) => card.collectorNumber <= mainSetCardCount);
const secretCards = cards.filter((card) => card.collectorNumber > mainSetCardCount);

const upsertClause = `on conflict (id) do update set
  set_id = excluded.set_id,
  collector_number = excluded.collector_number,
  name = excluded.name,
  category = excluded.category,
  energy_type = excluded.energy_type,
  trainer_type = excluded.trainer_type,
  rarity = excluded.rarity,
  variant_of_card_id = excluded.variant_of_card_id,
  image_url = excluded.image_url,
  updated_at = now();`;

const insertHeader = `insert into public.cards (
  id, set_id, collector_number, name, category,
  energy_type, trainer_type, rarity, variant_of_card_id, image_url
) values`;

const sql = `-- ${setName} (${setId}): ${mainSetCardCount} main-set cards and ${
  totalCardCount - mainSetCardCount
} secret cards.
-- Source checked 2026-06-24: https://pocket.limitlesstcg.com/cards/${setId}
--
-- Rarity convention:
-- diamond_1 .. diamond_4, star_1 .. star_3, crown
--
-- Image URLs below are third-party CDN URLs. Mirror appropriately licensed
-- assets into storage you control before relying on them in production.

begin;

${insertHeader}
${mainCards.map((card, index) => toRow(card, index === mainCards.length - 1)).join("\n")}
${upsertClause}

-- Insert secret-art variants after their referenced base cards.
${insertHeader}
${secretCards.map((card, index) => toRow(card, index === secretCards.length - 1)).join("\n")}
${upsertClause}

commit;

-- Expected result: ${totalCardCount} cards, numbered 1 through ${totalCardCount}.
select
  count(*) as card_count,
  min(collector_number) as first_number,
  max(collector_number) as last_number
from public.cards
where set_id = '${setId}';
`;

writeFileSync(outputPath, sql, "utf8");

const rarityCounts = cards.reduce((counts, card) => {
  counts[card.rarity] = (counts[card.rarity] ?? 0) + 1;
  return counts;
}, {});

const trainerTypeCounts = cards
  .filter((card) => card.category === "trainer")
  .reduce((counts, card) => {
    counts[card.trainerType] = (counts[card.trainerType] ?? 0) + 1;
    return counts;
  }, {});

console.log(
  JSON.stringify(
    {
      outputPath,
      cardCount: cards.length,
      mainCardCount: mainCards.length,
      secretCardCount: secretCards.length,
      secretCardsWithoutBase: secretCards
        .filter((card) => !card.variantOfCardId)
        .map((card) => `${card.id} ${card.name}`),
      rarityCounts,
      trainerTypeCounts,
    },
    null,
    2,
  ),
);
