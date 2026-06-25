import { readFileSync, writeFileSync } from "node:fs";

const inputDir = process.argv[2] ?? "C:/Users/miche/AppData/Local/Temp";
const outputPath = process.argv[3] ?? "supabase/seed-celestial-guardians-odds.sql";

const setId = "A3";
const setName = "Celestial Guardians";
const totalCardCount = 239;
const mainSetCardCount = 155;

const regularRates = {
  diamond_1: [0.02272, 0.02272, 0.02272, 0, 0],
  diamond_2: [0, 0, 0, 0.02617, 0.01647],
  diamond_3: [0, 0, 0, 0.00353, 0.01415],
  diamond_4: [0, 0, 0, 0.00333, 0.01332],
  star_1: [0, 0, 0, 0.00214, 0.00857],
  star_2: [0, 0, 0, 0.00035, 0.00142],
  star_3: [0, 0, 0, 0.00222, 0.00888],
  shiny_1: [0, 0, 0, 0.00071, 0.00285],
  shiny_2: [0, 0, 0, 0.00083, 0.00333],
  crown: [0, 0, 0, 0.0002, 0.0008],
};

const rarePackSlotRates = {
  star_1: 0.0238,
  star_2: 0.0238,
  star_3: 0.0238,
  shiny_1: 0.0238,
  shiny_2: 0.0238,
  crown: 0.0238,
};

const packSources = [
  {
    id: "a3-solgaleo",
    sourceName: "Solgaleo",
    htmlPath: `${inputDir}/a3-solgaleo.html`,
    rarePackCrownCardId: "A3-239",
  },
  {
    id: "a3-lunala",
    sourceName: "Lunala",
    htmlPath: `${inputDir}/a3-lunala.html`,
    rarePackCrownCardId: "A3-238",
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
  if (card.collectorNumber >= 210 && card.collectorNumber <= 229) {
    return "shiny_1";
  }

  if (card.collectorNumber >= 230 && card.collectorNumber <= 237) {
    return "shiny_2";
  }

  return card.visibleRarity;
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
const rows = [];
const summary = {};
const allCardIds = new Set();

for (const pack of packSources) {
  const cards = parseCards(pack.htmlPath).map((card) => ({
    ...card,
    oddsRarity: mapOddsRarity(card),
  }));
  const secretCards = cards.filter(
    (card) => card.collectorNumber > mainSetCardCount,
  );
  const rarePackCards = secretCards.filter(
    (card) => card.visibleRarity !== "crown" || card.id === pack.rarePackCrownCardId,
  );
  const rarePackCardIds = new Set(rarePackCards.map((card) => card.id));

  for (const card of cards) {
    allCardIds.add(card.id);

    const cardRegularRates = regularRates[card.oddsRarity];

    if (!cardRegularRates) {
      throw new Error(`Missing regular rate for ${pack.id} ${card.id} ${card.oddsRarity}`);
    }

    const regularPullProbability =
      regularPackChance * probabilityAtLeastOnce(cardRegularRates);
    const rarePackSlotRate =
      rarePackCardIds.has(card.id) ? rarePackSlotRates[card.oddsRarity] ?? 0 : 0;
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
    oddsRarityCounts: cards.reduce((counts, card) => {
      counts[card.oddsRarity] = (counts[card.oddsRarity] ?? 0) + 1;
      return counts;
    }, {}),
    rarePackRarityCounts: rarePackCards.reduce((counts, card) => {
      counts[card.oddsRarity] = (counts[card.oddsRarity] ?? 0) + 1;
      return counts;
    }, {}),
  };
}

if (allCardIds.size !== totalCardCount) {
  throw new Error(
    `Expected filtered pack lists to cover ${totalCardCount} unique cards, found ${allCardIds.size}`,
  );
}

const expectedRows = rows.length;

const values = rows
  .map(
    (row, index) =>
      `  (${sqlString(row.packId)}, ${sqlString(row.cardId)}, ${row.pullProbability.toFixed(
        10,
      )}::numeric, ${sqlString(
        `Derived from Celestial Guardians: ${row.sourceName} Offering Rates and Limitless pack-filtered card availability; cards A3-210 through A3-229 use shiny_1 rates and cards A3-230 through A3-237 use shiny_2 rates; probability means at least once per opened pack.`,
      )}, date '2026-06-24')${index === rows.length - 1 ? "" : ","}`,
  )
  .join("\n");

const sql = `-- ${setName} (${setId}) per-card acquisition probabilities.
-- Sources checked 2026-06-24:
-- https://bulbapedia.bulbagarden.net/wiki/Celestial_Guardians_(TCG_Pocket)#Offering_rates
-- https://pocket.limitlesstcg.com/cards/${setId}
--
-- Definition used by card_pack_odds.pull_probability:
-- P(the card appears at least once in one opened pack).
--
-- Published Celestial Guardians rates:
--   regular pack: 99.95%
--   rare pack:     0.05%
--
-- The source publishes per-card rates rounded to three decimal percentage
-- points. These calculations intentionally use those published values.
--
-- Bulbapedia separates one-star and two-star shiny rates from regular
-- one-star and two-star rates. Limitless renders these with the same visible
-- star glyphs in the list view, so this seed applies shiny rates by collector
-- number: A3-210 through A3-229 are shiny_1 and A3-230 through A3-237 are
-- shiny_2.
--
-- Rare-pack crown rates are applied only to the matching crown card for each
-- pack: A3-239 Solgaleo ex for Solgaleo, A3-238 Lunala ex for Lunala. Both
-- crown cards still receive regular-pack rates in both filtered pack lists.

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
  celestial_guardians_cards integer;
  celestial_guardians_packs integer;
  celestial_guardians_odds integer;
begin
  select count(*)
  into celestial_guardians_cards
  from public.cards
  where set_id = '${setId}';

  select count(*)
  into celestial_guardians_packs
  from public.packs
  where set_id = '${setId}';

  select count(*)
  into celestial_guardians_odds
  from public.card_pack_odds
  where pack_id in ('a3-solgaleo', 'a3-lunala');

  if celestial_guardians_cards <> ${totalCardCount} then
    raise exception
      'Expected ${totalCardCount} ${setName} cards, found %',
      celestial_guardians_cards;
  end if;

  if celestial_guardians_packs <> 2 then
    raise exception
      'Expected 2 ${setName} packs, found %',
      celestial_guardians_packs;
  end if;

  if celestial_guardians_odds <> ${expectedRows} then
    raise exception
      'Expected ${expectedRows} ${setName} odds rows, found %',
      celestial_guardians_odds;
  end if;
end
$$;

commit;

-- Expected: ${expectedRows} total records across the two ${setName} packs.
select
  card_pack_odds.pack_id,
  cards.rarity,
  count(*) as cards,
  min(card_pack_odds.pull_probability) as min_pull_probability,
  max(card_pack_odds.pull_probability) as max_pull_probability
from public.card_pack_odds
join public.cards
  on cards.id = card_pack_odds.card_id
where card_pack_odds.pack_id in ('a3-solgaleo', 'a3-lunala')
group by card_pack_odds.pack_id, cards.rarity
order by card_pack_odds.pack_id, min(cards.collector_number);
`;

writeFileSync(outputPath, sql, "utf8");

console.log(
  JSON.stringify(
    {
      outputPath,
      rowCount: rows.length,
      uniqueCardCount: allCardIds.size,
      summary,
    },
    null,
    2,
  ),
);
