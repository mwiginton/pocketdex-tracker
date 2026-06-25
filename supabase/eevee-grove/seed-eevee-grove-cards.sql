-- Eevee Grove (A3b): 69 main-set cards and 38 secret cards.
-- Source checked 2026-06-24: https://pocket.limitlesstcg.com/cards/A3b?display=list&show=all
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
  ('A3b-001', 'A3b', 1, 'Tropius', 'pokemon', 'grass', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_001_EN_SM.webp'),
  ('A3b-002', 'A3b', 2, 'Leafeon', 'pokemon', 'grass', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_002_EN_SM.webp'),
  ('A3b-003', 'A3b', 3, 'Bounsweet', 'pokemon', 'grass', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_003_EN_SM.webp'),
  ('A3b-004', 'A3b', 4, 'Steenee', 'pokemon', 'grass', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_004_EN_SM.webp'),
  ('A3b-005', 'A3b', 5, 'Tsareena', 'pokemon', 'grass', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_005_EN_SM.webp'),
  ('A3b-006', 'A3b', 6, 'Applin', 'pokemon', 'grass', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_006_EN_SM.webp'),
  ('A3b-007', 'A3b', 7, 'Appletun', 'pokemon', 'grass', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_007_EN_SM.webp'),
  ('A3b-008', 'A3b', 8, 'Flareon', 'pokemon', 'fire', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_008_EN_SM.webp'),
  ('A3b-009', 'A3b', 9, 'Flareon ex', 'pokemon', 'fire', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_009_EN_SM.webp'),
  ('A3b-010', 'A3b', 10, 'Torkoal', 'pokemon', 'fire', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_010_EN_SM.webp'),
  ('A3b-011', 'A3b', 11, 'Litten', 'pokemon', 'fire', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_011_EN_SM.webp'),
  ('A3b-012', 'A3b', 12, 'Torracat', 'pokemon', 'fire', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_012_EN_SM.webp'),
  ('A3b-013', 'A3b', 13, 'Incineroar', 'pokemon', 'fire', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_013_EN_SM.webp'),
  ('A3b-014', 'A3b', 14, 'Salandit', 'pokemon', 'fire', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_014_EN_SM.webp'),
  ('A3b-015', 'A3b', 15, 'Salazzle', 'pokemon', 'fire', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_015_EN_SM.webp'),
  ('A3b-016', 'A3b', 16, 'Vaporeon', 'pokemon', 'water', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_016_EN_SM.webp'),
  ('A3b-017', 'A3b', 17, 'Glaceon', 'pokemon', 'water', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_017_EN_SM.webp'),
  ('A3b-018', 'A3b', 18, 'Vanillite', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_018_EN_SM.webp'),
  ('A3b-019', 'A3b', 19, 'Vanillish', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_019_EN_SM.webp'),
  ('A3b-020', 'A3b', 20, 'Vanilluxe', 'pokemon', 'water', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_020_EN_SM.webp'),
  ('A3b-021', 'A3b', 21, 'Alomomola', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_021_EN_SM.webp'),
  ('A3b-022', 'A3b', 22, 'Popplio', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_022_EN_SM.webp'),
  ('A3b-023', 'A3b', 23, 'Brionne', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_023_EN_SM.webp'),
  ('A3b-024', 'A3b', 24, 'Primarina ex', 'pokemon', 'water', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_024_EN_SM.webp'),
  ('A3b-025', 'A3b', 25, 'Jolteon', 'pokemon', 'lightning', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_025_EN_SM.webp'),
  ('A3b-026', 'A3b', 26, 'Joltik', 'pokemon', 'lightning', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_026_EN_SM.webp'),
  ('A3b-027', 'A3b', 27, 'Galvantula', 'pokemon', 'lightning', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_027_EN_SM.webp'),
  ('A3b-028', 'A3b', 28, 'Espeon', 'pokemon', 'psychic', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_028_EN_SM.webp'),
  ('A3b-029', 'A3b', 29, 'Woobat', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_029_EN_SM.webp'),
  ('A3b-030', 'A3b', 30, 'Swoobat', 'pokemon', 'psychic', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_030_EN_SM.webp'),
  ('A3b-031', 'A3b', 31, 'Swirlix', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_031_EN_SM.webp'),
  ('A3b-032', 'A3b', 32, 'Slurpuff', 'pokemon', 'psychic', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_032_EN_SM.webp'),
  ('A3b-033', 'A3b', 33, 'Sylveon', 'pokemon', 'psychic', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_033_EN_SM.webp'),
  ('A3b-034', 'A3b', 34, 'Sylveon ex', 'pokemon', 'psychic', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_034_EN_SM.webp'),
  ('A3b-035', 'A3b', 35, 'Mimikyu', 'pokemon', 'psychic', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_035_EN_SM.webp'),
  ('A3b-036', 'A3b', 36, 'Milcery', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_036_EN_SM.webp'),
  ('A3b-037', 'A3b', 37, 'Alcremie', 'pokemon', 'psychic', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_037_EN_SM.webp'),
  ('A3b-038', 'A3b', 38, 'Barboach', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_038_EN_SM.webp'),
  ('A3b-039', 'A3b', 39, 'Whiscash', 'pokemon', 'fighting', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_039_EN_SM.webp'),
  ('A3b-040', 'A3b', 40, 'Mienfoo', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_040_EN_SM.webp'),
  ('A3b-041', 'A3b', 41, 'Mienshao', 'pokemon', 'fighting', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_041_EN_SM.webp'),
  ('A3b-042', 'A3b', 42, 'Carbink', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_042_EN_SM.webp'),
  ('A3b-043', 'A3b', 43, 'Umbreon', 'pokemon', 'darkness', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_043_EN_SM.webp'),
  ('A3b-044', 'A3b', 44, 'Sableye', 'pokemon', 'darkness', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_044_EN_SM.webp'),
  ('A3b-045', 'A3b', 45, 'Purrloin', 'pokemon', 'darkness', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_045_EN_SM.webp'),
  ('A3b-046', 'A3b', 46, 'Liepard', 'pokemon', 'darkness', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_046_EN_SM.webp'),
  ('A3b-047', 'A3b', 47, 'Mawile', 'pokemon', 'metal', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_047_EN_SM.webp'),
  ('A3b-048', 'A3b', 48, 'Togedemaru', 'pokemon', 'metal', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_048_EN_SM.webp'),
  ('A3b-049', 'A3b', 49, 'Meltan', 'pokemon', 'metal', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_049_EN_SM.webp'),
  ('A3b-050', 'A3b', 50, 'Melmetal', 'pokemon', 'metal', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_050_EN_SM.webp'),
  ('A3b-051', 'A3b', 51, 'Dratini', 'pokemon', 'dragon', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_051_EN_SM.webp'),
  ('A3b-052', 'A3b', 52, 'Dragonair', 'pokemon', 'dragon', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_052_EN_SM.webp'),
  ('A3b-053', 'A3b', 53, 'Dragonite ex', 'pokemon', 'dragon', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_053_EN_SM.webp'),
  ('A3b-054', 'A3b', 54, 'Drampa', 'pokemon', 'dragon', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_054_EN_SM.webp'),
  ('A3b-055', 'A3b', 55, 'Eevee', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_055_EN_SM.webp'),
  ('A3b-056', 'A3b', 56, 'Eevee ex', 'pokemon', 'colorless', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_056_EN_SM.webp'),
  ('A3b-057', 'A3b', 57, 'Snorlax ex', 'pokemon', 'colorless', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_057_EN_SM.webp'),
  ('A3b-058', 'A3b', 58, 'Aipom', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_058_EN_SM.webp'),
  ('A3b-059', 'A3b', 59, 'Ambipom', 'pokemon', 'colorless', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_059_EN_SM.webp'),
  ('A3b-060', 'A3b', 60, 'Chatot', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_060_EN_SM.webp'),
  ('A3b-061', 'A3b', 61, 'Audino', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_061_EN_SM.webp'),
  ('A3b-062', 'A3b', 62, 'Minccino', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_062_EN_SM.webp'),
  ('A3b-063', 'A3b', 63, 'Cinccino', 'pokemon', 'colorless', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_063_EN_SM.webp'),
  ('A3b-064', 'A3b', 64, 'Skwovet', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_064_EN_SM.webp'),
  ('A3b-065', 'A3b', 65, 'Greedent', 'pokemon', 'colorless', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_065_EN_SM.webp'),
  ('A3b-066', 'A3b', 66, 'Eevee Bag', 'trainer', null, 'item', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_066_EN_SM.webp'),
  ('A3b-067', 'A3b', 67, 'Leftovers', 'trainer', null, 'pokemon_tool', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_067_EN_SM.webp'),
  ('A3b-068', 'A3b', 68, 'Hau', 'trainer', null, 'supporter', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_068_EN_SM.webp'),
  ('A3b-069', 'A3b', 69, 'Penny', 'trainer', null, 'supporter', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_069_EN_SM.webp')
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
  ('A3b-070', 'A3b', 70, 'Leafeon', 'pokemon', 'grass', null, 'star_1', 'A3b-002', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_070_EN_SM.webp'),
  ('A3b-071', 'A3b', 71, 'Flareon', 'pokemon', 'fire', null, 'star_1', 'A3b-008', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_071_EN_SM.webp'),
  ('A3b-072', 'A3b', 72, 'Vaporeon', 'pokemon', 'water', null, 'star_1', 'A3b-016', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_072_EN_SM.webp'),
  ('A3b-073', 'A3b', 73, 'Glaceon', 'pokemon', 'water', null, 'star_1', 'A3b-017', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_073_EN_SM.webp'),
  ('A3b-074', 'A3b', 74, 'Jolteon', 'pokemon', 'lightning', null, 'star_1', 'A3b-025', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_074_EN_SM.webp'),
  ('A3b-075', 'A3b', 75, 'Espeon', 'pokemon', 'psychic', null, 'star_1', 'A3b-028', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_075_EN_SM.webp'),
  ('A3b-076', 'A3b', 76, 'Sylveon', 'pokemon', 'psychic', null, 'star_1', 'A3b-033', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_076_EN_SM.webp'),
  ('A3b-077', 'A3b', 77, 'Umbreon', 'pokemon', 'darkness', null, 'star_1', 'A3b-043', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_077_EN_SM.webp'),
  ('A3b-078', 'A3b', 78, 'Eevee', 'pokemon', 'colorless', null, 'star_1', 'A3b-055', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_078_EN_SM.webp'),
  ('A3b-079', 'A3b', 79, 'Flareon ex', 'pokemon', 'fire', null, 'star_2', 'A3b-009', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_079_EN_SM.webp'),
  ('A3b-080', 'A3b', 80, 'Primarina ex', 'pokemon', 'water', null, 'star_2', 'A3b-024', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_080_EN_SM.webp'),
  ('A3b-081', 'A3b', 81, 'Sylveon ex', 'pokemon', 'psychic', null, 'star_2', 'A3b-034', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_081_EN_SM.webp'),
  ('A3b-082', 'A3b', 82, 'Dragonite ex', 'pokemon', 'dragon', null, 'star_2', 'A3b-053', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_082_EN_SM.webp'),
  ('A3b-083', 'A3b', 83, 'Eevee ex', 'pokemon', 'colorless', null, 'star_2', 'A3b-056', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_083_EN_SM.webp'),
  ('A3b-084', 'A3b', 84, 'Snorlax ex', 'pokemon', 'colorless', null, 'star_2', 'A3b-057', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_084_EN_SM.webp'),
  ('A3b-085', 'A3b', 85, 'Hau', 'trainer', null, 'supporter', 'star_2', 'A3b-068', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_085_EN_SM.webp'),
  ('A3b-086', 'A3b', 86, 'Penny', 'trainer', null, 'supporter', 'star_2', 'A3b-069', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_086_EN_SM.webp'),
  ('A3b-087', 'A3b', 87, 'Flareon ex', 'pokemon', 'fire', null, 'star_2', 'A3b-009', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_087_EN_SM.webp'),
  ('A3b-088', 'A3b', 88, 'Primarina ex', 'pokemon', 'water', null, 'star_2', 'A3b-024', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_088_EN_SM.webp'),
  ('A3b-089', 'A3b', 89, 'Sylveon ex', 'pokemon', 'psychic', null, 'star_2', 'A3b-034', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_089_EN_SM.webp'),
  ('A3b-090', 'A3b', 90, 'Dragonite ex', 'pokemon', 'dragon', null, 'star_2', 'A3b-053', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_090_EN_SM.webp'),
  ('A3b-091', 'A3b', 91, 'Snorlax ex', 'pokemon', 'colorless', null, 'star_2', 'A3b-057', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_091_EN_SM.webp'),
  ('A3b-092', 'A3b', 92, 'Eevee ex', 'pokemon', 'colorless', null, 'star_3', 'A3b-056', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_092_EN_SM.webp'),
  ('A3b-093', 'A3b', 93, 'Pinsir', 'pokemon', 'grass', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_093_EN_SM.webp'),
  ('A3b-094', 'A3b', 94, 'Lapras', 'pokemon', 'water', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_094_EN_SM.webp'),
  ('A3b-095', 'A3b', 95, 'Voltorb', 'pokemon', 'lightning', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_095_EN_SM.webp'),
  ('A3b-096', 'A3b', 96, 'Electrode', 'pokemon', 'lightning', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_096_EN_SM.webp'),
  ('A3b-097', 'A3b', 97, 'Ralts', 'pokemon', 'psychic', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_097_EN_SM.webp'),
  ('A3b-098', 'A3b', 98, 'Kirlia', 'pokemon', 'psychic', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_098_EN_SM.webp'),
  ('A3b-099', 'A3b', 99, 'Gardevoir', 'pokemon', 'psychic', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_099_EN_SM.webp'),
  ('A3b-100', 'A3b', 100, 'Ekans', 'pokemon', 'darkness', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_100_EN_SM.webp'),
  ('A3b-101', 'A3b', 101, 'Arbok', 'pokemon', 'darkness', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_101_EN_SM.webp'),
  ('A3b-102', 'A3b', 102, 'Farfetch''d', 'pokemon', 'colorless', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_102_EN_SM.webp'),
  ('A3b-103', 'A3b', 103, 'Moltres ex', 'pokemon', 'fire', null, 'star_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_103_EN_SM.webp'),
  ('A3b-104', 'A3b', 104, 'Articuno ex', 'pokemon', 'water', null, 'star_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_104_EN_SM.webp'),
  ('A3b-105', 'A3b', 105, 'Zapdos ex', 'pokemon', 'lightning', null, 'star_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_105_EN_SM.webp'),
  ('A3b-106', 'A3b', 106, 'Gallade ex', 'pokemon', 'fighting', null, 'star_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_106_EN_SM.webp'),
  ('A3b-107', 'A3b', 107, 'Eevee Bag', 'trainer', null, 'item', 'crown', 'A3b-066', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3b/A3b_107_EN_SM.webp')
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

-- Expected result: 107 cards, numbered 1 through 107.
select
  count(*) as card_count,
  min(collector_number) as first_number,
  max(collector_number) as last_number
from public.cards
where set_id = 'A3b';
