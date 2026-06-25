import { readFileSync, writeFileSync } from "node:fs";

const inputDir = process.argv[2] ?? "C:/Users/miche/AppData/Local/Temp";
const outputPath = process.argv[3] ?? "supabase/seed-genetic-apex-odds.sql";

const packSources = [
  {
    id: "a1-mewtwo",
    sourceName: "Mewtwo",
    htmlPath: `${inputDir}/a1-mewtwo.html`,
    rarePackCrownCardId: "A1-286",
    regularRates: {
      diamond_1: [0.02, 0.02, 0.02, 0, 0],
      diamond_2: [0, 0, 0, 0.02571, 0.01714],
      diamond_3: [0, 0, 0, 0.00357, 0.01428],
      diamond_4: [0, 0, 0, 0.00333, 0.01332],
      star_1: [0, 0, 0, 0.00321, 0.01286],
      star_2: [0, 0, 0, 0.00055, 0.00222],
      star_3: [0, 0, 0, 0.00222, 0.00888],
      crown: [0, 0, 0, 0.00013, 0.00053],
    },
    rarePackSlotRates: {
      star_1: 0.05263,
      star_2: 0.05263,
      star_3: 0.05263,
      crown: 0.05263,
    },
  },
  {
    id: "a1-charizard",
    sourceName: "Charizard",
    htmlPath: `${inputDir}/a1-charizard.html`,
    rarePackCrownCardId: "A1-284",
    regularRates: {
      diamond_1: [0.02, 0.02, 0.02, 0, 0],
      diamond_2: [0, 0, 0, 0.02571, 0.01714],
      diamond_3: [0, 0, 0, 0.00357, 0.01428],
      diamond_4: [0, 0, 0, 0.00333, 0.01332],
      star_1: [0, 0, 0, 0.00321, 0.01286],
      star_2: [0, 0, 0, 0.0005, 0.002],
      star_3: [0, 0, 0, 0.00222, 0.00888],
      crown: [0, 0, 0, 0.00013, 0.00053],
    },
    rarePackSlotRates: {
      star_1: 0.05,
      star_2: 0.05,
      star_3: 0.05,
      crown: 0.05,
    },
  },
  {
    id: "a1-pikachu",
    sourceName: "Pikachu",
    htmlPath: `${inputDir}/a1-pikachu.html`,
    rarePackCrownCardId: "A1-285",
    regularRates: {
      diamond_1: [0.02, 0.02, 0.02, 0, 0],
      diamond_2: [0, 0, 0, 0.02571, 0.01714],
      diamond_3: [0, 0, 0, 0.00357, 0.01428],
      diamond_4: [0, 0, 0, 0.00333, 0.01332],
      star_1: [0, 0, 0, 0.00321, 0.01286],
      star_2: [0, 0, 0, 0.0005, 0.002],
      star_3: [0, 0, 0, 0.00222, 0.00888],
      crown: [0, 0, 0, 0.00013, 0.00053],
    },
    rarePackSlotRates: {
      star_1: 0.05,
      star_2: 0.05,
      star_3: 0.05,
      crown: 0.05,
    },
  },
];

function decodeHtml(value) {
  return value
    .replaceAll("&amp;", "&")
    .replaceAll("&#039;", "'")
    .replaceAll("&quot;", "\"")
    .replaceAll("&lt;", "<")
    .replaceAll("&gt;", ">")
    .trim();
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

function parseCards(htmlPath) {
  const html = readFileSync(htmlPath, "utf8");
  const rows = [...html.matchAll(/<tr data-hover="([^"]+)">([\s\S]*?)<\/tr>/g)];

  return rows.map(([, , body]) => {
    const cells = [...body.matchAll(/<td(?: class="[^"]+")?>([\s\S]*?)<\/td>/g)].map(
      (match) => match[1],
    );
    const collectorNumber = Number(cells[1].replace(/<[^>]+>/g, "").trim());
    const name = decodeHtml(cells[2].replace(/<[^>]+>/g, ""));
    const rarity = mapRarity(decodeHtml(cells[4].replace(/<[^>]+>/g, "")));

    return {
      id: `A1-${String(collectorNumber).padStart(3, "0")}`,
      collectorNumber,
      name,
      rarity,
    };
  });
}

function probabilityAtLeastOnce(slotRates) {
  return 1 - slotRates.reduce((unseen, slotRate) => unseen * (1 - slotRate), 1);
}

function roundProbability(value) {
  return Number(value.toFixed(10));
}

function sqlString(value) {
  return `'${String(value).replaceAll("'", "''")}'`;
}

const regularPackChance = 0.9995;
const rarePackChance = 0.0005;
const nonPackPullableCardIds = new Set(["A1-283"]);
const rows = [];
const summary = {};

for (const pack of packSources) {
  const cards = parseCards(pack.htmlPath).filter(
    (card) => !nonPackPullableCardIds.has(card.id),
  );
  const secretCards = cards.filter((card) => card.collectorNumber > 226);
  const rarePackCards = secretCards.filter(
    (card) => card.rarity !== "crown" || card.id === pack.rarePackCrownCardId,
  );
  const rarePackCardIds = new Set(rarePackCards.map((card) => card.id));

  for (const card of cards) {
    const regularPullProbability =
      regularPackChance * probabilityAtLeastOnce(pack.regularRates[card.rarity]);
    const rarePackSlotRate =
      rarePackCardIds.has(card.id) ? pack.rarePackSlotRates[card.rarity] ?? 0 : 0;
    const rarePullProbability =
      rarePackChance * probabilityAtLeastOnce(Array(5).fill(rarePackSlotRate));

    rows.push({
      packId: pack.id,
      cardId: card.id,
      pullProbability: roundProbability(regularPullProbability + rarePullProbability),
      sourceName: pack.sourceName,
    });
  }

  summary[pack.id] = {
    cardCount: cards.length,
    secretCardCount: secretCards.length,
    rarePackCardCount: rarePackCards.length,
    rarityCounts: cards.reduce((counts, card) => {
      counts[card.rarity] = (counts[card.rarity] ?? 0) + 1;
      return counts;
    }, {}),
    rarePackRarityCounts: rarePackCards.reduce((counts, card) => {
      counts[card.rarity] = (counts[card.rarity] ?? 0) + 1;
      return counts;
    }, {}),
  };
}

const expectedRows = rows.length;

const values = rows
  .map(
    (row, index) =>
      `  (${sqlString(row.packId)}, ${sqlString(row.cardId)}, ${row.pullProbability.toFixed(
        10,
      )}::numeric, ${sqlString(
        `Derived from Genetic Apex: ${row.sourceName} Offering Rates and Limitless pack-filtered card availability; excludes secret-mission Mew; probability means at least once per opened pack.`,
      )}, date '2026-06-24')${index === rows.length - 1 ? "" : ","}`,
  )
  .join("\n");

const sql = `-- Genetic Apex (A1) per-card acquisition probabilities.
-- Sources checked 2026-06-24:
-- https://bulbapedia.bulbagarden.net/wiki/Genetic_Apex_(TCG_Pocket)#Offering_rates
-- https://pocket.limitlesstcg.com/cards/A1
--
-- Definition used by card_pack_odds.pull_probability:
-- P(the card appears at least once in one opened pack).
--
-- Published Genetic Apex rates:
--   regular pack: 99.95%
--   rare pack:     0.05%
--
-- The source publishes per-card rates rounded to three decimal percentage
-- points. These calculations intentionally use those published values.
--
-- A1-283 Mew is excluded because it is a Kanto Dex secret-mission reward, not
-- a booster-pack pull. Rare-pack crown rates are applied only to the matching
-- crown card for each pack; all crown cards still receive regular-pack rates.

begin;

insert into public.card_pack_odds (
  pack_id,
  card_id,
  pull_probability,
  source_note,
  verified_at
)
values
${values}
on conflict (pack_id, card_id) do update set
  pull_probability = excluded.pull_probability,
  source_note = excluded.source_note,
  verified_at = excluded.verified_at,
  updated_at = now();

-- Stop and roll back if the catalog, packs, or generated odds are incomplete.
do $$
declare
  genetic_apex_cards integer;
  genetic_apex_packs integer;
  genetic_apex_odds integer;
begin
  select count(*)
  into genetic_apex_cards
  from public.cards
  where set_id = 'A1';

  select count(*)
  into genetic_apex_packs
  from public.packs
  where set_id = 'A1';

  select count(*)
  into genetic_apex_odds
  from public.card_pack_odds
  where pack_id in ('a1-mewtwo', 'a1-charizard', 'a1-pikachu');

  if genetic_apex_cards <> 286 then
    raise exception
      'Expected 286 Genetic Apex cards, found %',
      genetic_apex_cards;
  end if;

  if genetic_apex_packs <> 3 then
    raise exception
      'Expected 3 Genetic Apex packs, found %',
      genetic_apex_packs;
  end if;

  if genetic_apex_odds <> ${expectedRows} then
    raise exception
      'Expected ${expectedRows} Genetic Apex odds rows, found %',
      genetic_apex_odds;
  end if;
end
$$;

commit;

-- Expected: ${expectedRows} total records across the three Genetic Apex packs.
select
  card_pack_odds.pack_id,
  cards.rarity,
  count(*) as cards,
  min(card_pack_odds.pull_probability) as min_pull_probability,
  max(card_pack_odds.pull_probability) as max_pull_probability
from public.card_pack_odds
join public.cards
  on cards.id = card_pack_odds.card_id
where card_pack_odds.pack_id in ('a1-mewtwo', 'a1-charizard', 'a1-pikachu')
group by card_pack_odds.pack_id, cards.rarity
order by card_pack_odds.pack_id, min(cards.collector_number);
`;

writeFileSync(outputPath, sql, "utf8");

console.log(
  JSON.stringify(
    {
      outputPath,
      rowCount: rows.length,
      summary,
    },
    null,
    2,
  ),
);
