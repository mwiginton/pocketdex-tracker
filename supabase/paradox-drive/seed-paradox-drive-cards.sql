-- Paradox Drive (B3a): 74 main-set cards and 35 secret cards.
-- Source checked 2026-06-25: https://pocket.limitlesstcg.com/cards/B3a?display=list&show=all
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
  ('B3a-001', 'B3a', 1, 'Surskit', 'pokemon', 'grass', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_001_EN_SM.webp'),
  ('B3a-002', 'B3a', 2, 'Masquerain', 'pokemon', 'grass', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_002_EN_SM.webp'),
  ('B3a-003', 'B3a', 3, 'Brute Bonnet', 'pokemon', 'grass', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_003_EN_SM.webp'),
  ('B3a-004', 'B3a', 4, 'Slither Wing', 'pokemon', 'grass', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_004_EN_SM.webp'),
  ('B3a-005', 'B3a', 5, 'Iron Moth', 'pokemon', 'fire', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_005_EN_SM.webp'),
  ('B3a-006', 'B3a', 6, 'Psyduck', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_006_EN_SM.webp'),
  ('B3a-007', 'B3a', 7, 'Golduck', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_007_EN_SM.webp'),
  ('B3a-008', 'B3a', 8, 'Vaporeon', 'pokemon', 'water', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_008_EN_SM.webp'),
  ('B3a-009', 'B3a', 9, 'Buizel', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_009_EN_SM.webp'),
  ('B3a-010', 'B3a', 10, 'Floatzel', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_010_EN_SM.webp'),
  ('B3a-011', 'B3a', 11, 'Snom', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_011_EN_SM.webp'),
  ('B3a-012', 'B3a', 12, 'Frosmoth', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_012_EN_SM.webp'),
  ('B3a-013', 'B3a', 13, 'Iron Bundle ex', 'pokemon', 'water', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_013_EN_SM.webp'),
  ('B3a-014', 'B3a', 14, 'Pawmi', 'pokemon', 'lightning', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_014_EN_SM.webp'),
  ('B3a-015', 'B3a', 15, 'Pawmo', 'pokemon', 'lightning', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_015_EN_SM.webp'),
  ('B3a-016', 'B3a', 16, 'Pawmot', 'pokemon', 'lightning', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_016_EN_SM.webp'),
  ('B3a-017', 'B3a', 17, 'Iron Hands', 'pokemon', 'lightning', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_017_EN_SM.webp'),
  ('B3a-018', 'B3a', 18, 'Iron Thorns', 'pokemon', 'lightning', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_018_EN_SM.webp'),
  ('B3a-019', 'B3a', 19, 'Miraidon ex', 'pokemon', 'lightning', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_019_EN_SM.webp'),
  ('B3a-020', 'B3a', 20, 'Espeon', 'pokemon', 'psychic', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_020_EN_SM.webp'),
  ('B3a-021', 'B3a', 21, 'Flittle', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_021_EN_SM.webp'),
  ('B3a-022', 'B3a', 22, 'Espathra', 'pokemon', 'psychic', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_022_EN_SM.webp'),
  ('B3a-023', 'B3a', 23, 'Greavard', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_023_EN_SM.webp'),
  ('B3a-024', 'B3a', 24, 'Houndstone', 'pokemon', 'psychic', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_024_EN_SM.webp'),
  ('B3a-025', 'B3a', 25, 'Scream Tail', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_025_EN_SM.webp'),
  ('B3a-026', 'B3a', 26, 'Flutter Mane ex', 'pokemon', 'psychic', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_026_EN_SM.webp'),
  ('B3a-027', 'B3a', 27, 'Iron Valiant', 'pokemon', 'psychic', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_027_EN_SM.webp'),
  ('B3a-028', 'B3a', 28, 'Iron Leaves', 'pokemon', 'psychic', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_028_EN_SM.webp'),
  ('B3a-029', 'B3a', 29, 'Iron Boulder', 'pokemon', 'psychic', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_029_EN_SM.webp'),
  ('B3a-030', 'B3a', 30, 'Iron Crown', 'pokemon', 'psychic', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_030_EN_SM.webp'),
  ('B3a-031', 'B3a', 31, 'Nacli', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_031_EN_SM.webp'),
  ('B3a-032', 'B3a', 32, 'Naclstack', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_032_EN_SM.webp'),
  ('B3a-033', 'B3a', 33, 'Garganacl', 'pokemon', 'fighting', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_033_EN_SM.webp'),
  ('B3a-034', 'B3a', 34, 'Great Tusk', 'pokemon', 'fighting', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_034_EN_SM.webp'),
  ('B3a-035', 'B3a', 35, 'Sandy Shocks', 'pokemon', 'fighting', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_035_EN_SM.webp'),
  ('B3a-036', 'B3a', 36, 'Koraidon ex', 'pokemon', 'fighting', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_036_EN_SM.webp'),
  ('B3a-037', 'B3a', 37, 'Umbreon', 'pokemon', 'darkness', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_037_EN_SM.webp'),
  ('B3a-038', 'B3a', 38, 'Sneasel', 'pokemon', 'darkness', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_038_EN_SM.webp'),
  ('B3a-039', 'B3a', 39, 'Weavile', 'pokemon', 'darkness', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_039_EN_SM.webp'),
  ('B3a-040', 'B3a', 40, 'Sableye', 'pokemon', 'darkness', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_040_EN_SM.webp'),
  ('B3a-041', 'B3a', 41, 'Pawniard', 'pokemon', 'darkness', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_041_EN_SM.webp'),
  ('B3a-042', 'B3a', 42, 'Bisharp', 'pokemon', 'darkness', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_042_EN_SM.webp'),
  ('B3a-043', 'B3a', 43, 'Kingambit', 'pokemon', 'darkness', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_043_EN_SM.webp'),
  ('B3a-044', 'B3a', 44, 'Glimmet', 'pokemon', 'darkness', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_044_EN_SM.webp'),
  ('B3a-045', 'B3a', 45, 'Glimmora', 'pokemon', 'darkness', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_045_EN_SM.webp'),
  ('B3a-046', 'B3a', 46, 'Iron Jugulis', 'pokemon', 'darkness', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_046_EN_SM.webp'),
  ('B3a-047', 'B3a', 47, 'Roaring Moon', 'pokemon', 'darkness', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_047_EN_SM.webp'),
  ('B3a-048', 'B3a', 48, 'Corviknight', 'pokemon', 'metal', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_048_EN_SM.webp'),
  ('B3a-049', 'B3a', 49, 'Cufant', 'pokemon', 'metal', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_049_EN_SM.webp'),
  ('B3a-050', 'B3a', 50, 'Copperajah', 'pokemon', 'metal', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_050_EN_SM.webp'),
  ('B3a-051', 'B3a', 51, 'Iron Treads', 'pokemon', 'metal', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_051_EN_SM.webp'),
  ('B3a-052', 'B3a', 52, 'Altaria', 'pokemon', 'dragon', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_052_EN_SM.webp'),
  ('B3a-053', 'B3a', 53, 'Walking Wake', 'pokemon', 'dragon', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_053_EN_SM.webp'),
  ('B3a-054', 'B3a', 54, 'Gouging Fire', 'pokemon', 'dragon', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_054_EN_SM.webp'),
  ('B3a-055', 'B3a', 55, 'Raging Bolt', 'pokemon', 'dragon', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_055_EN_SM.webp'),
  ('B3a-056', 'B3a', 56, 'Eevee', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_056_EN_SM.webp'),
  ('B3a-057', 'B3a', 57, 'Girafarig', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_057_EN_SM.webp'),
  ('B3a-058', 'B3a', 58, 'Farigiraf', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_058_EN_SM.webp'),
  ('B3a-059', 'B3a', 59, 'Dunsparce', 'pokemon', 'colorless', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_059_EN_SM.webp'),
  ('B3a-060', 'B3a', 60, 'Dudunsparce', 'pokemon', 'colorless', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_060_EN_SM.webp'),
  ('B3a-061', 'B3a', 61, 'Swablu', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_061_EN_SM.webp'),
  ('B3a-062', 'B3a', 62, 'Rufflet', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_062_EN_SM.webp'),
  ('B3a-063', 'B3a', 63, 'Braviary', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_063_EN_SM.webp'),
  ('B3a-064', 'B3a', 64, 'Hawlucha', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_064_EN_SM.webp'),
  ('B3a-065', 'B3a', 65, 'Rookidee', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_065_EN_SM.webp'),
  ('B3a-066', 'B3a', 66, 'Corvisquire', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_066_EN_SM.webp'),
  ('B3a-067', 'B3a', 67, 'Flamigo', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_067_EN_SM.webp'),
  ('B3a-068', 'B3a', 68, 'Terapagos ex', 'pokemon', 'colorless', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_068_EN_SM.webp'),
  ('B3a-069', 'B3a', 69, 'Ancient Booster Energy Capsule', 'trainer', null, 'pokemon_tool', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_069_EN_SM.webp'),
  ('B3a-070', 'B3a', 70, 'Future Booster Energy Capsule', 'trainer', null, 'pokemon_tool', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_070_EN_SM.webp'),
  ('B3a-071', 'B3a', 71, 'Juliana', 'trainer', null, 'supporter', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_071_EN_SM.webp'),
  ('B3a-072', 'B3a', 72, 'Professor Sada', 'trainer', null, 'supporter', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_072_EN_SM.webp'),
  ('B3a-073', 'B3a', 73, 'Professor Turo', 'trainer', null, 'supporter', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_073_EN_SM.webp'),
  ('B3a-074', 'B3a', 74, 'Area Zero', 'trainer', null, 'stadium', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_074_EN_SM.webp')
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
  ('B3a-075', 'B3a', 75, 'Snom', 'pokemon', 'water', null, 'star_1', 'B3a-011', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_075_EN_SM.webp'),
  ('B3a-076', 'B3a', 76, 'Flittle', 'pokemon', 'psychic', null, 'star_1', 'B3a-021', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_076_EN_SM.webp'),
  ('B3a-077', 'B3a', 77, 'Iron Boulder', 'pokemon', 'psychic', null, 'star_1', 'B3a-029', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_077_EN_SM.webp'),
  ('B3a-078', 'B3a', 78, 'Glimmora', 'pokemon', 'darkness', null, 'star_1', 'B3a-045', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_078_EN_SM.webp'),
  ('B3a-079', 'B3a', 79, 'Raging Bolt', 'pokemon', 'dragon', null, 'star_1', 'B3a-055', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_079_EN_SM.webp'),
  ('B3a-080', 'B3a', 80, 'Hawlucha', 'pokemon', 'colorless', null, 'star_1', 'B3a-064', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_080_EN_SM.webp'),
  ('B3a-081', 'B3a', 81, 'Iron Bundle ex', 'pokemon', 'water', null, 'star_2', 'B3a-013', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_081_EN_SM.webp'),
  ('B3a-082', 'B3a', 82, 'Miraidon ex', 'pokemon', 'lightning', null, 'star_2', 'B3a-019', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_082_EN_SM.webp'),
  ('B3a-083', 'B3a', 83, 'Flutter Mane ex', 'pokemon', 'psychic', null, 'star_2', 'B3a-026', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_083_EN_SM.webp'),
  ('B3a-084', 'B3a', 84, 'Koraidon ex', 'pokemon', 'fighting', null, 'star_2', 'B3a-036', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_084_EN_SM.webp'),
  ('B3a-085', 'B3a', 85, 'Terapagos ex', 'pokemon', 'colorless', null, 'star_2', 'B3a-068', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_085_EN_SM.webp'),
  ('B3a-086', 'B3a', 86, 'Juliana', 'trainer', null, 'supporter', 'star_2', 'B3a-071', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_086_EN_SM.webp'),
  ('B3a-087', 'B3a', 87, 'Professor Sada', 'trainer', null, 'supporter', 'star_2', 'B3a-072', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_087_EN_SM.webp'),
  ('B3a-088', 'B3a', 88, 'Professor Turo', 'trainer', null, 'supporter', 'star_2', 'B3a-073', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_088_EN_SM.webp'),
  ('B3a-089', 'B3a', 89, 'Iron Bundle ex', 'pokemon', 'water', null, 'star_2', 'B3a-013', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_089_EN_SM.webp'),
  ('B3a-090', 'B3a', 90, 'Miraidon ex', 'pokemon', 'lightning', null, 'star_2', 'B3a-019', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_090_EN_SM.webp'),
  ('B3a-091', 'B3a', 91, 'Flutter Mane ex', 'pokemon', 'psychic', null, 'star_2', 'B3a-026', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_091_EN_SM.webp'),
  ('B3a-092', 'B3a', 92, 'Koraidon ex', 'pokemon', 'fighting', null, 'star_2', 'B3a-036', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_092_EN_SM.webp'),
  ('B3a-093', 'B3a', 93, 'Terapagos ex', 'pokemon', 'colorless', null, 'star_3', 'B3a-068', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_093_EN_SM.webp'),
  ('B3a-094', 'B3a', 94, 'Rellor', 'pokemon', 'grass', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_094_EN_SM.webp'),
  ('B3a-095', 'B3a', 95, 'Charcadet', 'pokemon', 'fire', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_095_EN_SM.webp'),
  ('B3a-096', 'B3a', 96, 'Tadbulb', 'pokemon', 'lightning', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_096_EN_SM.webp'),
  ('B3a-097', 'B3a', 97, 'Rabsca', 'pokemon', 'psychic', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_097_EN_SM.webp'),
  ('B3a-098', 'B3a', 98, 'Diglett', 'pokemon', 'fighting', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_098_EN_SM.webp'),
  ('B3a-099', 'B3a', 99, 'Dugtrio', 'pokemon', 'fighting', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_099_EN_SM.webp'),
  ('B3a-100', 'B3a', 100, 'Klawf', 'pokemon', 'fighting', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_100_EN_SM.webp'),
  ('B3a-101', 'B3a', 101, 'Orthworm', 'pokemon', 'metal', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_101_EN_SM.webp'),
  ('B3a-102', 'B3a', 102, 'Swablu', 'pokemon', 'colorless', null, 'star_1', 'B3a-061', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_102_EN_SM.webp'),
  ('B3a-103', 'B3a', 103, 'Altaria', 'pokemon', 'colorless', null, 'star_1', 'B3a-052', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_103_EN_SM.webp'),
  ('B3a-104', 'B3a', 104, 'Meowscarada ex', 'pokemon', 'grass', null, 'star_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_104_EN_SM.webp'),
  ('B3a-105', 'B3a', 105, 'Armarouge ex', 'pokemon', 'fire', null, 'star_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_105_EN_SM.webp'),
  ('B3a-106', 'B3a', 106, 'Bellibolt ex', 'pokemon', 'lightning', null, 'star_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_106_EN_SM.webp'),
  ('B3a-107', 'B3a', 107, 'Mega Altaria ex', 'pokemon', 'psychic', null, 'star_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_107_EN_SM.webp'),
  ('B3a-108', 'B3a', 108, 'Iron Valiant', 'pokemon', 'psychic', null, 'crown', 'B3a-027', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_108_EN_SM.webp'),
  ('B3a-109', 'B3a', 109, 'Roaring Moon', 'pokemon', 'darkness', null, 'crown', 'B3a-047', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B3a/B3a_109_EN_SM.webp')
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

-- Expected result: 109 cards, numbered 1 through 109.
select
  count(*) as card_count,
  min(collector_number) as first_number,
  max(collector_number) as last_number
from public.cards
where set_id = 'B3a';
