-- Extradimensional Crisis (A3a): 69 main-set cards and 34 secret cards.
-- Source checked 2026-06-24: https://pocket.limitlesstcg.com/cards/A3a?display=list&show=all
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
  ('A3a-001', 'A3a', 1, 'Petilil', 'pokemon', 'grass', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_001_EN_SM.webp'),
  ('A3a-002', 'A3a', 2, 'Lilligant', 'pokemon', 'grass', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_002_EN_SM.webp'),
  ('A3a-003', 'A3a', 3, 'Rowlet', 'pokemon', 'grass', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_003_EN_SM.webp'),
  ('A3a-004', 'A3a', 4, 'Dartrix', 'pokemon', 'grass', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_004_EN_SM.webp'),
  ('A3a-005', 'A3a', 5, 'Decidueye', 'pokemon', 'grass', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_005_EN_SM.webp'),
  ('A3a-006', 'A3a', 6, 'Buzzwole ex', 'pokemon', 'grass', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_006_EN_SM.webp'),
  ('A3a-007', 'A3a', 7, 'Pheromosa', 'pokemon', 'grass', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_007_EN_SM.webp'),
  ('A3a-008', 'A3a', 8, 'Kartana', 'pokemon', 'grass', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_008_EN_SM.webp'),
  ('A3a-009', 'A3a', 9, 'Blacephalon', 'pokemon', 'fire', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_009_EN_SM.webp'),
  ('A3a-010', 'A3a', 10, 'Mantine', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_010_EN_SM.webp'),
  ('A3a-011', 'A3a', 11, 'Carvanha', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_011_EN_SM.webp'),
  ('A3a-012', 'A3a', 12, 'Sharpedo', 'pokemon', 'water', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_012_EN_SM.webp'),
  ('A3a-013', 'A3a', 13, 'Shinx', 'pokemon', 'lightning', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_013_EN_SM.webp'),
  ('A3a-014', 'A3a', 14, 'Luxio', 'pokemon', 'lightning', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_014_EN_SM.webp'),
  ('A3a-015', 'A3a', 15, 'Luxray', 'pokemon', 'lightning', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_015_EN_SM.webp'),
  ('A3a-016', 'A3a', 16, 'Blitzle', 'pokemon', 'lightning', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_016_EN_SM.webp'),
  ('A3a-017', 'A3a', 17, 'Zebstrika', 'pokemon', 'lightning', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_017_EN_SM.webp'),
  ('A3a-018', 'A3a', 18, 'Emolga', 'pokemon', 'lightning', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_018_EN_SM.webp'),
  ('A3a-019', 'A3a', 19, 'Tapu Koko ex', 'pokemon', 'lightning', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_019_EN_SM.webp'),
  ('A3a-020', 'A3a', 20, 'Xurkitree', 'pokemon', 'lightning', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_020_EN_SM.webp'),
  ('A3a-021', 'A3a', 21, 'Zeraora', 'pokemon', 'lightning', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_021_EN_SM.webp'),
  ('A3a-022', 'A3a', 22, 'Clefairy', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_022_EN_SM.webp'),
  ('A3a-023', 'A3a', 23, 'Clefable', 'pokemon', 'psychic', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_023_EN_SM.webp'),
  ('A3a-024', 'A3a', 24, 'Phantump', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_024_EN_SM.webp'),
  ('A3a-025', 'A3a', 25, 'Trevenant', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_025_EN_SM.webp'),
  ('A3a-026', 'A3a', 26, 'Morelull', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_026_EN_SM.webp'),
  ('A3a-027', 'A3a', 27, 'Shiinotic', 'pokemon', 'psychic', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_027_EN_SM.webp'),
  ('A3a-028', 'A3a', 28, 'Meditite', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_028_EN_SM.webp'),
  ('A3a-029', 'A3a', 29, 'Medicham', 'pokemon', 'fighting', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_029_EN_SM.webp'),
  ('A3a-030', 'A3a', 30, 'Baltoy', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_030_EN_SM.webp'),
  ('A3a-031', 'A3a', 31, 'Claydol', 'pokemon', 'fighting', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_031_EN_SM.webp'),
  ('A3a-032', 'A3a', 32, 'Rockruff', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_032_EN_SM.webp'),
  ('A3a-033', 'A3a', 33, 'Lycanroc ex', 'pokemon', 'fighting', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_033_EN_SM.webp'),
  ('A3a-034', 'A3a', 34, 'Passimian', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_034_EN_SM.webp'),
  ('A3a-035', 'A3a', 35, 'Sandygast', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_035_EN_SM.webp'),
  ('A3a-036', 'A3a', 36, 'Palossand', 'pokemon', 'fighting', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_036_EN_SM.webp'),
  ('A3a-037', 'A3a', 37, 'Alolan Meowth', 'pokemon', 'darkness', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_037_EN_SM.webp'),
  ('A3a-038', 'A3a', 38, 'Alolan Persian', 'pokemon', 'darkness', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_038_EN_SM.webp'),
  ('A3a-039', 'A3a', 39, 'Sandile', 'pokemon', 'darkness', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_039_EN_SM.webp'),
  ('A3a-040', 'A3a', 40, 'Krokorok', 'pokemon', 'darkness', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_040_EN_SM.webp'),
  ('A3a-041', 'A3a', 41, 'Krookodile', 'pokemon', 'darkness', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_041_EN_SM.webp'),
  ('A3a-042', 'A3a', 42, 'Nihilego', 'pokemon', 'darkness', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_042_EN_SM.webp'),
  ('A3a-043', 'A3a', 43, 'Guzzlord ex', 'pokemon', 'darkness', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_043_EN_SM.webp'),
  ('A3a-044', 'A3a', 44, 'Poipole', 'pokemon', 'darkness', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_044_EN_SM.webp'),
  ('A3a-045', 'A3a', 45, 'Naganadel', 'pokemon', 'darkness', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_045_EN_SM.webp'),
  ('A3a-046', 'A3a', 46, 'Alolan Diglett', 'pokemon', 'metal', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_046_EN_SM.webp'),
  ('A3a-047', 'A3a', 47, 'Alolan Dugtrio ex', 'pokemon', 'metal', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_047_EN_SM.webp'),
  ('A3a-048', 'A3a', 48, 'Aron', 'pokemon', 'metal', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_048_EN_SM.webp'),
  ('A3a-049', 'A3a', 49, 'Lairon', 'pokemon', 'metal', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_049_EN_SM.webp'),
  ('A3a-050', 'A3a', 50, 'Aggron', 'pokemon', 'metal', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_050_EN_SM.webp'),
  ('A3a-051', 'A3a', 51, 'Ferroseed', 'pokemon', 'metal', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_051_EN_SM.webp'),
  ('A3a-052', 'A3a', 52, 'Ferrothorn', 'pokemon', 'metal', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_052_EN_SM.webp'),
  ('A3a-053', 'A3a', 53, 'Stakataka', 'pokemon', 'metal', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_053_EN_SM.webp'),
  ('A3a-054', 'A3a', 54, 'Lillipup', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_054_EN_SM.webp'),
  ('A3a-055', 'A3a', 55, 'Herdier', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_055_EN_SM.webp'),
  ('A3a-056', 'A3a', 56, 'Stoutland', 'pokemon', 'colorless', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_056_EN_SM.webp'),
  ('A3a-057', 'A3a', 57, 'Stufful', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_057_EN_SM.webp'),
  ('A3a-058', 'A3a', 58, 'Bewear', 'pokemon', 'colorless', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_058_EN_SM.webp'),
  ('A3a-059', 'A3a', 59, 'Oranguru', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_059_EN_SM.webp'),
  ('A3a-060', 'A3a', 60, 'Type: Null', 'pokemon', 'colorless', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_060_EN_SM.webp'),
  ('A3a-061', 'A3a', 61, 'Silvally', 'pokemon', 'colorless', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_061_EN_SM.webp'),
  ('A3a-062', 'A3a', 62, 'Celesteela', 'pokemon', 'colorless', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_062_EN_SM.webp'),
  ('A3a-063', 'A3a', 63, 'Beast Wall', 'trainer', null, 'item', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_063_EN_SM.webp'),
  ('A3a-064', 'A3a', 64, 'Repel', 'trainer', null, 'item', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_064_EN_SM.webp'),
  ('A3a-065', 'A3a', 65, 'Electrical Cord', 'trainer', null, 'pokemon_tool', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_065_EN_SM.webp'),
  ('A3a-066', 'A3a', 66, 'Beastite', 'trainer', null, 'pokemon_tool', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_066_EN_SM.webp'),
  ('A3a-067', 'A3a', 67, 'Gladion', 'trainer', null, 'supporter', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_067_EN_SM.webp'),
  ('A3a-068', 'A3a', 68, 'Looker', 'trainer', null, 'supporter', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_068_EN_SM.webp'),
  ('A3a-069', 'A3a', 69, 'Lusamine', 'trainer', null, 'supporter', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_069_EN_SM.webp')
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
  ('A3a-070', 'A3a', 70, 'Rowlet', 'pokemon', 'grass', null, 'star_1', 'A3a-003', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_070_EN_SM.webp'),
  ('A3a-071', 'A3a', 71, 'Pheromosa', 'pokemon', 'grass', null, 'star_1', 'A3a-007', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_071_EN_SM.webp'),
  ('A3a-072', 'A3a', 72, 'Blacephalon', 'pokemon', 'fire', null, 'star_1', 'A3a-009', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_072_EN_SM.webp'),
  ('A3a-073', 'A3a', 73, 'Alolan Meowth', 'pokemon', 'darkness', null, 'star_1', 'A3a-037', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_073_EN_SM.webp'),
  ('A3a-074', 'A3a', 74, 'Silvally', 'pokemon', 'colorless', null, 'star_1', 'A3a-061', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_074_EN_SM.webp'),
  ('A3a-075', 'A3a', 75, 'Celesteela', 'pokemon', 'colorless', null, 'star_1', 'A3a-062', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_075_EN_SM.webp'),
  ('A3a-076', 'A3a', 76, 'Buzzwole ex', 'pokemon', 'grass', null, 'star_2', 'A3a-006', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_076_EN_SM.webp'),
  ('A3a-077', 'A3a', 77, 'Tapu Koko ex', 'pokemon', 'lightning', null, 'star_2', 'A3a-019', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_077_EN_SM.webp'),
  ('A3a-078', 'A3a', 78, 'Lycanroc ex', 'pokemon', 'fighting', null, 'star_2', 'A3a-033', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_078_EN_SM.webp'),
  ('A3a-079', 'A3a', 79, 'Guzzlord ex', 'pokemon', 'darkness', null, 'star_2', 'A3a-043', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_079_EN_SM.webp'),
  ('A3a-080', 'A3a', 80, 'Alolan Dugtrio ex', 'pokemon', 'metal', null, 'star_2', 'A3a-047', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_080_EN_SM.webp'),
  ('A3a-081', 'A3a', 81, 'Gladion', 'trainer', null, 'supporter', 'star_2', 'A3a-067', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_081_EN_SM.webp'),
  ('A3a-082', 'A3a', 82, 'Looker', 'trainer', null, 'supporter', 'star_2', 'A3a-068', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_082_EN_SM.webp'),
  ('A3a-083', 'A3a', 83, 'Lusamine', 'trainer', null, 'supporter', 'star_2', 'A3a-069', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_083_EN_SM.webp'),
  ('A3a-084', 'A3a', 84, 'Tapu Koko ex', 'pokemon', 'lightning', null, 'star_2', 'A3a-019', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_084_EN_SM.webp'),
  ('A3a-085', 'A3a', 85, 'Lycanroc ex', 'pokemon', 'fighting', null, 'star_2', 'A3a-033', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_085_EN_SM.webp'),
  ('A3a-086', 'A3a', 86, 'Guzzlord ex', 'pokemon', 'darkness', null, 'star_2', 'A3a-043', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_086_EN_SM.webp'),
  ('A3a-087', 'A3a', 87, 'Alolan Dugtrio ex', 'pokemon', 'metal', null, 'star_2', 'A3a-047', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_087_EN_SM.webp'),
  ('A3a-088', 'A3a', 88, 'Buzzwole ex', 'pokemon', 'grass', null, 'star_3', 'A3a-006', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_088_EN_SM.webp'),
  ('A3a-089', 'A3a', 89, 'Growlithe', 'pokemon', 'fire', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_089_EN_SM.webp'),
  ('A3a-090', 'A3a', 90, 'Arcanine', 'pokemon', 'fire', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_090_EN_SM.webp'),
  ('A3a-091', 'A3a', 91, 'Froakie', 'pokemon', 'water', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_091_EN_SM.webp'),
  ('A3a-092', 'A3a', 92, 'Frogadier', 'pokemon', 'water', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_092_EN_SM.webp'),
  ('A3a-093', 'A3a', 93, 'Greninja', 'pokemon', 'water', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_093_EN_SM.webp'),
  ('A3a-094', 'A3a', 94, 'Jynx', 'pokemon', 'psychic', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_094_EN_SM.webp'),
  ('A3a-095', 'A3a', 95, 'Pidgey', 'pokemon', 'colorless', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_095_EN_SM.webp'),
  ('A3a-096', 'A3a', 96, 'Pidgeotto', 'pokemon', 'colorless', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_096_EN_SM.webp'),
  ('A3a-097', 'A3a', 97, 'Pidgeot', 'pokemon', 'colorless', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_097_EN_SM.webp'),
  ('A3a-098', 'A3a', 98, 'Aerodactyl', 'pokemon', 'colorless', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_098_EN_SM.webp'),
  ('A3a-099', 'A3a', 99, 'Celebi ex', 'pokemon', 'grass', null, 'star_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_099_EN_SM.webp'),
  ('A3a-100', 'A3a', 100, 'Arcanine ex', 'pokemon', 'fire', null, 'star_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_100_EN_SM.webp'),
  ('A3a-101', 'A3a', 101, 'Aerodactyl ex', 'pokemon', 'fighting', null, 'star_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_101_EN_SM.webp'),
  ('A3a-102', 'A3a', 102, 'Pidgeot ex', 'pokemon', 'colorless', null, 'star_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_102_EN_SM.webp'),
  ('A3a-103', 'A3a', 103, 'Nihilego', 'pokemon', 'darkness', null, 'crown', 'A3a-042', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A3a/A3a_103_EN_SM.webp')
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

-- Expected result: 103 cards, numbered 1 through 103.
select
  count(*) as card_count,
  min(collector_number) as first_number,
  max(collector_number) as last_number
from public.cards
where set_id = 'A3a';
