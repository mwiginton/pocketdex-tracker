import { readFileSync, writeFileSync } from "node:fs";

const inputDir = process.argv[2] ?? "C:/Users/miche/AppData/Local/Temp";
const outputPath =
  process.argv[3] ?? "supabase/seed-wisdom-of-sea-and-sky-odds.sql";

const setId = "A4";
const setName = "Wisdom of Sea and Sky";
const totalCardCount = 241;
const mainSetCardCount = 161;

const regularRates = {
  diamond_1: [0.0238, 0.0238, 0.0238, 0, 0],
  diamond_2: [0, 0, 0, 0.0287, 0.01806],
  diamond_3: [0, 0, 0, 0.00353, 0.01415],
  diamond_4: [0, 0, 0, 0.00333, 0.01332],
  star_1: [0, 0, 0, 0.00233, 0.00935],
  star_2: [0, 0, 0, 0.00041, 0.00166],
  star_3: [0, 0, 0, 0.00222, 0.00888],
  shiny_1: [0, 0, 0, 0.00071, 0.00285],
  shiny_2: [0, 0, 0, 0.00083, 0.00333],
  crown: [0, 0, 0, 0.0002, 0.0008],
};

const bonusCardSlotRates = {
  diamond_3: 0.29033,
  star_1: 0.129,
};

const rarePackSlotRates = {
  star_1: 0.02564,
  star_2: 0.02564,
  star_3: 0.02564,
  shiny_1: 0.02564,
  shiny_2: 0.02564,
  crown: 0.02564,
};

const packSources = [
  {
    id: "a4-ho-oh",
    sourceName: "Ho-Oh",
    htmlPath: `${inputDir}/a4-ho-oh.html`,
    rarePackCrownCardId: "A4-240",
    bonusOnlyCardIds: new Set(["A4-032", "A4-075", "A4-101", "A4-166"]),
  },
  {
    id: "a4-lugia",
    sourceName: "Lugia",
    htmlPath: `${inputDir}/a4-lugia.html`,
    rarePackCrownCardId: "A4-241",
    bonusOnlyCardIds: new Set(["A4-066", "A4-070", "A4-077", "A4-171"]),
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
  if (card.collectorNumber >= 212 && card.collectorNumber <= 231) {
    return "shiny_1";
  }

  if (card.collectorNumber >= 232 && card.collectorNumber <= 239) {
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

const regularPackChance = 0.9162;
const regularBonusPackChance = 0.0833;
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
    (card) =>
      !pack.bonusOnlyCardIds.has(card.id) &&
      (card.visibleRarity !== "crown" || card.id === pack.rarePackCrownCardId),
  );
  const rarePackCardIds = new Set(rarePackCards.map((card) => card.id));

  for (const card of cards) {
    allCardIds.add(card.id);

    const cardRegularRates = regularRates[card.oddsRarity];

    if (!cardRegularRates) {
      throw new Error(`Missing regular rate for ${pack.id} ${card.id} ${card.oddsRarity}`);
    }

    const regularSlotRates = pack.bonusOnlyCardIds.has(card.id)
      ? Array(5).fill(0)
      : cardRegularRates;
    const regularFiveCardProbability = probabilityAtLeastOnce(regularSlotRates);
    const bonusCardSlotRate = pack.bonusOnlyCardIds.has(card.id)
      ? bonusCardSlotRates[card.oddsRarity] ?? 0
      : 0;
    const regularBonusPackProbability =
      1 - (1 - regularFiveCardProbability) * (1 - bonusCardSlotRate);
    const rarePackSlotRate =
      rarePackCardIds.has(card.id) ? rarePackSlotRates[card.oddsRarity] ?? 0 : 0;
    const rarePackProbability =
      probabilityAtLeastOnce(Array(5).fill(rarePackSlotRate));

    rows.push({
      packId: pack.id,
      cardId: card.id,
      pullProbability: roundProbability(
        regularPackChance * regularFiveCardProbability +
          regularBonusPackChance * regularBonusPackProbability +
          rarePackChance * rarePackProbability,
      ),
      sourceName: pack.sourceName,
    });
  }

  summary[pack.id] = {
    cardCount: cards.length,
    secretCardCount: secretCards.length,
    bonusOnlyCardCount: pack.bonusOnlyCardIds.size,
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
        `Derived from Wisdom of Sea and Sky: ${row.sourceName} Offering Rates and Limitless pack-filtered card availability; includes regular, regular-plus-bonus, and rare pack paths; cards A4-212 through A4-231 use shiny_1 rates and cards A4-232 through A4-239 use shiny_2 rates; probability means at least once per opened pack.`,
      )}, date '2026-06-24')${index === rows.length - 1 ? "" : ","}`,
  )
  .join("\n");

const sql = `-- ${setName} (${setId}) per-card acquisition probabilities.
-- Sources checked 2026-06-24:
-- https://bulbapedia.bulbagarden.net/wiki/Wisdom_of_Sea_and_Sky_(TCG_Pocket)#Offering_rates
-- https://pocket.limitlesstcg.com/cards/${setId}
--
-- Definition used by card_pack_odds.pull_probability:
-- P(the card appears at least once in one opened pack).
--
-- Published Wisdom of Sea and Sky pack-type rates:
--   regular pack:            91.620%
--   regular pack + 1 card:    8.330%
--   rare pack:                0.050%
--
-- The source publishes per-card rates rounded to three decimal percentage
-- points. These calculations intentionally use those published values.
--
-- Bonus-only cards:
--   Ho-Oh:  A4-032 Magby, A4-075 Smoochum, A4-101 Tyrogue, A4-166 Magby
--   Lugia:  A4-066 Pichu, A4-070 Elekid, A4-077 Cleffa, A4-171 Pichu
--
-- Bulbapedia separates one-star and two-star shiny rates from regular
-- one-star and two-star rates. Limitless renders these with the same visible
-- star glyphs in the list view, so this seed applies shiny rates by collector
-- number: A4-212 through A4-231 are shiny_1 and A4-232 through A4-239 are
-- shiny_2.
--
-- Rare-pack crown rates are applied only to the matching crown card for each
-- pack: A4-240 Ho-Oh ex for Ho-Oh, A4-241 Lugia ex for Lugia. Both crown cards
-- still receive regular-pack rates in both filtered pack lists.

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
  wisdom_cards integer;
  wisdom_packs integer;
  wisdom_odds integer;
begin
  select count(*)
  into wisdom_cards
  from public.cards
  where set_id = '${setId}';

  select count(*)
  into wisdom_packs
  from public.packs
  where set_id = '${setId}';

  select count(*)
  into wisdom_odds
  from public.card_pack_odds
  where pack_id in ('a4-ho-oh', 'a4-lugia');

  if wisdom_cards <> ${totalCardCount} then
    raise exception
      'Expected ${totalCardCount} ${setName} cards, found %',
      wisdom_cards;
  end if;

  if wisdom_packs <> 2 then
    raise exception
      'Expected 2 ${setName} packs, found %',
      wisdom_packs;
  end if;

  if wisdom_odds <> ${expectedRows} then
    raise exception
      'Expected ${expectedRows} ${setName} odds rows, found %',
      wisdom_odds;
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
where card_pack_odds.pack_id in ('a4-ho-oh', 'a4-lugia')
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
