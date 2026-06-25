import { readFileSync, writeFileSync } from "node:fs";

const inputDir = process.argv[2] ?? "C:/Users/miche/AppData/Local/Temp";
const outputPath = process.argv[3] ?? "supabase/seed-mega-rising-odds.sql";

const setId = "B1";
const setName = "Mega Rising";
const totalCardCount = 331;
const mainSetCardCount = 226;

const regularRates = {
  diamond_1: [0.0204, 0.0204, 0.0204, 0, 0],
  diamond_2: [0, 0, 0, 0.02727, 0.01818],
  diamond_3: [0, 0, 0, 0.00333, 0.01333],
  diamond_4: [0, 0, 0, 0.00333, 0.01333],
  star_1: [0, 0, 0, 0.00321, 0.01285],
  star_2: [0, 0, 0, 0.00045, 0.00181],
  star_3: [0, 0, 0, 0.00222, 0.00889],
  shiny_1: [0, 0, 0, 0, 0],
  shiny_2: [0, 0, 0, 0, 0],
  crown: [0, 0, 0, 0.00013, 0.00053],
};

const bonusCardSlotRates = {
  shiny_1: 0.06818,
  shiny_2: 0.07955,
};

const rarePackSlotRates = {
  star_1: 0.04761,
  star_2: 0.04761,
  star_3: 0.04761,
  crown: 0.04761,
};

const packSources = [
  {
    id: "b1-mega-gyarados",
    sourceName: "Mega Gyarados",
    htmlPath: `${inputDir}/b1-mega-gyarados.html`,
    rarePackCrownCardId: "B1-330",
  },
  {
    id: "b1-mega-blaziken",
    sourceName: "Mega Blaziken",
    htmlPath: `${inputDir}/b1-mega-blaziken.html`,
    rarePackCrownCardId: "B1-331",
  },
  {
    id: "b1-mega-altaria",
    sourceName: "Mega Altaria",
    htmlPath: `${inputDir}/b1-mega-altaria.html`,
    rarePackCrownCardId: "B1-329",
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
  if (card.collectorNumber >= 287 && card.collectorNumber <= 316) {
    return "shiny_1";
  }

  if (card.collectorNumber >= 317 && card.collectorNumber <= 328) {
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

const regularPackChance = 0.94711;
const regularBonusPackChance = 0.05238;
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
      !["shiny_1", "shiny_2"].includes(card.oddsRarity) &&
      (card.visibleRarity !== "crown" || card.id === pack.rarePackCrownCardId),
  );
  const rarePackCardIds = new Set(rarePackCards.map((card) => card.id));

  for (const card of cards) {
    allCardIds.add(card.id);

    const cardRegularRates = regularRates[card.oddsRarity];

    if (!cardRegularRates) {
      throw new Error(`Missing regular rate for ${pack.id} ${card.id} ${card.oddsRarity}`);
    }

    const regularFiveCardProbability = probabilityAtLeastOnce(cardRegularRates);
    const bonusCardSlotRate = bonusCardSlotRates[card.oddsRarity] ?? 0;
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
        `Derived from Mega Rising: ${row.sourceName} Offering Rates and Limitless pack-filtered card availability; includes regular, regular-plus-bonus, and rare pack paths; cards B1-287 through B1-316 use shiny_1 rates and cards B1-317 through B1-328 use shiny_2 rates; probability means at least once per opened pack.`,
      )}, date '2026-06-25')${index === rows.length - 1 ? "" : ","}`,
  )
  .join("\n");

const packIdList = packSources.map((pack) => sqlString(pack.id)).join(", ");

const sql = `-- ${setName} (${setId}) per-card acquisition probabilities.
-- Sources checked 2026-06-25:
-- https://bulbapedia.bulbagarden.net/wiki/Mega_Rising_(TCG_Pocket)#Offering_rates
-- https://pocket.limitlesstcg.com/cards/${setId}
--
-- Definition used by card_pack_odds.pull_probability:
-- P(the card appears at least once in one opened pack).
--
-- Published Mega Rising pack-type rates:
--   regular pack:            94.711%
--   regular pack + 1 card:    5.238%
--   rare pack:                0.050%
--
-- In regular packs with a bonus card, Bulbapedia states that the first five
-- cards use the same rates as regular packs without a bonus card. Shiny cards
-- are only available in the sixth-card bonus slot.
--
-- The source publishes per-card rates rounded to three decimal percentage
-- points. These calculations intentionally use those published values.
--
-- Bulbapedia separates one-star and two-star shiny rates from regular
-- one-star and two-star rates. Limitless renders these with the same visible
-- star glyphs in the list view, so this seed applies shiny rates by collector
-- number: B1-287 through B1-316 are shiny_1 and B1-317 through B1-328 are
-- shiny_2.
--
-- Rare-pack crown rates are applied only to the matching crown card for each
-- pack:
--   Mega Gyarados: B1-330 Klefki
--   Mega Blaziken: B1-331 Flame Patch
--   Mega Altaria:  B1-329 Lilligant
-- All three crown cards still receive regular-pack rates in all filtered pack
-- lists.

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
  mega_rising_cards integer;
  mega_rising_packs integer;
  mega_rising_odds integer;
begin
  select count(*)
  into mega_rising_cards
  from public.cards
  where set_id = '${setId}';

  select count(*)
  into mega_rising_packs
  from public.packs
  where set_id = '${setId}';

  select count(*)
  into mega_rising_odds
  from public.card_pack_odds
  where pack_id in (${packIdList});

  if mega_rising_cards <> ${totalCardCount} then
    raise exception
      'Expected ${totalCardCount} ${setName} cards, found %',
      mega_rising_cards;
  end if;

  if mega_rising_packs <> ${packSources.length} then
    raise exception
      'Expected ${packSources.length} ${setName} packs, found %',
      mega_rising_packs;
  end if;

  if mega_rising_odds <> ${expectedRows} then
    raise exception
      'Expected ${expectedRows} ${setName} odds rows, found %',
      mega_rising_odds;
  end if;
end
$$;

commit;

-- Expected: ${expectedRows} total records across the three ${setName} packs.
select
  card_pack_odds.pack_id,
  cards.rarity,
  count(*) as cards,
  min(card_pack_odds.pull_probability) as min_pull_probability,
  max(card_pack_odds.pull_probability) as max_pull_probability
from public.card_pack_odds
join public.cards
  on cards.id = card_pack_odds.card_id
where card_pack_odds.pack_id in (${packIdList})
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
