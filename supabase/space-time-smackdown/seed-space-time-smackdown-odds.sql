-- Space-Time Smackdown (A2) per-card acquisition probabilities.
-- Sources checked 2026-06-24:
-- https://bulbapedia.bulbagarden.net/wiki/Space-Time_Smackdown_(TCG_Pocket)#Offering_rates
-- https://pocket.limitlesstcg.com/cards/A2
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
  ('a2-dialga', 'A2-001', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-002', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-003', 0.0436212477::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-004', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-005', 0.0436212477::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-006', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-007', 0.0165973416::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-008', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-009', 0.0436212477::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-015', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-016', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-017', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-018', 0.0436212477::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-020', 0.0177901209::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-021', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-022', 0.0177901209::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-025', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-026', 0.0436212477::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-030', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-031', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-032', 0.0436212477::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-033', 0.0177901209::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-038', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-039', 0.0436212477::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-042', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-043', 0.0436212477::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-044', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-045', 0.0436212477::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-047', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-048', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-051', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-052', 0.0436212477::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-053', 0.0177901209::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-054', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-055', 0.0436212477::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-056', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-057', 0.0177901209::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-058', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-059', 0.0436212477::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-060', 0.0177901209::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-061', 0.0165973416::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-063', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-064', 0.0436212477::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-065', 0.0177901209::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-068', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-069', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-070', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-071', 0.0436212477::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-072', 0.0177901209::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-073', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-074', 0.0436212477::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-075', 0.0436212477::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-076', 0.0177901209::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-077', 0.0436212477::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-083', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-084', 0.0436212477::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-085', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-086', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-087', 0.0436212477::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-088', 0.0436212477::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-089', 0.0177901209::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-090', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-091', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-092', 0.0177901209::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-095', 0.0165973416::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-096', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-097', 0.0436212477::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-100', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-101', 0.0436212477::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-102', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-103', 0.0436212477::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-105', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-106', 0.0436212477::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-107', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-108', 0.0436212477::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-109', 0.0177901209::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-110', 0.0165973416::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-111', 0.0436212477::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-112', 0.0436212477::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-116', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-117', 0.0436212477::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-118', 0.0436212477::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-119', 0.0165973416::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-120', 0.0177901209::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-126', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-130', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-131', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-135', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-136', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-137', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-138', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-142', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-143', 0.0177901209::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-144', 0.0637517902::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-146', 0.0436212477::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-147', 0.0436212477::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-151', 0.0436212477::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-153', 0.0436212477::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-154', 0.0436212477::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-156', 0.0107753475::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-157', 0.0107753475::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-159', 0.0107753475::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-160', 0.0107753475::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-163', 0.0107753475::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-165', 0.0107753475::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-166', 0.0107753475::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-170', 0.0107753475::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-173', 0.0107753475::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-174', 0.0107753475::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-177', 0.0107753475::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-179', 0.0107753475::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-180', 0.0021573179::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-183', 0.0021573179::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-185', 0.0021573179::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-187', 0.0021573179::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-188', 0.0021573179::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-191', 0.0021573179::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-193', 0.0021573179::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-194', 0.0021573179::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-196', 0.0021573179::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-198', 0.0021573179::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-200', 0.0021573179::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-202', 0.0021573179::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-205', 0.0111637794::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-206', 0.0009993401::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-dialga', 'A2-207', 0.0010883732::numeric, 'Derived from Space-Time Smackdown: Dialga Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-001', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-002', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-003', 0.0412228782::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-008', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-009', 0.0412228782::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-010', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-011', 0.0412228782::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-012', 0.0177901209::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-013', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-014', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-015', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-016', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-019', 0.0412228782::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-021', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-023', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-024', 0.0177901209::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-025', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-026', 0.0412228782::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-027', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-028', 0.0412228782::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-029', 0.0165973416::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-030', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-034', 0.0412228782::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-035', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-036', 0.0412228782::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-037', 0.0177901209::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-038', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-039', 0.0412228782::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-040', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-041', 0.0412228782::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-042', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-043', 0.0412228782::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-044', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-045', 0.0412228782::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-046', 0.0177901209::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-047', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-048', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-049', 0.0165973416::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-050', 0.0412228782::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-051', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-052', 0.0412228782::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-053', 0.0177901209::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-054', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-055', 0.0412228782::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-062', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-063', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-064', 0.0412228782::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-065', 0.0177901209::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-066', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-067', 0.0165973416::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-075', 0.0412228782::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-076', 0.0177901209::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-077', 0.0412228782::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-078', 0.0177901209::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-079', 0.0177901209::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-080', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-081', 0.0412228782::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-082', 0.0177901209::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-086', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-087', 0.0412228782::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-093', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-094', 0.0412228782::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-098', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-099', 0.0165973416::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-100', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-101', 0.0412228782::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-104', 0.0412228782::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-105', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-106', 0.0412228782::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-111', 0.0412228782::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-113', 0.0412228782::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-114', 0.0177901209::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-115', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-118', 0.0412228782::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-121', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-122', 0.0412228782::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-123', 0.0177901209::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-124', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-125', 0.0165973416::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-126', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-127', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-128', 0.0412228782::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-129', 0.0177901209::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-130', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-131', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-132', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-133', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-134', 0.0412228782::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-139', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-140', 0.0412228782::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-141', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-142', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-143', 0.0177901209::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-145', 0.0665898213::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-148', 0.0412228782::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-149', 0.0412228782::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-150', 0.0412228782::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-152', 0.0412228782::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-155', 0.0412228782::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-158', 0.0107753475::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-161', 0.0107753475::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-162', 0.0107753475::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-164', 0.0107753475::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-167', 0.0107753475::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-168', 0.0107753475::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-169', 0.0107753475::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-171', 0.0107753475::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-172', 0.0107753475::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-175', 0.0107753475::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-176', 0.0107753475::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-178', 0.0107753475::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-181', 0.0021573179::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-182', 0.0021573179::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-184', 0.0021573179::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-186', 0.0021573179::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-189', 0.0021573179::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-190', 0.0021573179::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-192', 0.0021573179::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-195', 0.0021573179::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-197', 0.0021573179::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-199', 0.0021573179::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-201', 0.0021573179::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-203', 0.0021573179::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-204', 0.0111637794::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-206', 0.0010883732::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24'),
  ('a2-palkia', 'A2-207', 0.0009993401::numeric, 'Derived from Space-Time Smackdown: Palkia Offering Rates and Limitless pack-filtered card availability; probability means at least once per opened pack.', date '2026-06-24')
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
  where set_id = 'A2';

  select count(*)
  into space_time_packs
  from public.packs
  where set_id = 'A2';

  select count(*)
  into space_time_odds
  from public.card_pack_odds
  where pack_id in ('a2-dialga', 'a2-palkia');

  if space_time_cards <> 207 then
    raise exception
      'Expected 207 Space-Time Smackdown cards, found %',
      space_time_cards;
  end if;

  if space_time_packs <> 2 then
    raise exception
      'Expected 2 Space-Time Smackdown packs, found %',
      space_time_packs;
  end if;

  if space_time_odds <> 252 then
    raise exception
      'Expected 252 Space-Time Smackdown odds rows, found %',
      space_time_odds;
  end if;
end
$$;

commit;

-- Expected: 252 total records across the two Space-Time Smackdown packs.
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
