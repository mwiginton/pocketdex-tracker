import { readFileSync, writeFileSync } from "node:fs";

const inputDir = process.argv[2] ?? "C:/Users/miche/AppData/Local/Temp";
const outputPath = process.argv[3] ?? "supabase/seed-triumphant-light-odds.sql";

const setId = "A2a";
const setName = "Triumphant Light";
const packId = "a2a-triumphant-light";
const totalCardCount = 96;
const mainSetCardCount = 75;
const htmlPath = `${inputDir}/a2a-limitless.html`;

const regularRates = {
  diamond_1: [0.03225, 0.03225, 0.03225, 0, 0],
  diamond_2: [0, 0, 0, 0.03461, 0.02307],
  diamond_3: [0, 0, 0, 0.00384, 0.01538],
  diamond_4: [0, 0, 0, 0.00333, 0.01332],
  star_1: [0, 0, 0, 0.00428, 0.01714],
  star_2: [0, 0, 0, 0.00038, 0.00153],
  star_3: [0, 0, 0, 0.00222, 0.00888],
  crown: [0, 0, 0, 0.0004, 0.0016],
};

const rarePackSlotRates = {
  star_1: 0.04761,
  star_2: 0.04761,
  star_3: 0.04761,
  crown: 0.04761,
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

function mapRarity(value) {
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
const cards = parseCards();
const secretCards = cards.filter((card) => card.collectorNumber > mainSetCardCount);
const secretCardIds = new Set(secretCards.map((card) => card.id));

if (cards.length !== totalCardCount) {
  throw new Error(`Expected ${totalCardCount} ${setName} cards, found ${cards.length}`);
}

const rows = cards.map((card) => {
  const cardRegularRates = regularRates[card.rarity];

  if (!cardRegularRates) {
    throw new Error(`Missing regular rate for ${card.id} ${card.rarity}`);
  }

  const regularPullProbability =
    regularPackChance * probabilityAtLeastOnce(cardRegularRates);
  const rarePackSlotRate =
    secretCardIds.has(card.id) ? rarePackSlotRates[card.rarity] ?? 0 : 0;
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
        "Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.",
      )}, date '2026-06-24')${index === rows.length - 1 ? "" : ","}`,
  )
  .join("\n");

const sql = `-- ${setName} (${setId}) per-card acquisition probabilities.
-- Sources checked 2026-06-24:
-- https://bulbapedia.bulbagarden.net/wiki/Triumphant_Light_(TCG_Pocket)#Offering_rates
-- https://pocket.limitlesstcg.com/cards/${setId}
--
-- Definition used by card_pack_odds.pull_probability:
-- P(the card appears at least once in one opened pack).
--
-- Published Triumphant Light rates:
--   regular pack: 99.95%
--   rare pack:     0.05%
--
-- The source publishes per-card rates rounded to three decimal percentage
-- points. These calculations intentionally use those published values.

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
  triumphant_light_cards integer;
  triumphant_light_packs integer;
  triumphant_light_odds integer;
begin
  select count(*)
  into triumphant_light_cards
  from public.cards
  where set_id = '${setId}';

  select count(*)
  into triumphant_light_packs
  from public.packs
  where set_id = '${setId}';

  select count(*)
  into triumphant_light_odds
  from public.card_pack_odds
  where pack_id = '${packId}';

  if triumphant_light_cards <> ${totalCardCount} then
    raise exception
      'Expected ${totalCardCount} ${setName} cards, found %',
      triumphant_light_cards;
  end if;

  if triumphant_light_packs <> 1 then
    raise exception
      'Expected 1 ${setName} pack, found %',
      triumphant_light_packs;
  end if;

  if triumphant_light_odds <> ${rows.length} then
    raise exception
      'Expected ${rows.length} ${setName} odds rows, found %',
      triumphant_light_odds;
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
        rarityCounts: cards.reduce((counts, card) => {
          counts[card.rarity] = (counts[card.rarity] ?? 0) + 1;
          return counts;
        }, {}),
        rarePackRarityCounts: secretCards.reduce((counts, card) => {
          counts[card.rarity] = (counts[card.rarity] ?? 0) + 1;
          return counts;
        }, {}),
      },
    },
    null,
    2,
  ),
);
