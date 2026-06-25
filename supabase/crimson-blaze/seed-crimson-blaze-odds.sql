-- Crimson Blaze (B1a) per-card acquisition probabilities.
-- Sources checked 2026-06-25:
-- https://bulbapedia.bulbagarden.net/wiki/Crimson_Blaze_(TCG_Pocket)#Offering_rates
-- https://pocket.limitlesstcg.com/cards/B1a
--
-- Definition used by card_pack_odds.pull_probability:
-- P(the card appears at least once in one opened pack).
--
-- Published Crimson Blaze pack-type rates:
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
-- number: B1a-088 through B1a-097 are shiny_1 and B1a-098 through B1a-101
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
  ('b1a-crimson-blaze', 'B1a-001', 0.0908044962::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-002', 0.0615213581::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-003', 0.0310778922::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-004', 0.0166071371::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-005', 0.0908044962::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-006', 0.0615213581::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-007', 0.0908044962::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-008', 0.0615213581::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-009', 0.0908044962::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-010', 0.0908044962::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-011', 0.0908044962::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-012', 0.0615213581::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-013', 0.0310778922::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-014', 0.0166071371::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-015', 0.0908044962::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-016', 0.0908044962::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-017', 0.0908044962::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-018', 0.0615213581::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-019', 0.0310778922::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-020', 0.0166071371::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-021', 0.0908044962::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-022', 0.0908044962::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-023', 0.0615213581::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-024', 0.0908044962::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-025', 0.0615213581::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-026', 0.0310778922::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-027', 0.0908044962::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-028', 0.0908044962::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-029', 0.0615213581::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-030', 0.0908044962::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-031', 0.0615213581::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-032', 0.0908044962::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-033', 0.0908044962::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-034', 0.0310778922::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-035', 0.0908044962::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-036', 0.0908044962::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-037', 0.0310778922::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-038', 0.0908044962::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-039', 0.0908044962::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-040', 0.0615213581::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-041', 0.0908044962::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-042', 0.0166071371::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-043', 0.0908044962::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-044', 0.0908044962::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-045', 0.0908044962::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-046', 0.0908044962::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-047', 0.0908044962::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-048', 0.0615213581::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-049', 0.0908044962::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-050', 0.0615213581::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-051', 0.0615213581::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-052', 0.0166071371::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-053', 0.0615213581::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-054', 0.0310778922::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-055', 0.0615213581::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-056', 0.0908044962::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-057', 0.0615213581::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-058', 0.0310778922::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-059', 0.0908044962::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-060', 0.0908044962::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-061', 0.0615213581::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-062', 0.0908044962::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-063', 0.0615213581::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-064', 0.0615213581::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-065', 0.0615213581::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-066', 0.0615213581::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-067', 0.0615213581::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-068', 0.0615213581::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-069', 0.0615213581::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-070', 0.0214488635::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-071', 0.0214488635::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-072', 0.0214488635::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-073', 0.0214488635::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-074', 0.0214488635::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-075', 0.0214488635::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-076', 0.0023711428::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-077', 0.0023711428::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-078', 0.0023711428::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-079', 0.0023711428::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-080', 0.0023711428::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-081', 0.0023711428::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-082', 0.0023711428::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-083', 0.0023711428::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-084', 0.0023711428::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-085', 0.0023711428::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-086', 0.0023711428::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-087', 0.0111977177::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-088', 0.0035712684::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-089', 0.0035712684::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-090', 0.0035712684::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-091', 0.0035712684::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-092', 0.0035712684::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-093', 0.0035712684::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-094', 0.0035712684::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-095', 0.0035712684::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-096', 0.0035712684::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-097', 0.0035712684::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-098', 0.0041668290::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-099', 0.0041668290::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-100', 0.0041668290::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-101', 0.0041668290::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-102', 0.0013021868::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25'),
  ('b1a-crimson-blaze', 'B1a-103', 0.0013021868::numeric, 'Derived from Crimson Blaze Offering Rates and Limitless card list; includes regular, regular-plus-bonus, and rare pack paths; cards B1a-088 through B1a-097 use shiny_1 rates and cards B1a-098 through B1a-101 use shiny_2 rates; probability means at least once per opened pack.', date '2026-06-25')
on conflict (pack_id, card_id) do update set
  pull_probability = excluded.pull_probability,
  source_note = excluded.source_note,
  verified_at = excluded.verified_at,
  updated_at = now();

-- Stop and roll back if the catalog, pack, or generated odds are incomplete.
do $$
declare
  crimson_blaze_cards integer;
  crimson_blaze_packs integer;
  crimson_blaze_odds integer;
begin
  select count(*)
  into crimson_blaze_cards
  from public.cards
  where set_id = 'B1a';

  select count(*)
  into crimson_blaze_packs
  from public.packs
  where set_id = 'B1a';

  select count(*)
  into crimson_blaze_odds
  from public.card_pack_odds
  where pack_id = 'b1a-crimson-blaze';

  if crimson_blaze_cards <> 103 then
    raise exception
      'Expected 103 Crimson Blaze cards, found %',
      crimson_blaze_cards;
  end if;

  if crimson_blaze_packs <> 1 then
    raise exception
      'Expected 1 Crimson Blaze pack, found %',
      crimson_blaze_packs;
  end if;

  if crimson_blaze_odds <> 103 then
    raise exception
      'Expected 103 Crimson Blaze odds rows, found %',
      crimson_blaze_odds;
  end if;
end
$$;

commit;

-- Expected: 103 total records for the Crimson Blaze pack.
select
  cards.rarity,
  count(*) as cards,
  min(card_pack_odds.pull_probability) as min_pull_probability,
  max(card_pack_odds.pull_probability) as max_pull_probability
from public.card_pack_odds
join public.cards
  on cards.id = card_pack_odds.card_id
where card_pack_odds.pack_id = 'b1a-crimson-blaze'
group by cards.rarity
order by min(cards.collector_number);
