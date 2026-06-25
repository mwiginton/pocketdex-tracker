import { readFileSync, writeFileSync } from "node:fs";

const htmlPath =
  process.argv[2] ?? "C:/Users/miche/AppData/Local/Temp/a1-limitless.html";
const outputPath = process.argv[3] ?? "supabase/seed-genetic-apex.sql";

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

  const diamonds = [...text].filter((character) => character === "◊").length;
  if (diamonds > 0) return `diamond_${diamonds}`;

  const stars = [...text].filter((character) => character === "☆").length;
  if (stars > 0) return `star_${stars}`;

  throw new Error(`Unknown rarity: ${JSON.stringify(text)}`);
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
    trainerType = decodeHtml(cells[3].replace(/<[^>]+>/g, "")).toLowerCase();
  }

  return {
    id: `A1-${String(collectorNumber).padStart(3, "0")}`,
    setId: "A1",
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

for (const card of cards.filter((card) => card.collectorNumber <= 226)) {
  if (!baseCardIdByName.has(card.name)) {
    baseCardIdByName.set(card.name, card.id);
  }
}

for (const card of cards) {
  if (card.collectorNumber > 226) {
    card.variantOfCardId = baseCardIdByName.get(card.name) ?? null;
  }
}

const missingNumbers = [];
for (let collectorNumber = 1; collectorNumber <= 286; collectorNumber += 1) {
  if (!cards.some((card) => card.collectorNumber === collectorNumber)) {
    missingNumbers.push(collectorNumber);
  }
}

if (cards.length !== 286 || missingNumbers.length > 0) {
  throw new Error(
    `Expected 286 cards with no gaps. Found ${cards.length}; missing ${missingNumbers.join(", ")}`,
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

const mainCards = cards.filter((card) => card.collectorNumber <= 226);
const secretCards = cards.filter((card) => card.collectorNumber > 226);

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

const sql = `-- Genetic Apex (A1): 226 main-set cards and 60 secret cards.
-- Source checked 2026-06-24: https://pocket.limitlesstcg.com/cards/A1
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

-- Expected result: 286 cards, numbered 1 through 286.
select
  count(*) as card_count,
  min(collector_number) as first_number,
  max(collector_number) as last_number
from public.cards
where set_id = 'A1';
`;

writeFileSync(outputPath, sql, "utf8");

const rarityCounts = cards.reduce((counts, card) => {
  counts[card.rarity] = (counts[card.rarity] ?? 0) + 1;
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
    },
    null,
    2,
  ),
);
