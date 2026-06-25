-- Crimson Blaze (B1a): 69 main-set cards and 34 secret cards.
-- Source checked 2026-06-25: https://pocket.limitlesstcg.com/cards/B1a?display=list&show=all
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
  ('B1a-001', 'B1a', 1, 'Bulbasaur', 'pokemon', 'grass', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_001_EN_SM.webp'),
  ('B1a-002', 'B1a', 2, 'Ivysaur', 'pokemon', 'grass', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_002_EN_SM.webp'),
  ('B1a-003', 'B1a', 3, 'Venusaur', 'pokemon', 'grass', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_003_EN_SM.webp'),
  ('B1a-004', 'B1a', 4, 'Mega Venusaur ex', 'pokemon', 'grass', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_004_EN_SM.webp'),
  ('B1a-005', 'B1a', 5, 'Spinarak', 'pokemon', 'grass', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_005_EN_SM.webp'),
  ('B1a-006', 'B1a', 6, 'Ariados', 'pokemon', 'grass', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_006_EN_SM.webp'),
  ('B1a-007', 'B1a', 7, 'Sunkern', 'pokemon', 'grass', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_007_EN_SM.webp'),
  ('B1a-008', 'B1a', 8, 'Sunflora', 'pokemon', 'grass', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_008_EN_SM.webp'),
  ('B1a-009', 'B1a', 9, 'Burmy', 'pokemon', 'grass', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_009_EN_SM.webp'),
  ('B1a-010', 'B1a', 10, 'Mothim', 'pokemon', 'grass', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_010_EN_SM.webp'),
  ('B1a-011', 'B1a', 11, 'Charmander', 'pokemon', 'fire', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_011_EN_SM.webp'),
  ('B1a-012', 'B1a', 12, 'Charmeleon', 'pokemon', 'fire', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_012_EN_SM.webp'),
  ('B1a-013', 'B1a', 13, 'Charizard', 'pokemon', 'fire', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_013_EN_SM.webp'),
  ('B1a-014', 'B1a', 14, 'Mega Charizard Y ex', 'pokemon', 'fire', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_014_EN_SM.webp'),
  ('B1a-015', 'B1a', 15, 'Houndour', 'pokemon', 'fire', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_015_EN_SM.webp'),
  ('B1a-016', 'B1a', 16, 'Houndoom', 'pokemon', 'fire', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_016_EN_SM.webp'),
  ('B1a-017', 'B1a', 17, 'Squirtle', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_017_EN_SM.webp'),
  ('B1a-018', 'B1a', 18, 'Wartortle', 'pokemon', 'water', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_018_EN_SM.webp'),
  ('B1a-019', 'B1a', 19, 'Blastoise', 'pokemon', 'water', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_019_EN_SM.webp'),
  ('B1a-020', 'B1a', 20, 'Mega Blastoise ex', 'pokemon', 'water', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_020_EN_SM.webp'),
  ('B1a-021', 'B1a', 21, 'Basculin', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_021_EN_SM.webp'),
  ('B1a-022', 'B1a', 22, 'Clauncher', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_022_EN_SM.webp'),
  ('B1a-023', 'B1a', 23, 'Clawitzer', 'pokemon', 'water', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_023_EN_SM.webp'),
  ('B1a-024', 'B1a', 24, 'Magnemite', 'pokemon', 'lightning', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_024_EN_SM.webp'),
  ('B1a-025', 'B1a', 25, 'Magneton', 'pokemon', 'lightning', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_025_EN_SM.webp'),
  ('B1a-026', 'B1a', 26, 'Magnezone', 'pokemon', 'lightning', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_026_EN_SM.webp'),
  ('B1a-027', 'B1a', 27, 'Emolga', 'pokemon', 'lightning', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_027_EN_SM.webp'),
  ('B1a-028', 'B1a', 28, 'Helioptile', 'pokemon', 'lightning', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_028_EN_SM.webp'),
  ('B1a-029', 'B1a', 29, 'Heliolisk', 'pokemon', 'lightning', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_029_EN_SM.webp'),
  ('B1a-030', 'B1a', 30, 'Misdreavus', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_030_EN_SM.webp'),
  ('B1a-031', 'B1a', 31, 'Mismagius', 'pokemon', 'psychic', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_031_EN_SM.webp'),
  ('B1a-032', 'B1a', 32, 'Solosis', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_032_EN_SM.webp'),
  ('B1a-033', 'B1a', 33, 'Duosion', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_033_EN_SM.webp'),
  ('B1a-034', 'B1a', 34, 'Reuniclus', 'pokemon', 'psychic', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_034_EN_SM.webp'),
  ('B1a-035', 'B1a', 35, 'Spritzee', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_035_EN_SM.webp'),
  ('B1a-036', 'B1a', 36, 'Aromatisse', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_036_EN_SM.webp'),
  ('B1a-037', 'B1a', 37, 'Xerneas', 'pokemon', 'psychic', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_037_EN_SM.webp'),
  ('B1a-038', 'B1a', 38, 'Onix', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_038_EN_SM.webp'),
  ('B1a-039', 'B1a', 39, 'Makuhita', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_039_EN_SM.webp'),
  ('B1a-040', 'B1a', 40, 'Hariyama', 'pokemon', 'fighting', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_040_EN_SM.webp'),
  ('B1a-041', 'B1a', 41, 'Nosepass', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_041_EN_SM.webp'),
  ('B1a-042', 'B1a', 42, 'Mega Lopunny ex', 'pokemon', 'fighting', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_042_EN_SM.webp'),
  ('B1a-043', 'B1a', 43, 'Mienfoo', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_043_EN_SM.webp'),
  ('B1a-044', 'B1a', 44, 'Mienshao', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_044_EN_SM.webp'),
  ('B1a-045', 'B1a', 45, 'Grimer', 'pokemon', 'darkness', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_045_EN_SM.webp'),
  ('B1a-046', 'B1a', 46, 'Muk', 'pokemon', 'darkness', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_046_EN_SM.webp'),
  ('B1a-047', 'B1a', 47, 'Purrloin', 'pokemon', 'darkness', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_047_EN_SM.webp'),
  ('B1a-048', 'B1a', 48, 'Liepard', 'pokemon', 'darkness', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_048_EN_SM.webp'),
  ('B1a-049', 'B1a', 49, 'Trubbish', 'pokemon', 'darkness', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_049_EN_SM.webp'),
  ('B1a-050', 'B1a', 50, 'Garbodor', 'pokemon', 'darkness', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_050_EN_SM.webp'),
  ('B1a-051', 'B1a', 51, 'Steelix', 'pokemon', 'metal', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_051_EN_SM.webp'),
  ('B1a-052', 'B1a', 52, 'Mega Steelix ex', 'pokemon', 'metal', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_052_EN_SM.webp'),
  ('B1a-053', 'B1a', 53, 'Probopass', 'pokemon', 'metal', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_053_EN_SM.webp'),
  ('B1a-054', 'B1a', 54, 'Genesect', 'pokemon', 'metal', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_054_EN_SM.webp'),
  ('B1a-055', 'B1a', 55, 'Ditto', 'pokemon', 'colorless', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_055_EN_SM.webp'),
  ('B1a-056', 'B1a', 56, 'Porygon', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_056_EN_SM.webp'),
  ('B1a-057', 'B1a', 57, 'Porygon2', 'pokemon', 'colorless', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_057_EN_SM.webp'),
  ('B1a-058', 'B1a', 58, 'Porygon-Z', 'pokemon', 'colorless', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_058_EN_SM.webp'),
  ('B1a-059', 'B1a', 59, 'Starly', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_059_EN_SM.webp'),
  ('B1a-060', 'B1a', 60, 'Staravia', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_060_EN_SM.webp'),
  ('B1a-061', 'B1a', 61, 'Staraptor', 'pokemon', 'colorless', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_061_EN_SM.webp'),
  ('B1a-062', 'B1a', 62, 'Buneary', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_062_EN_SM.webp'),
  ('B1a-063', 'B1a', 63, 'Lopunny', 'pokemon', 'colorless', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_063_EN_SM.webp'),
  ('B1a-064', 'B1a', 64, 'Bouffalant', 'pokemon', 'colorless', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_064_EN_SM.webp'),
  ('B1a-065', 'B1a', 65, 'Furfrou', 'pokemon', 'colorless', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_065_EN_SM.webp'),
  ('B1a-066', 'B1a', 66, 'Clemont''s Backpack', 'trainer', null, 'item', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_066_EN_SM.webp'),
  ('B1a-067', 'B1a', 67, 'Quick-Grow Extract', 'trainer', null, 'item', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_067_EN_SM.webp'),
  ('B1a-068', 'B1a', 68, 'Clemont', 'trainer', null, 'supporter', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_068_EN_SM.webp'),
  ('B1a-069', 'B1a', 69, 'Serena', 'trainer', null, 'supporter', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_069_EN_SM.webp')
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
  ('B1a-070', 'B1a', 70, 'Ariados', 'pokemon', 'grass', null, 'star_1', 'B1a-006', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_070_EN_SM.webp'),
  ('B1a-071', 'B1a', 71, 'Sunflora', 'pokemon', 'grass', null, 'star_1', 'B1a-008', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_071_EN_SM.webp'),
  ('B1a-072', 'B1a', 72, 'Reuniclus', 'pokemon', 'psychic', null, 'star_1', 'B1a-034', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_072_EN_SM.webp'),
  ('B1a-073', 'B1a', 73, 'Xerneas', 'pokemon', 'psychic', null, 'star_1', 'B1a-037', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_073_EN_SM.webp'),
  ('B1a-074', 'B1a', 74, 'Trubbish', 'pokemon', 'darkness', null, 'star_1', 'B1a-049', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_074_EN_SM.webp'),
  ('B1a-075', 'B1a', 75, 'Buneary', 'pokemon', 'colorless', null, 'star_1', 'B1a-062', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_075_EN_SM.webp'),
  ('B1a-076', 'B1a', 76, 'Mega Venusaur ex', 'pokemon', 'grass', null, 'star_2', 'B1a-004', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_076_EN_SM.webp'),
  ('B1a-077', 'B1a', 77, 'Mega Charizard Y ex', 'pokemon', 'fire', null, 'star_2', 'B1a-014', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_077_EN_SM.webp'),
  ('B1a-078', 'B1a', 78, 'Mega Blastoise ex', 'pokemon', 'water', null, 'star_2', 'B1a-020', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_078_EN_SM.webp'),
  ('B1a-079', 'B1a', 79, 'Mega Lopunny ex', 'pokemon', 'fighting', null, 'star_2', 'B1a-042', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_079_EN_SM.webp'),
  ('B1a-080', 'B1a', 80, 'Mega Steelix ex', 'pokemon', 'metal', null, 'star_2', 'B1a-052', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_080_EN_SM.webp'),
  ('B1a-081', 'B1a', 81, 'Clemont', 'trainer', null, 'supporter', 'star_2', 'B1a-068', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_081_EN_SM.webp'),
  ('B1a-082', 'B1a', 82, 'Serena', 'trainer', null, 'supporter', 'star_2', 'B1a-069', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_082_EN_SM.webp'),
  ('B1a-083', 'B1a', 83, 'Mega Venusaur ex', 'pokemon', 'grass', null, 'star_2', 'B1a-004', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_083_EN_SM.webp'),
  ('B1a-084', 'B1a', 84, 'Mega Blastoise ex', 'pokemon', 'water', null, 'star_2', 'B1a-020', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_084_EN_SM.webp'),
  ('B1a-085', 'B1a', 85, 'Mega Lopunny ex', 'pokemon', 'fighting', null, 'star_2', 'B1a-042', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_085_EN_SM.webp'),
  ('B1a-086', 'B1a', 86, 'Mega Steelix ex', 'pokemon', 'metal', null, 'star_2', 'B1a-052', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_086_EN_SM.webp'),
  ('B1a-087', 'B1a', 87, 'Mega Charizard Y ex', 'pokemon', 'fire', null, 'star_3', 'B1a-014', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_087_EN_SM.webp'),
  ('B1a-088', 'B1a', 88, 'Oddish', 'pokemon', 'grass', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_088_EN_SM.webp'),
  ('B1a-089', 'B1a', 89, 'Gloom', 'pokemon', 'grass', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_089_EN_SM.webp'),
  ('B1a-090', 'B1a', 90, 'Vileplume', 'pokemon', 'grass', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_090_EN_SM.webp'),
  ('B1a-091', 'B1a', 91, 'Charizard', 'pokemon', 'fire', null, 'star_1', 'B1a-013', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_091_EN_SM.webp'),
  ('B1a-092', 'B1a', 92, 'Shellder', 'pokemon', 'water', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_092_EN_SM.webp'),
  ('B1a-093', 'B1a', 93, 'Cloyster', 'pokemon', 'water', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_093_EN_SM.webp'),
  ('B1a-094', 'B1a', 94, 'Sandshrew', 'pokemon', 'fighting', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_094_EN_SM.webp'),
  ('B1a-095', 'B1a', 95, 'Sandslash', 'pokemon', 'fighting', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_095_EN_SM.webp'),
  ('B1a-096', 'B1a', 96, 'Type: Null', 'pokemon', 'colorless', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_096_EN_SM.webp'),
  ('B1a-097', 'B1a', 97, 'Silvally', 'pokemon', 'colorless', null, 'star_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_097_EN_SM.webp'),
  ('B1a-098', 'B1a', 98, 'Buzzwole ex', 'pokemon', 'grass', null, 'star_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_098_EN_SM.webp'),
  ('B1a-099', 'B1a', 99, 'Lunala ex', 'pokemon', 'psychic', null, 'star_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_099_EN_SM.webp'),
  ('B1a-100', 'B1a', 100, 'Guzzlord ex', 'pokemon', 'darkness', null, 'star_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_100_EN_SM.webp'),
  ('B1a-101', 'B1a', 101, 'Solgaleo ex', 'pokemon', 'metal', null, 'star_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_101_EN_SM.webp'),
  ('B1a-102', 'B1a', 102, 'Aegislash', 'pokemon', 'metal', null, 'crown', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_102_EN_SM.webp'),
  ('B1a-103', 'B1a', 103, 'Quick-Grow Extract', 'trainer', null, 'item', 'crown', 'B1a-067', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/B1a/B1a_103_EN_SM.webp')
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
where set_id = 'B1a';
