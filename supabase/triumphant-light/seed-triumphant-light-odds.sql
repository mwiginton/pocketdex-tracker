-- Triumphant Light (A2a) per-card acquisition probabilities.
-- Sources checked 2026-06-24:
-- https://bulbapedia.bulbagarden.net/wiki/Triumphant_Light_(TCG_Pocket)#Offering_rates
-- https://pocket.limitlesstcg.com/cards/A2a
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
  ('a2a-triumphant-light', 'A2a-001', 0.0568531065::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-002', 0.0936165228::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-003', 0.0568531065::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-004', 0.0936165228::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-005', 0.0568531065::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-006', 0.0936165228::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-007', 0.0568531065::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-008', 0.0568531065::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-009', 0.0191513603::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-010', 0.0165973416::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-011', 0.0936165228::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-012', 0.0568531065::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-013', 0.0191513603::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-014', 0.0936165228::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-015', 0.0936165228::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-016', 0.0936165228::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-017', 0.0568531065::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-018', 0.0936165228::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-019', 0.0568531065::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-020', 0.0936165228::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-021', 0.0191513603::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-022', 0.0165973416::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-023', 0.0191513603::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-024', 0.0568531065::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-025', 0.0936165228::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-026', 0.0191513603::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-027', 0.0936165228::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-028', 0.0568531065::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-029', 0.0936165228::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-030', 0.0568531065::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-031', 0.0936165228::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-032', 0.0936165228::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-033', 0.0568531065::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-034', 0.0568531065::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-035', 0.0191513603::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-036', 0.0568531065::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-037', 0.0936165228::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-038', 0.0568531065::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-039', 0.0936165228::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-040', 0.0568531065::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-041', 0.0191513603::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-042', 0.0936165228::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-043', 0.0936165228::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-044', 0.0568531065::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-045', 0.0936165228::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-046', 0.0936165228::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-047', 0.0165973416::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-048', 0.0936165228::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-049', 0.0936165228::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-050', 0.0191513603::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-051', 0.0936165228::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-052', 0.0568531065::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-053', 0.0936165228::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-054', 0.0936165228::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-055', 0.0191513603::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-056', 0.0936165228::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-057', 0.0165973416::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-058', 0.0936165228::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-059', 0.0568531065::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-060', 0.0191513603::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-061', 0.0191513603::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-062', 0.0936165228::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-063', 0.0568531065::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-064', 0.0936165228::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-065', 0.0568531065::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-066', 0.0936165228::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-067', 0.0936165228::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-068', 0.0568531065::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-069', 0.0191513603::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-070', 0.0191513603::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-071', 0.0165973416::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-072', 0.0568531065::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-073', 0.0568531065::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-074', 0.0568531065::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-075', 0.0568531065::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-076', 0.0214441858::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-077', 0.0214441858::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-078', 0.0214441858::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-079', 0.0214441858::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-080', 0.0214441858::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-081', 0.0214441858::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-082', 0.0020166822::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-083', 0.0020166822::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-084', 0.0020166822::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-085', 0.0020166822::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-086', 0.0020166822::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-087', 0.0020166822::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-088', 0.0020166822::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-089', 0.0020166822::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-090', 0.0020166822::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-091', 0.0020166822::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-092', 0.0020166822::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-093', 0.0020166822::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-094', 0.0020166822::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-095', 0.0111829646::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2a-triumphant-light', 'A2a-096', 0.0021065786::numeric, 'Derived from Triumphant Light Offering Rates and Limitless card list; probability means at least once per opened pack.', date '2026-06-24')
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
  where set_id = 'A2a';

  select count(*)
  into triumphant_light_packs
  from public.packs
  where set_id = 'A2a';

  select count(*)
  into triumphant_light_odds
  from public.card_pack_odds
  where pack_id = 'a2a-triumphant-light';

  if triumphant_light_cards <> 96 then
    raise exception
      'Expected 96 Triumphant Light cards, found %',
      triumphant_light_cards;
  end if;

  if triumphant_light_packs <> 1 then
    raise exception
      'Expected 1 Triumphant Light pack, found %',
      triumphant_light_packs;
  end if;

  if triumphant_light_odds <> 96 then
    raise exception
      'Expected 96 Triumphant Light odds rows, found %',
      triumphant_light_odds;
  end if;
end
$$;

commit;

-- Expected: 96 total records for the Triumphant Light pack.
select
  cards.rarity,
  count(*) as cards,
  min(card_pack_odds.pull_probability) as min_pull_probability,
  max(card_pack_odds.pull_probability) as max_pull_probability
from public.card_pack_odds
join public.cards
  on cards.id = card_pack_odds.card_id
where card_pack_odds.pack_id = 'a2a-triumphant-light'
group by cards.rarity
order by min(cards.collector_number);
