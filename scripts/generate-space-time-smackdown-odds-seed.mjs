import { readFileSync, writeFileSync } from "node:fs";

const inputDir = process.argv[2] ?? "C:/Users/miche/AppData/Local/Temp";
const outputPath = process.argv[3] ?? "supabase/seed-space-time-smackdown-odds.sql";

const setId = "A2";
const setName = "Space-Time Smackdown";
const totalCardCount = 207;

const sharedRegularRates = {
  diamond_3: [0, 0, 0, 0.00357, 0.01428],
  diamond_4: [0, 0, 0, 0.00333, 0.01332],
  star_1: [0, 0, 0, 0.00214, 0.00857],
  star_2: [0, 0, 0, 0.00041, 0.00166],
  star_3: [0, 0, 0, 0.00222, 0.00888],
  crown: [0, 0, 0, 0.0002, 0.0008],
};

const packSources = [
  {
    id: "a2-dialga",
    sourceName: "Dialga",
    htmlPath: `${inputDir}/a2-dialga.html`,
    rarePackCrownCardId: "A2-207",
    regularRates: {
      diamond_1: [0.02173, 0.02173, 0.02173, 0, 0],
      diamond_2: [0, 0, 0, 0.02647, 0.01764],
      ...sharedRegularRates,
    },
    rarePackSlotRates: {
      star_1: 0.03846,
      star_2: 0.03846,
      star_3: 0.03846,
      crown: 0.03846,
    },
  },
  {
    id: "a2-palkia",
    sourceName: "Palkia",
    htmlPath: `${inputDir}/a2-palkia.html`,
    rarePackCrownCardId: "A2-206",
    regularRates: {
      diamond_1: [0.02272, 0.02272, 0.02272, 0, 0],
      diamond_2: [0, 0, 0, 0.025, 0.01666],
      ...sharedRegularRates,
    },
    rarePackSlotRates: {
      star_1: 0.03846,
      star_2: 0.03846,
      star_3: 0.03846,
      crown: 0.03846,
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

  const diamonds = [...text].filter((character) => character === "\u25ca").length;
  if (diamonds > 0) return `diamond_${diamonds}`;

  const stars = [...text].filter((character) => character === "\u2606").length;
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
      id: `${setId}-${String(collectorNumber).padStart(3, "0")}`,
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
const rows = [];
const summary = {};

for (const pack of packSources) {
  const cards = parseCards(pack.htmlPath);
  const secretCards = cards.filter((card) => card.collectorNumber > 155);
  const rarePackCards = secretCards.filter(
    (card) => card.rarity !== "crown" || card.id === pack.rarePackCrownCardId,
  );
  const rarePackCardIds = new Set(rarePackCards.map((card) => card.id));

  for (const card of cards) {
    const regularRates = pack.regularRates[card.rarity];

    if (!regularRates) {
      throw new Error(`Missing regular rate for ${pack.id} ${card.id} ${card.rarity}`);
    }

    const regularPullProbability =
      regularPackChance * probabilityAtLeastOnce(regularRates);
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
        `Derived from Space-Time Smackdown: ${row.sourceName} Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.`,
      )}, date '2026-06-24')${index === rows.length - 1 ? "" : ","}`,
  )
  .join("\n");

const sql = `-- ${setName} (${setId}) per-card acquisition probabilities.
-- Sources checked 2026-06-24:
-- https://bulbapedia.bulbagarden.net/wiki/Space-Time_Smackdown_(TCG_Pocket)#Offering_rates
-- https://pocket.limitlesstcg.com/cards/${setId}
--
-- Definition used by card_pack_odds.pull_probability:
-- P(the card appears at least once in one opened pack).
--
-- Published Space-Time Smackdown rates:
--   regular pack: 99.95%
--   rare pack:     0.05%
--
-- The source publishes per-card rates rounded to three decimal percentage
-- points. These calculations intentionally use those published values.
--
-- Rare-pack crown rates are applied only to the matching crown card for each
-- pack: A2-207 Dialga ex for Dialga, A2-206 Palkia ex for Palkia. Both crown
-- cards still receive regular-pack rates in both filtered pack lists.

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
  space_time_cards integer;
  space_time_packs integer;
  space_time_odds integer;
begin
  select count(*)
  into space_time_cards
  from public.cards
  where set_id = '${setId}';

  select count(*)
  into space_time_packs
  from public.packs
  where set_id = '${setId}';

  select count(*)
  into space_time_odds
  from public.card_pack_odds
  where pack_id in ('a2-dialga', 'a2-palkia');

  if space_time_cards <> ${totalCardCount} then
    raise exception
      'Expected ${totalCardCount} ${setName} cards, found %',
      space_time_cards;
  end if;

  if space_time_packs <> 2 then
    raise exception
      'Expected 2 ${setName} packs, found %',
      space_time_packs;
  end if;

  if space_time_odds <> ${expectedRows} then
    raise exception
      'Expected ${expectedRows} ${setName} odds rows, found %',
      space_time_odds;
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
where card_pack_odds.pack_id in ('a2-dialga', 'a2-palkia')
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
