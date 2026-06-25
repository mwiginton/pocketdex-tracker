import { readFileSync, writeFileSync } from "node:fs";

const inputDir = process.argv[2] ?? "C:/Users/miche/AppData/Local/Temp";
const outputPath =
  process.argv[3] ?? "supabase/seed-mega-shine-odds.sql";

const setId = "B2b";
const setName = "Mega Shine";
const packId = "b2b-mega-shine";
const totalCardCount = 117;
const mainSetCardCount = 69;
const htmlPath = `${inputDir}/b2b-limitless.html`;

const regularRates = {
  diamond_1: [0.0303, 0.0303, 0.0303, 0, 0],
  diamond_2: [0, 0, 0, 0.03913, 0.02608],
  diamond_3: [0, 0, 0, 0.00625, 0.025],
  diamond_4: [0, 0, 0, 0.00333, 0.01333],
  star_1: [0, 0, 0, 0.00428, 0.01714],
  star_2: [0, 0, 0, 0.00055, 0.00222],
  star_3: [0, 0, 0, 0.00222, 0.00889],
  star_3_bonus: [0, 0, 0, 0, 0],
  shiny_1: [0, 0, 0, 0, 0],
  shiny_2: [0, 0, 0, 0, 0],
  crown: [0, 0, 0, 0.0002, 0.0008],
};

const bonusCardSlotRates = {
  star_3_bonus: 0.064,
  shiny_1: 0.0284,
  shiny_2: 0.05084,
};

const rarePackSlotRates = {
  star_1: 0.05555,
  star_2: 0.05555,
  star_3: 0.05555,
  crown: 0.05555,
};

const themedRareCardIds = new Set([
  "B2b-112",
  "B2b-113",
  "B2b-115",
  "B2b-111",
  "B2b-114",
]);

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
  if (card.collectorNumber === 86) {
    return "star_3_bonus";
  }

  if (card.collectorNumber >= 87 && card.collectorNumber <= 110) {
    return "shiny_1";
  }

  if (card.collectorNumber >= 111 && card.collectorNumber <= 115) {
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
      oddsRarity: null,
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

const regularPackChance = 0.94706;
const regularBonusPackChance = 0.05238;
const rarePackChance = 0.0005;
const themedRarePackChance = 0.00005;
const cards = parseCards().map((card) => ({
  ...card,
  oddsRarity: mapOddsRarity(card),
}));
const allCardIds = new Set(cards.map((card) => card.id));
const secretCards = cards.filter((card) => card.collectorNumber > mainSetCardCount);
const rarePackCards = secretCards.filter(
  (card) => !["star_3_bonus", "shiny_1", "shiny_2"].includes(card.oddsRarity),
);
const rarePackCardIds = new Set(rarePackCards.map((card) => card.id));

if (cards.length !== totalCardCount || allCardIds.size !== totalCardCount) {
  throw new Error(
    `Expected ${totalCardCount} ${setName} cards, found ${cards.length} with ${allCardIds.size} unique IDs`,
  );
}

const rows = cards.map((card) => {
  const cardRegularRates = regularRates[card.oddsRarity];

  if (!cardRegularRates) {
    throw new Error(`Missing regular rate for ${card.id} ${card.oddsRarity}`);
  }

  const regularFiveCardProbability = probabilityAtLeastOnce(cardRegularRates);
  const bonusCardSlotRate = bonusCardSlotRates[card.oddsRarity] ?? 0;
  const regularBonusPackProbability =
    1 - (1 - regularFiveCardProbability) * (1 - bonusCardSlotRate);
  const rarePackSlotRate =
    rarePackCardIds.has(card.id) ? rarePackSlotRates[card.oddsRarity] ?? 0 : 0;
  const rarePackProbability =
    probabilityAtLeastOnce(Array(5).fill(rarePackSlotRate));
  const themedRarePackProbability = themedRareCardIds.has(card.id) ? 1 : 0;

  return {
    packId,
    cardId: card.id,
    pullProbability: roundProbability(
      regularPackChance * regularFiveCardProbability +
        regularBonusPackChance * regularBonusPackProbability +
        rarePackChance * rarePackProbability +
        themedRarePackChance * themedRarePackProbability,
    ),
  };
});

const values = rows
  .map(
    (row, index) =>
      `  (${sqlString(row.packId)}, ${sqlString(row.cardId)}, ${row.pullProbability.toFixed(
        10,
      )}::numeric, ${sqlString(
        "Derived from Mega Shine Offering Rates and Limitless card list; includes regular, regular-plus-bonus, rare pack, and themed rare pack paths; B2b-086 uses the bonus-only Mew rate, B2b-087 through B2b-110 use shiny_1 rates, and B2b-111 through B2b-115 use shiny_2 rates; probability means at least once per opened pack.",
      )}, date '2026-06-25')${index === rows.length - 1 ? "" : ","}`,
  )
  .join("\n");

const sql = `-- ${setName} (${setId}) per-card acquisition probabilities.
-- Sources checked 2026-06-25:
-- https://bulbapedia.bulbagarden.net/wiki/Mega_Shine_(TCG_Pocket)#Offering_rates
-- https://pocket.limitlesstcg.com/cards/${setId}
--
-- Definition used by card_pack_odds.pull_probability:
-- P(the card appears at least once in one opened pack).
--
-- Published Mega Shine pack-type rates:
--   regular pack:            94.706%
--   regular pack + 1 card:    5.238%
--   rare pack:                0.050%
--   themed rare pack:         0.005%
--
-- In regular packs with a bonus card, Bulbapedia states that the first five
-- cards use the same rates as regular packs without a bonus card. B2b-086 Mew
-- and shiny cards are only available in the sixth-card bonus slot.
--
-- The themed rare pack always contains B2b-112, B2b-113, B2b-115, B2b-111,
-- and B2b-114.
--
-- The source publishes per-card rates rounded to three decimal percentage
-- points. These calculations intentionally use those published values.
--
-- Bulbapedia separates one-star and two-star shiny rates from regular
-- one-star and two-star rates. Limitless renders these with the same visible
-- star glyphs in the list view, so this seed applies shiny rates by collector
-- number: B2b-087 through B2b-110 are shiny_1 and B2b-111 through B2b-115
-- are shiny_2. B2b-086 is treated as bonus-only star_3.

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
  mega_shine_cards integer;
  mega_shine_packs integer;
  mega_shine_odds integer;
begin
  select count(*)
  into mega_shine_cards
  from public.cards
  where set_id = '${setId}';

  select count(*)
  into mega_shine_packs
  from public.packs
  where set_id = '${setId}';

  select count(*)
  into mega_shine_odds
  from public.card_pack_odds
  where pack_id = '${packId}';

  if mega_shine_cards <> ${totalCardCount} then
    raise exception
      'Expected ${totalCardCount} ${setName} cards, found %',
      mega_shine_cards;
  end if;

  if mega_shine_packs <> 1 then
    raise exception
      'Expected 1 ${setName} pack, found %',
      mega_shine_packs;
  end if;

  if mega_shine_odds <> ${rows.length} then
    raise exception
      'Expected ${rows.length} ${setName} odds rows, found %',
      mega_shine_odds;
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
      uniqueCardCount: allCardIds.size,
      summary: {
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
      },
    },
    null,
    2,
  ),
);
