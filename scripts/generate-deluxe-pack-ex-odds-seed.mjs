import { readFileSync, writeFileSync } from "node:fs";

const inputDir = process.argv[2] ?? "C:/Users/miche/AppData/Local/Temp";
const outputPath = process.argv[3] ?? "supabase/seed-deluxe-pack-ex-odds.sql";

const setId = "A4b";
const setName = "Deluxe Pack: ex";
const packId = "a4b-deluxe-pack-ex";
const totalCardCount = 379;
const mainSetCardCount = 353;
const htmlPath = `${inputDir}/a4b-limitless.html`;

const standardRates = {
  diamond_1: [0.01562, 0.00277, 0.00359, 0],
  diamond_2: [0, 0.01645, 0.00359, 0],
  diamond_3: [0, 0, 0.01266, 0],
  diamond_4: [0, 0, 0, 0.01333],
  star_1: [0, 0, 0.02143, 0],
  star_2: [0, 0, 0.00156, 0],
  star_3: [0, 0, 0.01111, 0],
  crown: [0, 0, 0.00198, 0],
};

const parallelRates = {
  diamond_1: [0, 0, 0.00359, 0],
  diamond_2: [0, 0, 0.00359, 0],
  diamond_3: [0, 0, 0.00359, 0],
};

const rarePackSlotRates = {
  star_1: 0.03846,
  star_2: 0.03846,
  star_3: 0.03846,
  crown: 0.03846,
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
      printKind: "standard",
    };
  });
}

function assignPrintKinds(cards) {
  const occurrenceCounts = new Map();

  return cards.map((card) => {
    if (
      card.collectorNumber > mainSetCardCount ||
      !["diamond_1", "diamond_2", "diamond_3"].includes(card.visibleRarity)
    ) {
      return card;
    }

    const key = `${card.name}\u0000${card.visibleRarity}`;
    const occurrence = (occurrenceCounts.get(key) ?? 0) + 1;
    occurrenceCounts.set(key, occurrence);

    return {
      ...card,
      printKind: occurrence % 2 === 0 ? "parallel" : "standard",
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
const cards = assignPrintKinds(parseCards());
const secretCards = cards.filter((card) => card.collectorNumber > mainSetCardCount);
const secretCardIds = new Set(secretCards.map((card) => card.id));

if (cards.length !== totalCardCount) {
  throw new Error(`Expected ${totalCardCount} ${setName} cards, found ${cards.length}`);
}

const unexpectedParallel = cards.filter(
  (card) => card.printKind === "parallel" && !parallelRates[card.visibleRarity],
);
if (unexpectedParallel.length > 0) {
  throw new Error(
    `Unexpected parallel cards: ${unexpectedParallel
      .map((card) => `${card.id} ${card.name} ${card.visibleRarity}`)
      .join(", ")}`,
  );
}

const rows = cards.map((card) => {
  const regularRates =
    card.printKind === "parallel"
      ? parallelRates[card.visibleRarity]
      : standardRates[card.visibleRarity];

  if (!regularRates) {
    throw new Error(`Missing regular rate for ${card.id} ${card.visibleRarity}`);
  }

  const regularPullProbability =
    regularPackChance * probabilityAtLeastOnce(regularRates);
  const rarePackSlotRate =
    secretCardIds.has(card.id) ? rarePackSlotRates[card.visibleRarity] ?? 0 : 0;
  const rarePullProbability =
    rarePackChance * probabilityAtLeastOnce(Array(4).fill(rarePackSlotRate));

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
        "Derived from Deluxe Pack: ex Offering Rates and Limitless card list; diamond_1, diamond_2, and diamond_3 same-name duplicate main-set cards alternate standard then parallel foil; probability means at least once per opened four-card pack.",
      )}, date '2026-06-24')${index === rows.length - 1 ? "" : ","}`,
  )
  .join("\n");

const sql = `-- ${setName} (${setId}) per-card acquisition probabilities.
-- Sources checked 2026-06-24:
-- https://bulbapedia.bulbagarden.net/wiki/Deluxe_Pack:_ex_(TCG_Pocket)#Offering_rates
-- https://pocket.limitlesstcg.com/cards/${setId}
--
-- Definition used by card_pack_odds.pull_probability:
-- P(the card appears at least once in one opened pack).
--
-- Published Deluxe Pack: ex rates:
--   regular pack: 99.950%
--   rare pack:     0.050%
--
-- Deluxe Pack: ex boosters contain four cards. The source publishes per-card
-- rates rounded to three decimal percentage points. These calculations
-- intentionally use those published values.
--
-- Bulbapedia separates standard and parallel foil rates for diamond_1,
-- diamond_2, and diamond_3 cards. Limitless represents them as distinct
-- collector numbers with the same visible rarity. In the main-set list, these
-- same-name same-rarity prints alternate standard then parallel foil.

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
  deluxe_pack_ex_cards integer;
  deluxe_pack_ex_packs integer;
  deluxe_pack_ex_odds integer;
begin
  select count(*)
  into deluxe_pack_ex_cards
  from public.cards
  where set_id = '${setId}';

  select count(*)
  into deluxe_pack_ex_packs
  from public.packs
  where set_id = '${setId}';

  select count(*)
  into deluxe_pack_ex_odds
  from public.card_pack_odds
  where pack_id = '${packId}';

  if deluxe_pack_ex_cards <> ${totalCardCount} then
    raise exception
      'Expected ${totalCardCount} ${setName} cards, found %',
      deluxe_pack_ex_cards;
  end if;

  if deluxe_pack_ex_packs <> 1 then
    raise exception
      'Expected 1 ${setName} pack, found %',
      deluxe_pack_ex_packs;
  end if;

  if deluxe_pack_ex_odds <> ${rows.length} then
    raise exception
      'Expected ${rows.length} ${setName} odds rows, found %',
      deluxe_pack_ex_odds;
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
        printKindCounts: cards.reduce((counts, card) => {
          const key = `${card.visibleRarity}_${card.printKind}`;
          counts[key] = (counts[key] ?? 0) + 1;
          return counts;
        }, {}),
        rarityCounts: cards.reduce((counts, card) => {
          counts[card.visibleRarity] = (counts[card.visibleRarity] ?? 0) + 1;
          return counts;
        }, {}),
      },
    },
    null,
    2,
  ),
);
