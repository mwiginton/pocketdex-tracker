-- Team Rocket's Ambition (B4a): 72 main-set cards and 38 secret cards.
-- Source checked 2026-08-29: https://pocket.limitlesstcg.com/cards/B4a?display=list&show=all
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
  ('B4a-001', 'B4a', 1, 'Volbeat', 'pokemon', 'grass', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_001_EN_SM.webp'),
  ('B4a-002', 'B4a', 2, 'Illumise', 'pokemon', 'grass', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_002_EN_SM.webp'),
  ('B4a-003', 'B4a', 3, 'Snivy', 'pokemon', 'grass', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_003_EN_SM.webp'),
  ('B4a-004', 'B4a', 4, 'Servine', 'pokemon', 'grass', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_004_EN_SM.webp'),
  ('B4a-005', 'B4a', 5, 'Serperior', 'pokemon', 'grass', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_005_EN_SM.webp'),
  ('B4a-006', 'B4a', 6, 'Team Rocket''s Magmar', 'pokemon', 'fire', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_006_EN_SM.webp'),
  ('B4a-007', 'B4a', 7, 'Team Rocket''s Moltres ex', 'pokemon', 'fire', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_007_EN_SM.webp'),
  ('B4a-008', 'B4a', 8, 'Team Rocket''s Houndour', 'pokemon', 'fire', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_008_EN_SM.webp'),
  ('B4a-009', 'B4a', 9, 'Team Rocket''s Houndoom', 'pokemon', 'fire', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_009_EN_SM.webp'),
  ('B4a-010', 'B4a', 10, 'Fennekin', 'pokemon', 'fire', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_010_EN_SM.webp'),
  ('B4a-011', 'B4a', 11, 'Braixen', 'pokemon', 'fire', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_011_EN_SM.webp'),
  ('B4a-012', 'B4a', 12, 'Delphox', 'pokemon', 'fire', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_012_EN_SM.webp'),
  ('B4a-013', 'B4a', 13, 'Team Rocket''s Lapras', 'pokemon', 'water', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_013_EN_SM.webp'),
  ('B4a-014', 'B4a', 14, 'Team Rocket''s Articuno ex', 'pokemon', 'water', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_014_EN_SM.webp'),
  ('B4a-015', 'B4a', 15, 'Wingull', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_015_EN_SM.webp'),
  ('B4a-016', 'B4a', 16, 'Pelipper', 'pokemon', 'water', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_016_EN_SM.webp'),
  ('B4a-017', 'B4a', 17, 'Hisuian Basculin', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_017_EN_SM.webp'),
  ('B4a-018', 'B4a', 18, 'Hisuian Basculegion', 'pokemon', 'water', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_018_EN_SM.webp'),
  ('B4a-019', 'B4a', 19, 'Team Rocket''s Voltorb', 'pokemon', 'lightning', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_019_EN_SM.webp'),
  ('B4a-020', 'B4a', 20, 'Team Rocket''s Electrode', 'pokemon', 'lightning', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_020_EN_SM.webp'),
  ('B4a-021', 'B4a', 21, 'Team Rocket''s Zapdos ex', 'pokemon', 'lightning', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_021_EN_SM.webp'),
  ('B4a-022', 'B4a', 22, 'Blitzle', 'pokemon', 'lightning', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_022_EN_SM.webp'),
  ('B4a-023', 'B4a', 23, 'Zebstrika', 'pokemon', 'lightning', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_023_EN_SM.webp'),
  ('B4a-024', 'B4a', 24, 'Team Rocket''s Pincurchin', 'pokemon', 'lightning', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_024_EN_SM.webp'),
  ('B4a-025', 'B4a', 25, 'Team Rocket''s Slowpoke', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_025_EN_SM.webp'),
  ('B4a-026', 'B4a', 26, 'Team Rocket''s Slowking ex', 'pokemon', 'psychic', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_026_EN_SM.webp'),
  ('B4a-027', 'B4a', 27, 'Team Rocket''s Drowzee', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_027_EN_SM.webp'),
  ('B4a-028', 'B4a', 28, 'Team Rocket''s Hypno', 'pokemon', 'psychic', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_028_EN_SM.webp'),
  ('B4a-029', 'B4a', 29, 'Team Rocket''s Mr. Mime', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_029_EN_SM.webp'),
  ('B4a-030', 'B4a', 30, 'Team Rocket''s Mewtwo', 'pokemon', 'psychic', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_030_EN_SM.webp'),
  ('B4a-031', 'B4a', 31, 'Espurr', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_031_EN_SM.webp'),
  ('B4a-032', 'B4a', 32, 'Meowstic', 'pokemon', 'psychic', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_032_EN_SM.webp'),
  ('B4a-033', 'B4a', 33, 'Oranguru', 'pokemon', 'psychic', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_033_EN_SM.webp'),
  ('B4a-034', 'B4a', 34, 'Gimmighoul', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_034_EN_SM.webp'),
  ('B4a-035', 'B4a', 35, 'Cubone', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_035_EN_SM.webp'),
  ('B4a-036', 'B4a', 36, 'Marowak', 'pokemon', 'fighting', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_036_EN_SM.webp'),
  ('B4a-037', 'B4a', 37, 'Landorus', 'pokemon', 'fighting', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_037_EN_SM.webp'),
  ('B4a-038', 'B4a', 38, 'Team Rocket''s Ekans', 'pokemon', 'darkness', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_038_EN_SM.webp'),
  ('B4a-039', 'B4a', 39, 'Team Rocket''s Arbok', 'pokemon', 'darkness', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_039_EN_SM.webp'),
  ('B4a-040', 'B4a', 40, 'Team Rocket''s Grimer', 'pokemon', 'darkness', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_040_EN_SM.webp'),
  ('B4a-041', 'B4a', 41, 'Team Rocket''s Muk', 'pokemon', 'darkness', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_041_EN_SM.webp'),
  ('B4a-042', 'B4a', 42, 'Team Rocket''s Koffing', 'pokemon', 'darkness', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_042_EN_SM.webp'),
  ('B4a-043', 'B4a', 43, 'Team Rocket''s Weezing ex', 'pokemon', 'darkness', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_043_EN_SM.webp'),
  ('B4a-044', 'B4a', 44, 'Team Rocket''s Sneasel', 'pokemon', 'darkness', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_044_EN_SM.webp'),
  ('B4a-045', 'B4a', 45, 'Togedemaru', 'pokemon', 'metal', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_045_EN_SM.webp'),
  ('B4a-046', 'B4a', 46, 'Cufant', 'pokemon', 'metal', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_046_EN_SM.webp'),
  ('B4a-047', 'B4a', 47, 'Copperajah', 'pokemon', 'metal', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_047_EN_SM.webp'),
  ('B4a-048', 'B4a', 48, 'Team Rocket''s Tinkatink', 'pokemon', 'metal', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_048_EN_SM.webp'),
  ('B4a-049', 'B4a', 49, 'Team Rocket''s Tinkatuff', 'pokemon', 'metal', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_049_EN_SM.webp'),
  ('B4a-050', 'B4a', 50, 'Team Rocket''s Tinkaton', 'pokemon', 'metal', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_050_EN_SM.webp'),
  ('B4a-051', 'B4a', 51, 'Gholdengo', 'pokemon', 'metal', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_051_EN_SM.webp'),
  ('B4a-052', 'B4a', 52, 'Gible', 'pokemon', 'dragon', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_052_EN_SM.webp'),
  ('B4a-053', 'B4a', 53, 'Gabite', 'pokemon', 'dragon', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_053_EN_SM.webp'),
  ('B4a-054', 'B4a', 54, 'Garchomp', 'pokemon', 'dragon', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_054_EN_SM.webp'),
  ('B4a-055', 'B4a', 55, 'Duraludon', 'pokemon', 'dragon', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_055_EN_SM.webp'),
  ('B4a-056', 'B4a', 56, 'Archaludon', 'pokemon', 'dragon', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_056_EN_SM.webp'),
  ('B4a-057', 'B4a', 57, 'Regidrago', 'pokemon', 'dragon', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_057_EN_SM.webp'),
  ('B4a-058', 'B4a', 58, 'Team Rocket''s Rattata', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_058_EN_SM.webp'),
  ('B4a-059', 'B4a', 59, 'Team Rocket''s Raticate ex', 'pokemon', 'colorless', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_059_EN_SM.webp'),
  ('B4a-060', 'B4a', 60, 'Team Rocket''s Meowth', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_060_EN_SM.webp'),
  ('B4a-061', 'B4a', 61, 'Team Rocket''s Persian', 'pokemon', 'colorless', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_061_EN_SM.webp'),
  ('B4a-062', 'B4a', 62, 'Team Rocket''s Kecleon', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_062_EN_SM.webp'),
  ('B4a-063', 'B4a', 63, 'Happiny', 'pokemon', 'colorless', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_063_EN_SM.webp'),
  ('B4a-064', 'B4a', 64, 'Furfrou', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_064_EN_SM.webp'),
  ('B4a-065', 'B4a', 65, 'Lechonk', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_065_EN_SM.webp'),
  ('B4a-066', 'B4a', 66, 'Oinkologne', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_066_EN_SM.webp'),
  ('B4a-067', 'B4a', 67, 'Team Rocket''s Thieving Machine', 'trainer', null, 'item', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_067_EN_SM.webp'),
  ('B4a-068', 'B4a', 68, 'Team Rocket''s Goo-zooka', 'trainer', null, 'item', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_068_EN_SM.webp'),
  ('B4a-069', 'B4a', 69, 'Team Rocket''s Researcher', 'trainer', null, 'supporter', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_069_EN_SM.webp'),
  ('B4a-070', 'B4a', 70, 'Team Rocket''s Master Plan', 'trainer', null, 'supporter', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_070_EN_SM.webp'),
  ('B4a-071', 'B4a', 71, 'Team Rocket''s Boss', 'trainer', null, 'supporter', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_071_EN_SM.webp'),
  ('B4a-072', 'B4a', 72, 'Arcade', 'trainer', null, 'stadium', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_072_EN_SM.webp')
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
  ('B4a-073', 'B4a', 73, 'Delphox', 'pokemon', 'fire', null, 'star_1', 'B4a-012', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_073_EN_SM.webp'),
  ('B4a-074', 'B4a', 74, 'Team Rocket''s Hypno', 'pokemon', 'psychic', null, 'star_1', 'B4a-028', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_074_EN_SM.webp'),
  ('B4a-075', 'B4a', 75, 'Team Rocket''s Tinkaton', 'pokemon', 'metal', null, 'star_1', 'B4a-050', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_075_EN_SM.webp'),
  ('B4a-076', 'B4a', 76, 'Team Rocket''s Kecleon', 'pokemon', 'colorless', null, 'star_1', 'B4a-062', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_076_EN_SM.webp'),
  ('B4a-077', 'B4a', 77, 'Happiny', 'pokemon', 'colorless', null, 'star_1', 'B4a-063', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_077_EN_SM.webp'),
  ('B4a-078', 'B4a', 78, 'Lechonk', 'pokemon', 'colorless', null, 'star_1', 'B4a-065', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_078_EN_SM.webp'),
  ('B4a-079', 'B4a', 79, 'Team Rocket''s Moltres ex', 'pokemon', 'fire', null, 'star_2', 'B4a-007', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_079_EN_SM.webp'),
  ('B4a-080', 'B4a', 80, 'Team Rocket''s Articuno ex', 'pokemon', 'water', null, 'star_2', 'B4a-014', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_080_EN_SM.webp'),
  ('B4a-081', 'B4a', 81, 'Team Rocket''s Zapdos ex', 'pokemon', 'lightning', null, 'star_2', 'B4a-021', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_081_EN_SM.webp'),
  ('B4a-082', 'B4a', 82, 'Team Rocket''s Slowking ex', 'pokemon', 'psychic', null, 'star_2', 'B4a-026', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_082_EN_SM.webp'),
  ('B4a-083', 'B4a', 83, 'Team Rocket''s Weezing ex', 'pokemon', 'darkness', null, 'star_2', 'B4a-043', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_083_EN_SM.webp'),
  ('B4a-084', 'B4a', 84, 'Team Rocket''s Raticate ex', 'pokemon', 'colorless', null, 'star_2', 'B4a-059', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_084_EN_SM.webp'),
  ('B4a-085', 'B4a', 85, 'Team Rocket''s Researcher', 'trainer', null, 'supporter', 'star_2', 'B4a-069', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_085_EN_SM.webp'),
  ('B4a-086', 'B4a', 86, 'Team Rocket''s Master Plan', 'trainer', null, 'supporter', 'star_2', 'B4a-070', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_086_EN_SM.webp'),
  ('B4a-087', 'B4a', 87, 'Team Rocket''s Boss', 'trainer', null, 'supporter', 'star_2', 'B4a-071', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_087_EN_SM.webp'),
  ('B4a-088', 'B4a', 88, 'Team Rocket''s Moltres ex', 'pokemon', 'fire', null, 'star_2', 'B4a-007', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_088_EN_SM.webp'),
  ('B4a-089', 'B4a', 89, 'Team Rocket''s Articuno ex', 'pokemon', 'water', null, 'star_2', 'B4a-014', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_089_EN_SM.webp'),
  ('B4a-090', 'B4a', 90, 'Team Rocket''s Zapdos ex', 'pokemon', 'lightning', null, 'star_2', 'B4a-021', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_090_EN_SM.webp'),
  ('B4a-091', 'B4a', 91, 'Team Rocket''s Slowking ex', 'pokemon', 'psychic', null, 'star_2', 'B4a-026', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_091_EN_SM.webp'),
  ('B4a-092', 'B4a', 92, 'Team Rocket''s Weezing ex', 'pokemon', 'darkness', null, 'star_2', 'B4a-043', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_092_EN_SM.webp'),
  ('B4a-093', 'B4a', 93, 'Team Rocket''s Raticate ex', 'pokemon', 'colorless', null, 'star_2', 'B4a-059', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_093_EN_SM.webp'),
  ('B4a-094', 'B4a', 94, 'Team Rocket''s Master Plan', 'trainer', null, 'supporter', 'star_3', 'B4a-070', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_094_EN_SM.webp'),
  ('B4a-095', 'B4a', 95, 'Vulpix', 'pokemon', 'fire', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_095_EN_SM.webp'),
  ('B4a-096', 'B4a', 96, 'Ninetales', 'pokemon', 'fire', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_096_EN_SM.webp'),
  ('B4a-097', 'B4a', 97, 'Goldeen', 'pokemon', 'water', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_097_EN_SM.webp'),
  ('B4a-098', 'B4a', 98, 'Seaking', 'pokemon', 'water', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_098_EN_SM.webp'),
  ('B4a-099', 'B4a', 99, 'Toxel', 'pokemon', 'lightning', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_099_EN_SM.webp'),
  ('B4a-100', 'B4a', 100, 'Sinistea', 'pokemon', 'psychic', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_100_EN_SM.webp'),
  ('B4a-101', 'B4a', 101, 'Polteageist', 'pokemon', 'psychic', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_101_EN_SM.webp'),
  ('B4a-102', 'B4a', 102, 'Mawile', 'pokemon', 'metal', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_102_EN_SM.webp'),
  ('B4a-103', 'B4a', 103, 'Taillow', 'pokemon', 'colorless', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_103_EN_SM.webp'),
  ('B4a-104', 'B4a', 104, 'Swellow', 'pokemon', 'colorless', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_104_EN_SM.webp'),
  ('B4a-105', 'B4a', 105, 'Mega Charizard Y ex', 'pokemon', 'fire', null, 'star_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_105_EN_SM.webp'),
  ('B4a-106', 'B4a', 106, 'Toxtricity ex', 'pokemon', 'lightning', null, 'star_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_106_EN_SM.webp'),
  ('B4a-107', 'B4a', 107, 'Mimikyu ex', 'pokemon', 'psychic', null, 'star_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_107_EN_SM.webp'),
  ('B4a-108', 'B4a', 108, 'Mega Mawile ex', 'pokemon', 'metal', null, 'star_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_108_EN_SM.webp'),
  ('B4a-109', 'B4a', 109, 'Gholdengo', 'pokemon', 'metal', null, 'crown', 'B4a-051', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_109_EN_SM.webp'),
  ('B4a-110', 'B4a', 110, 'Team Rocket''s Goo-zooka', 'trainer', null, 'item', 'crown', 'B4a-068', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B4a/B4a_110_EN_SM.webp')
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

-- Expected result: 110 cards, numbered 1 through 110.
select
  count(*) as card_count,
  min(collector_number) as first_number,
  max(collector_number) as last_number
from public.cards
where set_id = 'B4a';
