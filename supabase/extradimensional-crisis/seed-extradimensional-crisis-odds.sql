-- Extradimensional Crisis (A3a) per-card acquisition probabilities.
-- Sources checked 2026-06-24:
-- https://bulbapedia.bulbagarden.net/wiki/Extradimensional_Crisis_(TCG_Pocket)#Offering_rates
-- https://pocket.limitlesstcg.com/cards/A3a
--
-- Definition used by card_pack_odds.pull_probability:
-- P(the card appears at least once in one opened pack).
--
-- Published Extradimensional Crisis rates:
--   regular pack: 99.95%
--   rare pack:     0.05%
--
-- The source publishes per-card rates rounded to three decimal percentage
-- points. These calculations intentionally use those published values.
--
-- Bulbapedia separates one-star and two-star shiny rates from regular
-- one-star and two-star rates. Limitless renders these with the same visible
-- star glyphs in the list view, so this seed applies shiny rates by collector
-- number: A3a-089 through A3a-098 are shiny_1 and A3a-099 through A3a-102
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
  ('a3a-extradimensional-crisis', 'A3a-001', 0.0908054047::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-002', 0.0908054047::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-003', 0.0908054047::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-004', 0.0595151511::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-005', 0.0307813372::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-006', 0.0165973416::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-007', 0.0595151511::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-008', 0.0908054047::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-009', 0.0595151511::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-010', 0.0908054047::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-011', 0.0908054047::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-012', 0.0595151511::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-013', 0.0908054047::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-014', 0.0908054047::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-015', 0.0307813372::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-016', 0.0908054047::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-017', 0.0908054047::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-018', 0.0908054047::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-019', 0.0165973416::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-020', 0.0595151511::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-021', 0.0307813372::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-022', 0.0908054047::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-023', 0.0595151511::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-024', 0.0908054047::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-025', 0.0908054047::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-026', 0.0908054047::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-027', 0.0307813372::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-028', 0.0908054047::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-029', 0.0595151511::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-030', 0.0908054047::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-031', 0.0595151511::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-032', 0.0908054047::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-033', 0.0165973416::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-034', 0.0908054047::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-035', 0.0908054047::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-036', 0.0595151511::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-037', 0.0908054047::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-038', 0.0595151511::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-039', 0.0908054047::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-040', 0.0908054047::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-041', 0.0595151511::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-042', 0.0307813372::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-043', 0.0165973416::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-044', 0.0908054047::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-045', 0.0307813372::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-046', 0.0908054047::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-047', 0.0165973416::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-048', 0.0908054047::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-049', 0.0908054047::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-050', 0.0595151511::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-051', 0.0908054047::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-052', 0.0595151511::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-053', 0.0595151511::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-054', 0.0908054047::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-055', 0.0908054047::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-056', 0.0595151511::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-057', 0.0908054047::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-058', 0.0595151511::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-059', 0.0908054047::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-060', 0.0595151511::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-061', 0.0307813372::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-062', 0.0307813372::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-063', 0.0595151511::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-064', 0.0595151511::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-065', 0.0595151511::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-066', 0.0595151511::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-067', 0.0595151511::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-068', 0.0595151511::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-069', 0.0595151511::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-070', 0.0214052931::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-071', 0.0214052931::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-072', 0.0214052931::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-073', 0.0214052931::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-074', 0.0214052931::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-075', 0.0214052931::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-076', 0.0021376103::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-077', 0.0021376103::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-078', 0.0021376103::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-079', 0.0021376103::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-080', 0.0021376103::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-081', 0.0021376103::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-082', 0.0021376103::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-083', 0.0021376103::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-084', 0.0021376103::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-085', 0.0021376103::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-086', 0.0021376103::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-087', 0.0021376103::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-088', 0.0111440718::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-089', 0.0036255231::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-090', 0.0036255231::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-091', 0.0036255231::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-092', 0.0036255231::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-093', 0.0036255231::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-094', 0.0036255231::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-095', 0.0036255231::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-096', 0.0036255231::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-097', 0.0036255231::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-098', 0.0036255231::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-099', 0.0042244831::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-100', 0.0042244831::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-101', 0.0042244831::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-102', 0.0042244831::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24'),
  ('a3a-extradimensional-crisis', 'A3a-103', 0.0020676859::numeric, 'Derived from Extradimensional Crisis Offering Rates and Limitless card list; cards A3a-089 through A3a-098 use shiny_1 rates and cards A3a-099 through A3a-102 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-24')
on conflict (pack_id, card_id) do update set
  pull_probability = excluded.pull_probability,
  source_note = excluded.source_note,
  verified_at = excluded.verified_at,
  updated_at = now();

-- Stop and roll back if the catalog, pack, or generated odds are incomplete.
do $$
declare
  extradimensional_crisis_cards integer;
  extradimensional_crisis_packs integer;
  extradimensional_crisis_odds integer;
begin
  select count(*)
  into extradimensional_crisis_cards
  from public.cards
  where set_id = 'A3a';

  select count(*)
  into extradimensional_crisis_packs
  from public.packs
  where set_id = 'A3a';

  select count(*)
  into extradimensional_crisis_odds
  from public.card_pack_odds
  where pack_id = 'a3a-extradimensional-crisis';

  if extradimensional_crisis_cards <> 103 then
    raise exception
      'Expected 103 Extradimensional Crisis cards, found %',
      extradimensional_crisis_cards;
  end if;

  if extradimensional_crisis_packs <> 1 then
    raise exception
      'Expected 1 Extradimensional Crisis pack, found %',
      extradimensional_crisis_packs;
  end if;

  if extradimensional_crisis_odds <> 103 then
    raise exception
      'Expected 103 Extradimensional Crisis odds rows, found %',
      extradimensional_crisis_odds;
  end if;
end
$$;

commit;

-- Expected: 103 total records for the Extradimensional Crisis pack.
select
  cards.rarity,
  count(*) as cards,
  min(card_pack_odds.pull_probability) as min_pull_probability,
  max(card_pack_odds.pull_probability) as max_pull_probability
from public.card_pack_odds
join public.cards
  on cards.id = card_pack_odds.card_id
where card_pack_odds.pack_id = 'a3a-extradimensional-crisis'
group by cards.rarity
order by min(cards.collector_number);
