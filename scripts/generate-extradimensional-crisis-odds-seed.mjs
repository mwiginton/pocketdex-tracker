import { readFileSync, writeFileSync } from "node:fs";

const inputDir = process.argv[2] ?? "C:/Users/miche/AppData/Local/Temp";
const outputPath =
  process.argv[3] ?? "supabase/seed-extradimensional-crisis-odds.sql";

const setId = "A3a";
const setName = "Extradimensional Crisis";
const packId = "a3a-extradimensional-crisis";
const totalCardCount = 103;
const mainSetCardCount = 69;
const htmlPath = `${inputDir}/a3a-limitless.html`;

const regularRates = {
  diamond_1: [0.03125, 0.03125, 0.03125, 0, 0],
  diamond_2: [0, 0, 0, 0.03708, 0.02333],
  diamond_3: [0, 0, 0, 0.00619, 0.02476],
  diamond_4: [0, 0, 0, 0.00333, 0.01332],
  star_1: [0, 0, 0, 0.00428, 0.01714],
  star_2: [0, 0, 0, 0.00041, 0.00166],
  star_3: [0, 0, 0, 0.00222, 0.00888],
  shiny_1: [0, 0, 0, 0.00071, 0.00285],
  shiny_2: [0, 0, 0, 0.00083, 0.00333],
  crown: [0, 0, 0, 0.0004, 0.0016],
};

const rarePackSlotRates = {
  star_1: 0.02941,
  star_2: 0.02941,
  star_3: 0.02941,
  shiny_1: 0.02941,
  shiny_2: 0.02941,
  crown: 0.02941,
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

function mapVisibleRarity(value) {
  const text = value.replace(/\s+/g, " ").trim();

  if (text.includes("Crown")) return "crown";

  const diamonds = [...text].filter((character) => character === "\u25ca").length;
  if (diamonds > 0) return `diamond_${diamonds}`;

  const stars = [...text].filter((character) => character === "\u2606").length;
  if (stars > 0) return `star_${stars}`;

  throw new Error(`Unknown rarity: ${JSON.stringify(text)}`);
}

function mapOddsRarity(card) {
  if (card.collectorNumber >= 89 && card.collectorNumber <= 98) {
    return "shiny_1";
  }

  if (card.collectorNumber >= 99 && card.collectorNumber <= 102) {
    return "shiny_2";
  }

  return card.visibleRarity;
}

function parseCards() {
  const html = readFileSync(htmlPath, "utf8");
  const rows = [...html.matchAll(/<tr data-hover="([^"]+)">([\s\S]*?)<\/tr>/g)];

  return rows.map(([, , body]) => {
    const cells = [...body.matchAll(/<td(?: class="[^"]+")?>([\s\S]*?)<\/td>/g)].map(
      (match) => match[1],
    );
    const collectorNumber = Number(cells[1].replace(/<[^>]+>/g, "").trim());
    const name = decodeHtml(cells[2].replace(/<[^>]+>/g, ""));
    const visibleRarity = mapVisibleRarity(
      decodeHtml(cells[4].replace(/<[^>]+>/g, "")),
    );

    return {
      id: `${setId}-${String(collectorNumber).padStart(3, "0")}`,
      collectorNumber,
      name,
      visibleRarity,
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
const cards = parseCards().map((card) => ({
  ...card,
  oddsRarity: mapOddsRarity(card),
}));
const secretCards = cards.filter((card) => card.collectorNumber > mainSetCardCount);
const secretCardIds = new Set(secretCards.map((card) => card.id));

if (cards.length !== totalCardCount) {
  throw new Error(`Expected ${totalCardCount} ${setName} cards, found ${cards.length}`);
}

const rows = cards.map((card) => {
  const cardRegularRates = regularRates[card.oddsRarity];

  if (!cardRegularRates) {
    throw new Error(`Missing regular rate for ${card.id} ${card.oddsRarity}`);
  }

  const regularPullProbability =
    regularPackChance * probabilityAtLeastOnce(cardRegularRates);
  const rarePackSlotRate =
    secretCardIds.has(card.id) ? rarePackSlotRates[card.oddsRarity] ?? 0 : 0;
  const rarePullProbability =
    rarePackChance * probabilityAtLeastOnce(Array(5).fill(rarePackSlotRate));

  return {
    packId,
    cardId: card.id,
    pullProbability: roundProbability(regularPullProbability + rarePullProbability),
  };
});

const values = rows
  .map(
    (row, index) =>
      `  (${sqlString(row.packId)}, ${sqlString(row.cardId)}, ${row.pullProbability.toFixed(
        10,
      )}::numeric, ${sqlString(
        "Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.",
      )}, date '2026-06-24')${index === rows.length - 1 ? "" : ","}`,
  )
  .join("\n");

const sql = `-- ${setName} (${setId}) per-card acquisition probabilities.
-- Sources checked 2026-06-24:
-- https://bulbapedia.bulbagarden.net/wiki/Extradimensional_Crisis_(TCG_Pocket)#Offering_rates
-- https://pocket.limitlesstcg.com/cards/${setId}
--
-- Definition used by card_pack_odds.pull_probability:
-- P(the card appears at least once in one opened pack).
--
-- Published Extradimensional Crisis rates:
--   regular pack: 99.95%
--   rare pack:     0.05%
--
-- The source publishes per-card rates rounded to three decimal percentage
-- points. These calculations intentionally use those published values.
--
-- Bulbapedia separates one-star and two-star shiny rates from regular
-- one-star and two-star rates. Limitless renders these with the same visible
-- star glyphs in the list view, so this seed applies shiny rates by collector
-- number: A3a-089 through A3a-098 are shiny_1 and A3a-099 through A3a-102
-- are shiny_2.

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

-- Stop and roll back if the catalog, pack, or generated odds are incomplete.
do $$
declare
  extradimensional_crisis_cards integer;
  extradimensional_crisis_packs integer;
  extradimensional_crisis_odds integer;
begin
  select count(*)
  into extradimensional_crisis_cards
  from public.cards
  where set_id = '${setId}';

  select count(*)
  into extradimensional_crisis_packs
  from public.packs
  where set_id = '${setId}';

  select count(*)
  into extradimensional_crisis_odds
  from public.card_pack_odds
  where pack_id = '${packId}';

  if extradimensional_crisis_cards <> ${totalCardCount} then
    raise exception
      'Expected ${totalCardCount} ${setName} cards, found %',
      extradimensional_crisis_cards;
  end if;

  if extradimensional_crisis_packs <> 1 then
    raise exception
      'Expected 1 ${setName} pack, found %',
      extradimensional_crisis_packs;
  end if;

  if extradimensional_crisis_odds <> ${rows.length} then
    raise exception
      'Expected ${rows.length} ${setName} odds rows, found %',
      extradimensional_crisis_odds;
  end if;
end
$$;

commit;

-- Expected: ${rows.length} total records for the ${setName} pack.
select
  cards.rarity,
  count(*) as cards,
  min(card_pack_odds.pull_probability) as min_pull_probability,
  max(card_pack_odds.pull_probability) as max_pull_probability
from public.card_pack_odds
join public.cards
  on cards.id = card_pack_odds.card_id
where card_pack_odds.pack_id = '${packId}'
group by cards.rarity
order by min(cards.collector_number);
`;

writeFileSync(outputPath, sql, "utf8");

console.log(
  JSON.stringify(
    {
      outputPath,
      rowCount: rows.length,
      summary: {
        cardCount: cards.length,
        secretCardCount: secretCards.length,
        rarePackCardCount: secretCards.length,
        oddsRarityCounts: cards.reduce((counts, card) => {
          counts[card.oddsRarity] = (counts[card.oddsRarity] ?? 0) + 1;
          return counts;
        }, {}),
        rarePackRarityCounts: secretCards.reduce((counts, card) => {
          counts[card.oddsRarity] = (counts[card.oddsRarity] ?? 0) + 1;
          return counts;
        }, {}),
      },
    },
    null,
    2,
  ),
);
