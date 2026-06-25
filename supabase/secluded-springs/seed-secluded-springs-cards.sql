-- Secluded Springs (A4a): 71 main-set cards and 34 secret cards.
-- Source checked 2026-06-24: https://pocket.limitlesstcg.com/cards/A4a?display=list&show=all
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
  ('A4a-001', 'A4a', 1, 'Hoppip', 'pokemon', 'grass', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_001_EN_SM.webp'),
  ('A4a-002', 'A4a', 2, 'Skiploom', 'pokemon', 'grass', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_002_EN_SM.webp'),
  ('A4a-003', 'A4a', 3, 'Jumpluff ex', 'pokemon', 'grass', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_003_EN_SM.webp'),
  ('A4a-004', 'A4a', 4, 'Sunkern', 'pokemon', 'grass', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_004_EN_SM.webp'),
  ('A4a-005', 'A4a', 5, 'Sunflora', 'pokemon', 'grass', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_005_EN_SM.webp'),
  ('A4a-006', 'A4a', 6, 'Celebi', 'pokemon', 'grass', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_006_EN_SM.webp'),
  ('A4a-007', 'A4a', 7, 'Durant', 'pokemon', 'grass', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_007_EN_SM.webp'),
  ('A4a-008', 'A4a', 8, 'Slugma', 'pokemon', 'fire', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_008_EN_SM.webp'),
  ('A4a-009', 'A4a', 9, 'Magcargo', 'pokemon', 'fire', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_009_EN_SM.webp'),
  ('A4a-010', 'A4a', 10, 'Entei ex', 'pokemon', 'fire', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_010_EN_SM.webp'),
  ('A4a-011', 'A4a', 11, 'Fletchinder', 'pokemon', 'fire', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_011_EN_SM.webp'),
  ('A4a-012', 'A4a', 12, 'Talonflame', 'pokemon', 'fire', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_012_EN_SM.webp'),
  ('A4a-013', 'A4a', 13, 'Poliwag', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_013_EN_SM.webp'),
  ('A4a-014', 'A4a', 14, 'Poliwhirl', 'pokemon', 'water', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_014_EN_SM.webp'),
  ('A4a-015', 'A4a', 15, 'Tentacool', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_015_EN_SM.webp'),
  ('A4a-016', 'A4a', 16, 'Tentacruel', 'pokemon', 'water', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_016_EN_SM.webp'),
  ('A4a-017', 'A4a', 17, 'Slowpoke', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_017_EN_SM.webp'),
  ('A4a-018', 'A4a', 18, 'Slowking', 'pokemon', 'water', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_018_EN_SM.webp'),
  ('A4a-019', 'A4a', 19, 'Jynx', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_019_EN_SM.webp'),
  ('A4a-020', 'A4a', 20, 'Suicune ex', 'pokemon', 'water', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_020_EN_SM.webp'),
  ('A4a-021', 'A4a', 21, 'Feebas', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_021_EN_SM.webp'),
  ('A4a-022', 'A4a', 22, 'Milotic', 'pokemon', 'water', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_022_EN_SM.webp'),
  ('A4a-023', 'A4a', 23, 'Mantyke', 'pokemon', 'water', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_023_EN_SM.webp'),
  ('A4a-024', 'A4a', 24, 'Cryogonal', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_024_EN_SM.webp'),
  ('A4a-025', 'A4a', 25, 'Raikou ex', 'pokemon', 'lightning', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_025_EN_SM.webp'),
  ('A4a-026', 'A4a', 26, 'Tynamo', 'pokemon', 'lightning', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_026_EN_SM.webp'),
  ('A4a-027', 'A4a', 27, 'Eelektrik', 'pokemon', 'lightning', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_027_EN_SM.webp'),
  ('A4a-028', 'A4a', 28, 'Eelektross', 'pokemon', 'lightning', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_028_EN_SM.webp'),
  ('A4a-029', 'A4a', 29, 'Stunfisk', 'pokemon', 'lightning', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_029_EN_SM.webp'),
  ('A4a-030', 'A4a', 30, 'Yamper', 'pokemon', 'lightning', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_030_EN_SM.webp'),
  ('A4a-031', 'A4a', 31, 'Boltund', 'pokemon', 'lightning', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_031_EN_SM.webp'),
  ('A4a-032', 'A4a', 32, 'Misdreavus', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_032_EN_SM.webp'),
  ('A4a-033', 'A4a', 33, 'Mismagius', 'pokemon', 'psychic', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_033_EN_SM.webp'),
  ('A4a-034', 'A4a', 34, 'Galarian Corsola', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_034_EN_SM.webp'),
  ('A4a-035', 'A4a', 35, 'Galarian Cursola', 'pokemon', 'psychic', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_035_EN_SM.webp'),
  ('A4a-036', 'A4a', 36, 'Latias', 'pokemon', 'psychic', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_036_EN_SM.webp'),
  ('A4a-037', 'A4a', 37, 'Latios', 'pokemon', 'psychic', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_037_EN_SM.webp'),
  ('A4a-038', 'A4a', 38, 'Frillish', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_038_EN_SM.webp'),
  ('A4a-039', 'A4a', 39, 'Jellicent', 'pokemon', 'psychic', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_039_EN_SM.webp'),
  ('A4a-040', 'A4a', 40, 'Diglett', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_040_EN_SM.webp'),
  ('A4a-041', 'A4a', 41, 'Dugtrio', 'pokemon', 'fighting', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_041_EN_SM.webp'),
  ('A4a-042', 'A4a', 42, 'Poliwrath ex', 'pokemon', 'fighting', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_042_EN_SM.webp'),
  ('A4a-043', 'A4a', 43, 'Phanpy', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_043_EN_SM.webp'),
  ('A4a-044', 'A4a', 44, 'Donphan', 'pokemon', 'fighting', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_044_EN_SM.webp'),
  ('A4a-045', 'A4a', 45, 'Relicanth', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_045_EN_SM.webp'),
  ('A4a-046', 'A4a', 46, 'Dwebble', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_046_EN_SM.webp'),
  ('A4a-047', 'A4a', 47, 'Crustle', 'pokemon', 'fighting', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_047_EN_SM.webp'),
  ('A4a-048', 'A4a', 48, 'Seviper', 'pokemon', 'darkness', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_048_EN_SM.webp'),
  ('A4a-049', 'A4a', 49, 'Zorua', 'pokemon', 'darkness', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_049_EN_SM.webp'),
  ('A4a-050', 'A4a', 50, 'Zoroark', 'pokemon', 'darkness', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_050_EN_SM.webp'),
  ('A4a-051', 'A4a', 51, 'Inkay', 'pokemon', 'darkness', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_051_EN_SM.webp'),
  ('A4a-052', 'A4a', 52, 'Malamar', 'pokemon', 'darkness', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_052_EN_SM.webp'),
  ('A4a-053', 'A4a', 53, 'Skrelp', 'pokemon', 'darkness', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_053_EN_SM.webp'),
  ('A4a-054', 'A4a', 54, 'Dragalge', 'pokemon', 'darkness', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_054_EN_SM.webp'),
  ('A4a-055', 'A4a', 55, 'Altaria', 'pokemon', 'dragon', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_055_EN_SM.webp'),
  ('A4a-056', 'A4a', 56, 'Farfetch''d', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_056_EN_SM.webp'),
  ('A4a-057', 'A4a', 57, 'Lickitung', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_057_EN_SM.webp'),
  ('A4a-058', 'A4a', 58, 'Lickilicky', 'pokemon', 'colorless', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_058_EN_SM.webp'),
  ('A4a-059', 'A4a', 59, 'Igglybuff', 'pokemon', 'colorless', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_059_EN_SM.webp'),
  ('A4a-060', 'A4a', 60, 'Teddiursa', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_060_EN_SM.webp'),
  ('A4a-061', 'A4a', 61, 'Ursaring', 'pokemon', 'colorless', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_061_EN_SM.webp'),
  ('A4a-062', 'A4a', 62, 'Miltank', 'pokemon', 'colorless', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_062_EN_SM.webp'),
  ('A4a-063', 'A4a', 63, 'Azurill', 'pokemon', 'colorless', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_063_EN_SM.webp'),
  ('A4a-064', 'A4a', 64, 'Swablu', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_064_EN_SM.webp'),
  ('A4a-065', 'A4a', 65, 'Zangoose', 'pokemon', 'colorless', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_065_EN_SM.webp'),
  ('A4a-066', 'A4a', 66, 'Fletchling', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_066_EN_SM.webp'),
  ('A4a-067', 'A4a', 67, 'Inflatable Boat', 'trainer', null, 'pokemon_tool', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_067_EN_SM.webp'),
  ('A4a-068', 'A4a', 68, 'Memory Light', 'trainer', null, 'pokemon_tool', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_068_EN_SM.webp'),
  ('A4a-069', 'A4a', 69, 'Whitney', 'trainer', null, 'supporter', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_069_EN_SM.webp'),
  ('A4a-070', 'A4a', 70, 'Traveling Merchant', 'trainer', null, 'supporter', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_070_EN_SM.webp'),
  ('A4a-071', 'A4a', 71, 'Morty', 'trainer', null, 'supporter', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_071_EN_SM.webp')
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
  ('A4a-072', 'A4a', 72, 'Milotic', 'pokemon', 'water', null, 'star_1', 'A4a-022', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_072_EN_SM.webp'),
  ('A4a-073', 'A4a', 73, 'Stunfisk', 'pokemon', 'lightning', null, 'star_1', 'A4a-029', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_073_EN_SM.webp'),
  ('A4a-074', 'A4a', 74, 'Yamper', 'pokemon', 'lightning', null, 'star_1', 'A4a-030', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_074_EN_SM.webp'),
  ('A4a-075', 'A4a', 75, 'Latios', 'pokemon', 'psychic', null, 'star_1', 'A4a-037', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_075_EN_SM.webp'),
  ('A4a-076', 'A4a', 76, 'Phanpy', 'pokemon', 'fighting', null, 'star_1', 'A4a-043', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_076_EN_SM.webp'),
  ('A4a-077', 'A4a', 77, 'Azurill', 'pokemon', 'colorless', null, 'star_1', 'A4a-063', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_077_EN_SM.webp'),
  ('A4a-078', 'A4a', 78, 'Jumpluff ex', 'pokemon', 'grass', null, 'star_2', 'A4a-003', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_078_EN_SM.webp'),
  ('A4a-079', 'A4a', 79, 'Entei ex', 'pokemon', 'fire', null, 'star_2', 'A4a-010', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_079_EN_SM.webp'),
  ('A4a-080', 'A4a', 80, 'Suicune ex', 'pokemon', 'water', null, 'star_2', 'A4a-020', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_080_EN_SM.webp'),
  ('A4a-081', 'A4a', 81, 'Raikou ex', 'pokemon', 'lightning', null, 'star_2', 'A4a-025', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_081_EN_SM.webp'),
  ('A4a-082', 'A4a', 82, 'Poliwrath ex', 'pokemon', 'fighting', null, 'star_2', 'A4a-042', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_082_EN_SM.webp'),
  ('A4a-083', 'A4a', 83, 'Whitney', 'trainer', null, 'supporter', 'star_2', 'A4a-069', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_083_EN_SM.webp'),
  ('A4a-084', 'A4a', 84, 'Traveling Merchant', 'trainer', null, 'supporter', 'star_2', 'A4a-070', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_084_EN_SM.webp'),
  ('A4a-085', 'A4a', 85, 'Morty', 'trainer', null, 'supporter', 'star_2', 'A4a-071', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_085_EN_SM.webp'),
  ('A4a-086', 'A4a', 86, 'Jumpluff ex', 'pokemon', 'grass', null, 'star_2', 'A4a-003', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_086_EN_SM.webp'),
  ('A4a-087', 'A4a', 87, 'Entei ex', 'pokemon', 'fire', null, 'star_2', 'A4a-010', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_087_EN_SM.webp'),
  ('A4a-088', 'A4a', 88, 'Raikou ex', 'pokemon', 'lightning', null, 'star_2', 'A4a-025', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_088_EN_SM.webp'),
  ('A4a-089', 'A4a', 89, 'Poliwrath ex', 'pokemon', 'fighting', null, 'star_2', 'A4a-042', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_089_EN_SM.webp'),
  ('A4a-090', 'A4a', 90, 'Suicune ex', 'pokemon', 'water', null, 'star_3', 'A4a-020', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_090_EN_SM.webp'),
  ('A4a-091', 'A4a', 91, 'Chimchar', 'pokemon', 'fire', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_091_EN_SM.webp'),
  ('A4a-092', 'A4a', 92, 'Monferno', 'pokemon', 'fire', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_092_EN_SM.webp'),
  ('A4a-093', 'A4a', 93, 'Psyduck', 'pokemon', 'water', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_093_EN_SM.webp'),
  ('A4a-094', 'A4a', 94, 'Golduck', 'pokemon', 'water', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_094_EN_SM.webp'),
  ('A4a-095', 'A4a', 95, 'Krabby', 'pokemon', 'water', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_095_EN_SM.webp'),
  ('A4a-096', 'A4a', 96, 'Kingler', 'pokemon', 'water', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_096_EN_SM.webp'),
  ('A4a-097', 'A4a', 97, 'Pyukumuku', 'pokemon', 'water', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_097_EN_SM.webp'),
  ('A4a-098', 'A4a', 98, 'Gible', 'pokemon', 'fighting', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_098_EN_SM.webp'),
  ('A4a-099', 'A4a', 99, 'Gabite', 'pokemon', 'fighting', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_099_EN_SM.webp'),
  ('A4a-100', 'A4a', 100, 'Paldean Wooper', 'pokemon', 'darkness', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_100_EN_SM.webp'),
  ('A4a-101', 'A4a', 101, 'Infernape ex', 'pokemon', 'fire', null, 'star_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_101_EN_SM.webp'),
  ('A4a-102', 'A4a', 102, 'Mew ex', 'pokemon', 'psychic', null, 'star_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_102_EN_SM.webp'),
  ('A4a-103', 'A4a', 103, 'Garchomp ex', 'pokemon', 'fighting', null, 'star_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_103_EN_SM.webp'),
  ('A4a-104', 'A4a', 104, 'Paldean Clodsire ex', 'pokemon', 'darkness', null, 'star_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_104_EN_SM.webp'),
  ('A4a-105', 'A4a', 105, 'Mantyke', 'pokemon', 'water', null, 'crown', 'A4a-023', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A4a/A4a_105_EN_SM.webp')
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

-- Expected result: 105 cards, numbered 1 through 105.
select
  count(*) as card_count,
  min(collector_number) as first_number,
  max(collector_number) as last_number
from public.cards
where set_id = 'A4a';
