-- Mythical Island (A1a) per-card acquisition probabilities.
-- Source checked 2026-06-21:
-- https://bulbapedia.bulbagarden.net/wiki/Mythical_Island_(TCG_Pocket)#Offering_rates
--
-- Definition used by card_pack_odds.pull_probability:
-- P(the card appears at least once in one opened pack).
--
-- Published Mythical Island rates:
--   regular pack: 99.95%
--   rare pack:     0.05%
--
-- The source publishes per-card rates rounded to three decimal percentage
-- points. These calculations intentionally use those published values.

begin;

with rarity_rates (
  rarity,
  cards_1_to_3_rate,
  card_4_rate,
  card_5_rate,
  rare_pack_slot_rate
) as (
  values
    ('diamond_1', 0.03125::numeric, 0.00000::numeric, 0.00000::numeric, 0.00000::numeric),
    ('diamond_2', 0.00000::numeric, 0.03913::numeric, 0.02608::numeric, 0.00000::numeric),
    ('diamond_3', 0.00000::numeric, 0.00625::numeric, 0.02500::numeric, 0.00000::numeric),
    ('diamond_4', 0.00000::numeric, 0.00333::numeric, 0.01332::numeric, 0.00000::numeric),
    ('star_1',    0.00000::numeric, 0.00428::numeric, 0.01714::numeric, 0.05555::numeric),
    ('star_2',    0.00000::numeric, 0.00050::numeric, 0.00200::numeric, 0.05555::numeric),
    ('star_3',    0.00000::numeric, 0.00222::numeric, 0.00888::numeric, 0.05555::numeric),
    ('crown',     0.00000::numeric, 0.00040::numeric, 0.00160::numeric, 0.05555::numeric)
),
calculated_probabilities as (
  select
    rarity,
    round(
      -- A regular pack occurs 99.95% of the time.
      0.9995::numeric * (
        1::numeric
        - power(1::numeric - cards_1_to_3_rate, 3)
          * (1::numeric - card_4_rate)
          * (1::numeric - card_5_rate)
      )
      +
      -- A rare pack occurs 0.05% of the time. Every one of its five
      -- slots has the published per-card rate for secret cards.
      0.0005::numeric * (
        1::numeric - power(1::numeric - rare_pack_slot_rate, 5)
      ),
      10
    )::numeric(12, 10) as pull_probability
  from rarity_rates
)
insert into public.card_pack_odds (
  pack_id,
  card_id,
  pull_probability,
  source_note,
  verified_at
)
select
  'a1a-mythical-island',
  cards.id,
  calculated_probabilities.pull_probability,
  'Derived from Mythical Island Offering Rates: regular pack 99.95%, rare pack 0.05%, using published per-card slot rates; probability means at least once per opened pack.',
  date '2026-06-21'
from public.cards
join calculated_probabilities
  on calculated_probabilities.rarity = cards.rarity
where cards.set_id = 'A1a'
on conflict (pack_id, card_id) do update set
  pull_probability = excluded.pull_probability,
  source_note = excluded.source_note,
  verified_at = excluded.verified_at,
  updated_at = now();

-- Stop and roll back if the catalog or rarity mapping is incomplete.
do $$
declare
  mythical_island_cards integer;
  mythical_island_odds integer;
begin
  select count(*)
  into mythical_island_cards
  from public.cards
  where set_id = 'A1a';

  select count(*)
  into mythical_island_odds
  from public.card_pack_odds
  where pack_id = 'a1a-mythical-island';

  if mythical_island_cards <> 86 then
    raise exception
      'Expected 86 Mythical Island cards, found %',
      mythical_island_cards;
  end if;

  if mythical_island_odds <> 86 then
    raise exception
      'Expected 86 Mythical Island odds rows, found %',
      mythical_island_odds;
  end if;
end
$$;

commit;

-- Expected: one probability per rarity and 86 total records.
select
  cards.rarity,
  count(*) as cards,
  min(card_pack_odds.pull_probability) as pull_probability
from public.card_pack_odds
join public.cards
  on cards.id = card_pack_odds.card_id
where card_pack_odds.pack_id = 'a1a-mythical-island'
group by cards.rarity
order by min(cards.collector_number);
