-- Everyday Wonders (B3b): 69 main-set cards and 37 secret cards.
-- Source checked 2026-06-25: https://pocket.limitlesstcg.com/cards/B3b?display=list&show=all
--
-- Rarity convention:
-- diamond_1 .. diamond_4, star_1 .. star_3, crown
--
-- Image URLs below are third-party CDN URLs. Mirror appropriately licensed
-- assets into storage you control before relying on them in production.

begin;

insert into public.cards (
  id, set_id, collector_number, name, category,
  energy_type, trainer_type, rarity, variant_of_card_id, image_url
) values
  ('B3b-001', 'B3b', 1, 'Caterpie', 'pokemon', 'grass', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_001_EN_SM.webp'),
  ('B3b-002', 'B3b', 2, 'Metapod', 'pokemon', 'grass', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_002_EN_SM.webp'),
  ('B3b-003', 'B3b', 3, 'Butterfree', 'pokemon', 'grass', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_003_EN_SM.webp'),
  ('B3b-004', 'B3b', 4, 'Cacnea', 'pokemon', 'grass', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_004_EN_SM.webp'),
  ('B3b-005', 'B3b', 5, 'Tropius', 'pokemon', 'grass', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_005_EN_SM.webp'),
  ('B3b-006', 'B3b', 6, 'Petilil', 'pokemon', 'grass', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_006_EN_SM.webp'),
  ('B3b-007', 'B3b', 7, 'Hisuian Lilligant', 'pokemon', 'grass', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_007_EN_SM.webp'),
  ('B3b-008', 'B3b', 8, 'Vulpix', 'pokemon', 'fire', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_008_EN_SM.webp'),
  ('B3b-009', 'B3b', 9, 'Ninetales', 'pokemon', 'fire', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_009_EN_SM.webp'),
  ('B3b-010', 'B3b', 10, 'Growlithe', 'pokemon', 'fire', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_010_EN_SM.webp'),
  ('B3b-011', 'B3b', 11, 'Psyduck', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_011_EN_SM.webp'),
  ('B3b-012', 'B3b', 12, 'Goldeen', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_012_EN_SM.webp'),
  ('B3b-013', 'B3b', 13, 'Seaking', 'pokemon', 'water', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_013_EN_SM.webp'),
  ('B3b-014', 'B3b', 14, 'Feebas', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_014_EN_SM.webp'),
  ('B3b-015', 'B3b', 15, 'Milotic ex', 'pokemon', 'water', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_015_EN_SM.webp'),
  ('B3b-016', 'B3b', 16, 'Snorunt', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_016_EN_SM.webp'),
  ('B3b-017', 'B3b', 17, 'Froslass', 'pokemon', 'water', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_017_EN_SM.webp'),
  ('B3b-018', 'B3b', 18, 'Luvdisc', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_018_EN_SM.webp'),
  ('B3b-019', 'B3b', 19, 'Piplup', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_019_EN_SM.webp'),
  ('B3b-020', 'B3b', 20, 'Iron Bundle', 'pokemon', 'water', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_020_EN_SM.webp'),
  ('B3b-021', 'B3b', 21, 'Pikachu', 'pokemon', 'lightning', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_021_EN_SM.webp'),
  ('B3b-022', 'B3b', 22, 'Raichu', 'pokemon', 'lightning', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_022_EN_SM.webp'),
  ('B3b-023', 'B3b', 23, 'Emolga', 'pokemon', 'lightning', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_023_EN_SM.webp'),
  ('B3b-024', 'B3b', 24, 'Dedenne ex', 'pokemon', 'lightning', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_024_EN_SM.webp'),
  ('B3b-025', 'B3b', 25, 'Yamper', 'pokemon', 'lightning', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_025_EN_SM.webp'),
  ('B3b-026', 'B3b', 26, 'Slowpoke', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_026_EN_SM.webp'),
  ('B3b-027', 'B3b', 27, 'Slowbro', 'pokemon', 'psychic', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_027_EN_SM.webp'),
  ('B3b-028', 'B3b', 28, 'Munna', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_028_EN_SM.webp'),
  ('B3b-029', 'B3b', 29, 'Musharna', 'pokemon', 'psychic', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_029_EN_SM.webp'),
  ('B3b-030', 'B3b', 30, 'Sylveon', 'pokemon', 'psychic', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_030_EN_SM.webp'),
  ('B3b-031', 'B3b', 31, 'Carbink', 'pokemon', 'psychic', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_031_EN_SM.webp'),
  ('B3b-032', 'B3b', 32, 'Mega Diancie ex', 'pokemon', 'psychic', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_032_EN_SM.webp'),
  ('B3b-033', 'B3b', 33, 'Enamorus', 'pokemon', 'psychic', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_033_EN_SM.webp'),
  ('B3b-034', 'B3b', 34, 'Fidough', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_034_EN_SM.webp'),
  ('B3b-035', 'B3b', 35, 'Flutter Mane', 'pokemon', 'psychic', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_035_EN_SM.webp'),
  ('B3b-036', 'B3b', 36, 'Wooper', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_036_EN_SM.webp'),
  ('B3b-037', 'B3b', 37, 'Quagsire', 'pokemon', 'fighting', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_037_EN_SM.webp'),
  ('B3b-038', 'B3b', 38, 'Rockruff', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_038_EN_SM.webp'),
  ('B3b-039', 'B3b', 39, 'Sandygast', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_039_EN_SM.webp'),
  ('B3b-040', 'B3b', 40, 'Palossand', 'pokemon', 'fighting', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_040_EN_SM.webp'),
  ('B3b-041', 'B3b', 41, 'Mega Sableye ex', 'pokemon', 'darkness', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_041_EN_SM.webp'),
  ('B3b-042', 'B3b', 42, 'Cacturne', 'pokemon', 'darkness', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_042_EN_SM.webp'),
  ('B3b-043', 'B3b', 43, 'Spiritomb', 'pokemon', 'darkness', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_043_EN_SM.webp'),
  ('B3b-044', 'B3b', 44, 'Scraggy', 'pokemon', 'darkness', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_044_EN_SM.webp'),
  ('B3b-045', 'B3b', 45, 'Scrafty', 'pokemon', 'darkness', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_045_EN_SM.webp'),
  ('B3b-046', 'B3b', 46, 'Mareanie', 'pokemon', 'darkness', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_046_EN_SM.webp'),
  ('B3b-047', 'B3b', 47, 'Toxapex', 'pokemon', 'darkness', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_047_EN_SM.webp'),
  ('B3b-048', 'B3b', 48, 'Goomy', 'pokemon', 'dragon', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_048_EN_SM.webp'),
  ('B3b-049', 'B3b', 49, 'Hisuian Sliggoo', 'pokemon', 'dragon', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_049_EN_SM.webp'),
  ('B3b-050', 'B3b', 50, 'Hisuian Goodra', 'pokemon', 'dragon', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_050_EN_SM.webp'),
  ('B3b-051', 'B3b', 51, 'Jigglypuff', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_051_EN_SM.webp'),
  ('B3b-052', 'B3b', 52, 'Wigglytuff', 'pokemon', 'colorless', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_052_EN_SM.webp'),
  ('B3b-053', 'B3b', 53, 'Eevee', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_053_EN_SM.webp'),
  ('B3b-054', 'B3b', 54, 'Munchlax', 'pokemon', 'colorless', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_054_EN_SM.webp'),
  ('B3b-055', 'B3b', 55, 'Snorlax', 'pokemon', 'colorless', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_055_EN_SM.webp'),
  ('B3b-056', 'B3b', 56, 'Teddiursa', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_056_EN_SM.webp'),
  ('B3b-057', 'B3b', 57, 'Ursaring', 'pokemon', 'colorless', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_057_EN_SM.webp'),
  ('B3b-058', 'B3b', 58, 'Ursaluna', 'pokemon', 'colorless', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_058_EN_SM.webp'),
  ('B3b-059', 'B3b', 59, 'Hisuian Zorua', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_059_EN_SM.webp'),
  ('B3b-060', 'B3b', 60, 'Hisuian Zoroark ex', 'pokemon', 'colorless', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_060_EN_SM.webp'),
  ('B3b-061', 'B3b', 61, 'Furfrou', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_061_EN_SM.webp'),
  ('B3b-062', 'B3b', 62, 'Skwovet', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_062_EN_SM.webp'),
  ('B3b-063', 'B3b', 63, 'Greedent', 'pokemon', 'colorless', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_063_EN_SM.webp'),
  ('B3b-064', 'B3b', 64, 'Small Balloon', 'trainer', null, 'pokemon_tool', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_064_EN_SM.webp'),
  ('B3b-065', 'B3b', 65, 'Elegant Cape', 'trainer', null, 'pokemon_tool', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_065_EN_SM.webp'),
  ('B3b-066', 'B3b', 66, 'Elesa', 'trainer', null, 'supporter', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_066_EN_SM.webp'),
  ('B3b-067', 'B3b', 67, 'Puppy-Loving Girl', 'trainer', null, 'supporter', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_067_EN_SM.webp'),
  ('B3b-068', 'B3b', 68, 'Wallace', 'trainer', null, 'supporter', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_068_EN_SM.webp'),
  ('B3b-069', 'B3b', 69, 'Kid''s Room', 'trainer', null, 'stadium', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_069_EN_SM.webp')
on conflict (id) do update set
  set_id = excluded.set_id,
  collector_number = excluded.collector_number,
  name = excluded.name,
  category = excluded.category,
  energy_type = excluded.energy_type,
  trainer_type = excluded.trainer_type,
  rarity = excluded.rarity,
  variant_of_card_id = excluded.variant_of_card_id,
  image_url = excluded.image_url,
  updated_at = now();

-- Insert secret-art variants after their referenced base cards.
insert into public.cards (
  id, set_id, collector_number, name, category,
  energy_type, trainer_type, rarity, variant_of_card_id, image_url
) values
  ('B3b-070', 'B3b', 70, 'Vulpix', 'pokemon', 'fire', null, 'star_1', 'B3b-008', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_070_EN_SM.webp'),
  ('B3b-071', 'B3b', 71, 'Piplup', 'pokemon', 'water', null, 'star_1', 'B3b-019', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_071_EN_SM.webp'),
  ('B3b-072', 'B3b', 72, 'Pikachu', 'pokemon', 'lightning', null, 'star_1', 'B3b-021', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_072_EN_SM.webp'),
  ('B3b-073', 'B3b', 73, 'Sylveon', 'pokemon', 'psychic', null, 'star_1', 'B3b-030', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_073_EN_SM.webp'),
  ('B3b-074', 'B3b', 74, 'Mareanie', 'pokemon', 'darkness', null, 'star_1', 'B3b-046', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_074_EN_SM.webp'),
  ('B3b-075', 'B3b', 75, 'Jigglypuff', 'pokemon', 'colorless', null, 'star_1', 'B3b-051', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_075_EN_SM.webp'),
  ('B3b-076', 'B3b', 76, 'Snorlax', 'pokemon', 'colorless', null, 'star_1', 'B3b-055', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_076_EN_SM.webp'),
  ('B3b-077', 'B3b', 77, 'Greedent', 'pokemon', 'colorless', null, 'star_1', 'B3b-063', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_077_EN_SM.webp'),
  ('B3b-078', 'B3b', 78, 'Milotic ex', 'pokemon', 'water', null, 'star_2', 'B3b-015', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_078_EN_SM.webp'),
  ('B3b-079', 'B3b', 79, 'Dedenne ex', 'pokemon', 'lightning', null, 'star_2', 'B3b-024', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_079_EN_SM.webp'),
  ('B3b-080', 'B3b', 80, 'Mega Diancie ex', 'pokemon', 'psychic', null, 'star_2', 'B3b-032', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_080_EN_SM.webp'),
  ('B3b-081', 'B3b', 81, 'Mega Sableye ex', 'pokemon', 'darkness', null, 'star_2', 'B3b-041', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_081_EN_SM.webp'),
  ('B3b-082', 'B3b', 82, 'Hisuian Zoroark ex', 'pokemon', 'colorless', null, 'star_2', 'B3b-060', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_082_EN_SM.webp'),
  ('B3b-083', 'B3b', 83, 'Elesa', 'trainer', null, 'supporter', 'star_2', 'B3b-066', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_083_EN_SM.webp'),
  ('B3b-084', 'B3b', 84, 'Puppy-Loving Girl', 'trainer', null, 'supporter', 'star_2', 'B3b-067', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_084_EN_SM.webp'),
  ('B3b-085', 'B3b', 85, 'Wallace', 'trainer', null, 'supporter', 'star_2', 'B3b-068', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_085_EN_SM.webp'),
  ('B3b-086', 'B3b', 86, 'Milotic ex', 'pokemon', 'water', null, 'star_2', 'B3b-015', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_086_EN_SM.webp'),
  ('B3b-087', 'B3b', 87, 'Mega Diancie ex', 'pokemon', 'psychic', null, 'star_2', 'B3b-032', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_087_EN_SM.webp'),
  ('B3b-088', 'B3b', 88, 'Mega Sableye ex', 'pokemon', 'darkness', null, 'star_2', 'B3b-041', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_088_EN_SM.webp'),
  ('B3b-089', 'B3b', 89, 'Hisuian Zoroark ex', 'pokemon', 'colorless', null, 'star_2', 'B3b-060', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_089_EN_SM.webp'),
  ('B3b-090', 'B3b', 90, 'Dedenne ex', 'pokemon', 'lightning', null, 'star_3', 'B3b-024', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_090_EN_SM.webp'),
  ('B3b-091', 'B3b', 91, 'Caterpie', 'pokemon', 'grass', null, 'star_1', 'B3b-001', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_091_EN_SM.webp'),
  ('B3b-092', 'B3b', 92, 'Metapod', 'pokemon', 'grass', null, 'star_1', 'B3b-002', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_092_EN_SM.webp'),
  ('B3b-093', 'B3b', 93, 'Butterfree', 'pokemon', 'grass', null, 'star_1', 'B3b-003', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_093_EN_SM.webp'),
  ('B3b-094', 'B3b', 94, 'Mareep', 'pokemon', 'lightning', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_094_EN_SM.webp'),
  ('B3b-095', 'B3b', 95, 'Flaaffy', 'pokemon', 'lightning', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_095_EN_SM.webp'),
  ('B3b-096', 'B3b', 96, 'Ampharos', 'pokemon', 'lightning', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_096_EN_SM.webp'),
  ('B3b-097', 'B3b', 97, 'Slowbro', 'pokemon', 'psychic', null, 'star_1', 'B3b-027', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_097_EN_SM.webp'),
  ('B3b-098', 'B3b', 98, 'Kangaskhan', 'pokemon', 'colorless', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_098_EN_SM.webp'),
  ('B3b-099', 'B3b', 99, 'Ditto', 'pokemon', 'colorless', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_099_EN_SM.webp'),
  ('B3b-100', 'B3b', 100, 'Snorlax', 'pokemon', 'colorless', null, 'star_1', 'B3b-055', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_100_EN_SM.webp'),
  ('B3b-101', 'B3b', 101, 'Mega Gyarados ex', 'pokemon', 'water', null, 'star_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_101_EN_SM.webp'),
  ('B3b-102', 'B3b', 102, 'Vaporeon ex', 'pokemon', 'water', null, 'star_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_102_EN_SM.webp'),
  ('B3b-103', 'B3b', 103, 'Mega Ampharos ex', 'pokemon', 'lightning', null, 'star_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_103_EN_SM.webp'),
  ('B3b-104', 'B3b', 104, 'Indeedee ex', 'pokemon', 'psychic', null, 'star_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_104_EN_SM.webp'),
  ('B3b-105', 'B3b', 105, 'Munchlax', 'pokemon', 'colorless', null, 'crown', 'B3b-054', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_105_EN_SM.webp'),
  ('B3b-106', 'B3b', 106, 'Small Balloon', 'trainer', null, 'pokemon_tool', 'crown', 'B3b-064', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3b/B3b_106_EN_SM.webp')
on conflict (id) do update set
  set_id = excluded.set_id,
  collector_number = excluded.collector_number,
  name = excluded.name,
  category = excluded.category,
  energy_type = excluded.energy_type,
  trainer_type = excluded.trainer_type,
  rarity = excluded.rarity,
  variant_of_card_id = excluded.variant_of_card_id,
  image_url = excluded.image_url,
  updated_at = now();

commit;

-- Expected result: 106 cards, numbered 1 through 106.
select
  count(*) as card_count,
  min(collector_number) as first_number,
  max(collector_number) as last_number
from public.cards
where set_id = 'B3b';
