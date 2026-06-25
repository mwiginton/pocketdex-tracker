-- Eevee Grove (A3b) per-card acquisition probabilities.
-- Sources checked 2026-06-24:
-- https://bulbapedia.bulbagarden.net/wiki/Eevee_Grove_(TCG_Pocket)#Offering_rates
-- https://pocket.limitlesstcg.com/cards/A3b
--
-- Definition used by card_pack_odds.pull_probability:
-- P(the card appears at least once in one opened pack).
--
-- Published Eevee Grove rates:
--   regular pack: 99.95%
--   rare pack:     0.05%
--
-- The source publishes per-card rates rounded to three decimal percentage
-- points. These calculations intentionally use those published values.
--
-- Bulbapedia separates one-star and two-star shiny rates from regular
-- one-star and two-star rates. Limitless renders these with the same visible
-- star glyphs in the list view, so this seed applies shiny rates by collector
-- number: A3b-093 through A3b-102 are shiny_1 and A3b-103 through A3b-106
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
  ('a3b-eevee-grove', 'A3b-001', 0.0620572413::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-002', 0.0307813372::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-003', 0.0908054047::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-004', 0.0908054047::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-005', 0.0620572413::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-006', 0.0908054047::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-007', 0.0620572413::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-008', 0.0307813372::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-009', 0.0138323334::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-010', 0.0908054047::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-011', 0.0908054047::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-012', 0.0908054047::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-013', 0.0620572413::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-014', 0.0908054047::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-015', 0.0620572413::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-016', 0.0307813372::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-017', 0.0307813372::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-018', 0.0908054047::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-019', 0.0908054047::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-020', 0.0620572413::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-021', 0.0908054047::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-022', 0.0908054047::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-023', 0.0908054047::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-024', 0.0138323334::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-025', 0.0307813372::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-026', 0.0908054047::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-027', 0.0620572413::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-028', 0.0307813372::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-029', 0.0908054047::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-030', 0.0620572413::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-031', 0.0908054047::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-032', 0.0620572413::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-033', 0.0307813372::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-034', 0.0138323334::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-035', 0.0620572413::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-036', 0.0908054047::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-037', 0.0620572413::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-038', 0.0908054047::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-039', 0.0620572413::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-040', 0.0908054047::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-041', 0.0620572413::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-042', 0.0908054047::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-043', 0.0307813372::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-044', 0.0908054047::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-045', 0.0908054047::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-046', 0.0620572413::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-047', 0.0908054047::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-048', 0.0908054047::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-049', 0.0908054047::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-050', 0.0620572413::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-051', 0.0908054047::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-052', 0.0908054047::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-053', 0.0138323334::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-054', 0.0620572413::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-055', 0.0908054047::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-056', 0.0138323334::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-057', 0.0138323334::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-058', 0.0908054047::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-059', 0.0620572413::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-060', 0.0908054047::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-061', 0.0908054047::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-062', 0.0908054047::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-063', 0.0620572413::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-064', 0.0908054047::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-065', 0.0620572413::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-066', 0.0620572413::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-067', 0.0620572413::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-068', 0.0620572413::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-069', 0.0620572413::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-070', 0.0143027046::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-071', 0.0143027046::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-072', 0.0143027046::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-073', 0.0143027046::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-074', 0.0143027046::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-075', 0.0143027046::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-076', 0.0143027046::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-077', 0.0143027046::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-078', 0.0143027046::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-079', 0.0019708677::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-080', 0.0019708677::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-081', 0.0019708677::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-082', 0.0019708677::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-083', 0.0019708677::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-084', 0.0019708677::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-085', 0.0019708677::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-086', 0.0019708677::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-087', 0.0019708677::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-088', 0.0019708677::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-089', 0.0019708677::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-090', 0.0019708677::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-091', 0.0019708677::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-092', 0.0111371500::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-093', 0.0036186013::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-094', 0.0036186013::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-095', 0.0036186013::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-096', 0.0036186013::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-097', 0.0036186013::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-098', 0.0036186013::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-099', 0.0036186013::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-100', 0.0036186013::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-101', 0.0036186013::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-102', 0.0036186013::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-103', 0.0042175613::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-104', 0.0042175613::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-105', 0.0042175613::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-106', 0.0042175613::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3b-eevee-grove', 'A3b-107', 0.0020607641::numeric, 'Derived from Eevee Grove Offering Rates and Limitless card list; cards A3b-093 through A3b-102 use shiny_1 rates and cards A3b-103 through A3b-106 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24')
on conflict (pack_id, card_id) do update set
  pull_probability = excluded.pull_probability,
  source_note = excluded.source_note,
  verified_at = excluded.verified_at,
  updated_at = now();

-- Stop and roll back if the catalog, pack, or generated odds are incomplete.
do $$
declare
  eevee_grove_cards integer;
  eevee_grove_packs integer;
  eevee_grove_odds integer;
begin
  select count(*)
  into eevee_grove_cards
  from public.cards
  where set_id = 'A3b';

  select count(*)
  into eevee_grove_packs
  from public.packs
  where set_id = 'A3b';

  select count(*)
  into eevee_grove_odds
  from public.card_pack_odds
  where pack_id = 'a3b-eevee-grove';

  if eevee_grove_cards <> 107 then
    raise exception
      'Expected 107 Eevee Grove cards, found %',
      eevee_grove_cards;
  end if;

  if eevee_grove_packs <> 1 then
    raise exception
      'Expected 1 Eevee Grove pack, found %',
      eevee_grove_packs;
  end if;

  if eevee_grove_odds <> 107 then
    raise exception
      'Expected 107 Eevee Grove odds rows, found %',
      eevee_grove_odds;
  end if;
end
$$;

commit;

-- Expected: 107 total records for the Eevee Grove pack.
select
  cards.rarity,
  count(*) as cards,
  min(card_pack_odds.pull_probability) as min_pull_probability,
  max(card_pack_odds.pull_probability) as max_pull_probability
from public.card_pack_odds
join public.cards
  on cards.id = card_pack_odds.card_id
where card_pack_odds.pack_id = 'a3b-eevee-grove'
group by cards.rarity
order by min(cards.collector_number);
