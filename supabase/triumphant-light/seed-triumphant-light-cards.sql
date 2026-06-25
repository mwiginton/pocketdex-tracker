-- Triumphant Light (A2a): 75 main-set cards and 21 secret cards.
-- Source checked 2026-06-24: https://pocket.limitlesstcg.com/cards/A2a
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
  ('A2a-001', 'A2a', 1, 'Heracross', 'pokemon', 'grass', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_001_EN_SM.webp'),
  ('A2a-002', 'A2a', 2, 'Burmy', 'pokemon', 'grass', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_002_EN_SM.webp'),
  ('A2a-003', 'A2a', 3, 'Mothim', 'pokemon', 'grass', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_003_EN_SM.webp'),
  ('A2a-004', 'A2a', 4, 'Combee', 'pokemon', 'grass', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_004_EN_SM.webp'),
  ('A2a-005', 'A2a', 5, 'Vespiquen', 'pokemon', 'grass', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_005_EN_SM.webp'),
  ('A2a-006', 'A2a', 6, 'Cherubi', 'pokemon', 'grass', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_006_EN_SM.webp'),
  ('A2a-007', 'A2a', 7, 'Cherrim', 'pokemon', 'grass', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_007_EN_SM.webp'),
  ('A2a-008', 'A2a', 8, 'Cherrim', 'pokemon', 'grass', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_008_EN_SM.webp'),
  ('A2a-009', 'A2a', 9, 'Carnivine', 'pokemon', 'grass', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_009_EN_SM.webp'),
  ('A2a-010', 'A2a', 10, 'Leafeon ex', 'pokemon', 'grass', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_010_EN_SM.webp'),
  ('A2a-011', 'A2a', 11, 'Houndour', 'pokemon', 'fire', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_011_EN_SM.webp'),
  ('A2a-012', 'A2a', 12, 'Houndoom', 'pokemon', 'fire', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_012_EN_SM.webp'),
  ('A2a-013', 'A2a', 13, 'Heatran', 'pokemon', 'fire', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_013_EN_SM.webp'),
  ('A2a-014', 'A2a', 14, 'Marill', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_014_EN_SM.webp'),
  ('A2a-015', 'A2a', 15, 'Azumarill', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_015_EN_SM.webp'),
  ('A2a-016', 'A2a', 16, 'Barboach', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_016_EN_SM.webp'),
  ('A2a-017', 'A2a', 17, 'Whiscash', 'pokemon', 'water', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_017_EN_SM.webp'),
  ('A2a-018', 'A2a', 18, 'Snorunt', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_018_EN_SM.webp'),
  ('A2a-019', 'A2a', 19, 'Froslass', 'pokemon', 'water', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_019_EN_SM.webp'),
  ('A2a-020', 'A2a', 20, 'Snover', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_020_EN_SM.webp'),
  ('A2a-021', 'A2a', 21, 'Abomasnow', 'pokemon', 'water', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_021_EN_SM.webp'),
  ('A2a-022', 'A2a', 22, 'Glaceon ex', 'pokemon', 'water', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_022_EN_SM.webp'),
  ('A2a-023', 'A2a', 23, 'Origin Forme Palkia', 'pokemon', 'water', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_023_EN_SM.webp'),
  ('A2a-024', 'A2a', 24, 'Phione', 'pokemon', 'water', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_024_EN_SM.webp'),
  ('A2a-025', 'A2a', 25, 'Pikachu', 'pokemon', 'lightning', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_025_EN_SM.webp'),
  ('A2a-026', 'A2a', 26, 'Raichu', 'pokemon', 'lightning', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_026_EN_SM.webp'),
  ('A2a-027', 'A2a', 27, 'Electrike', 'pokemon', 'lightning', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_027_EN_SM.webp'),
  ('A2a-028', 'A2a', 28, 'Manectric', 'pokemon', 'lightning', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_028_EN_SM.webp'),
  ('A2a-029', 'A2a', 29, 'Clefairy', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_029_EN_SM.webp'),
  ('A2a-030', 'A2a', 30, 'Clefable', 'pokemon', 'psychic', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_030_EN_SM.webp'),
  ('A2a-031', 'A2a', 31, 'Gastly', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_031_EN_SM.webp'),
  ('A2a-032', 'A2a', 32, 'Haunter', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_032_EN_SM.webp'),
  ('A2a-033', 'A2a', 33, 'Gengar', 'pokemon', 'psychic', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_033_EN_SM.webp'),
  ('A2a-034', 'A2a', 34, 'Unown', 'pokemon', 'psychic', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_034_EN_SM.webp'),
  ('A2a-035', 'A2a', 35, 'Rotom', 'pokemon', 'psychic', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_035_EN_SM.webp'),
  ('A2a-036', 'A2a', 36, 'Sudowoodo', 'pokemon', 'fighting', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_036_EN_SM.webp'),
  ('A2a-037', 'A2a', 37, 'Phanpy', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_037_EN_SM.webp'),
  ('A2a-038', 'A2a', 38, 'Donphan', 'pokemon', 'fighting', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_038_EN_SM.webp'),
  ('A2a-039', 'A2a', 39, 'Larvitar', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_039_EN_SM.webp'),
  ('A2a-040', 'A2a', 40, 'Pupitar', 'pokemon', 'fighting', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_040_EN_SM.webp'),
  ('A2a-041', 'A2a', 41, 'Tyranitar', 'pokemon', 'fighting', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_041_EN_SM.webp'),
  ('A2a-042', 'A2a', 42, 'Nosepass', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_042_EN_SM.webp'),
  ('A2a-043', 'A2a', 43, 'Meditite', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_043_EN_SM.webp'),
  ('A2a-044', 'A2a', 44, 'Medicham', 'pokemon', 'fighting', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_044_EN_SM.webp'),
  ('A2a-045', 'A2a', 45, 'Gible', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_045_EN_SM.webp'),
  ('A2a-046', 'A2a', 46, 'Gabite', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_046_EN_SM.webp'),
  ('A2a-047', 'A2a', 47, 'Garchomp ex', 'pokemon', 'fighting', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_047_EN_SM.webp'),
  ('A2a-048', 'A2a', 48, 'Zubat', 'pokemon', 'darkness', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_048_EN_SM.webp'),
  ('A2a-049', 'A2a', 49, 'Golbat', 'pokemon', 'darkness', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_049_EN_SM.webp'),
  ('A2a-050', 'A2a', 50, 'Crobat', 'pokemon', 'darkness', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_050_EN_SM.webp'),
  ('A2a-051', 'A2a', 51, 'Croagunk', 'pokemon', 'darkness', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_051_EN_SM.webp'),
  ('A2a-052', 'A2a', 52, 'Toxicroak', 'pokemon', 'darkness', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_052_EN_SM.webp'),
  ('A2a-053', 'A2a', 53, 'Magnemite', 'pokemon', 'metal', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_053_EN_SM.webp'),
  ('A2a-054', 'A2a', 54, 'Magneton', 'pokemon', 'metal', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_054_EN_SM.webp'),
  ('A2a-055', 'A2a', 55, 'Magnezone', 'pokemon', 'metal', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_055_EN_SM.webp'),
  ('A2a-056', 'A2a', 56, 'Mawile', 'pokemon', 'metal', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_056_EN_SM.webp'),
  ('A2a-057', 'A2a', 57, 'Probopass ex', 'pokemon', 'metal', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_057_EN_SM.webp'),
  ('A2a-058', 'A2a', 58, 'Bronzor', 'pokemon', 'metal', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_058_EN_SM.webp'),
  ('A2a-059', 'A2a', 59, 'Bronzong', 'pokemon', 'metal', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_059_EN_SM.webp'),
  ('A2a-060', 'A2a', 60, 'Origin Forme Dialga', 'pokemon', 'metal', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_060_EN_SM.webp'),
  ('A2a-061', 'A2a', 61, 'Giratina', 'pokemon', 'dragon', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_061_EN_SM.webp'),
  ('A2a-062', 'A2a', 62, 'Eevee', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_062_EN_SM.webp'),
  ('A2a-063', 'A2a', 63, 'Snorlax', 'pokemon', 'colorless', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_063_EN_SM.webp'),
  ('A2a-064', 'A2a', 64, 'Hoothoot', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_064_EN_SM.webp'),
  ('A2a-065', 'A2a', 65, 'Noctowl', 'pokemon', 'colorless', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_065_EN_SM.webp'),
  ('A2a-066', 'A2a', 66, 'Starly', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_066_EN_SM.webp'),
  ('A2a-067', 'A2a', 67, 'Staravia', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_067_EN_SM.webp'),
  ('A2a-068', 'A2a', 68, 'Staraptor', 'pokemon', 'colorless', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_068_EN_SM.webp'),
  ('A2a-069', 'A2a', 69, 'Shaymin', 'pokemon', 'colorless', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_069_EN_SM.webp'),
  ('A2a-070', 'A2a', 70, 'Arceus', 'pokemon', 'colorless', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_070_EN_SM.webp'),
  ('A2a-071', 'A2a', 71, 'Arceus ex', 'pokemon', 'colorless', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_071_EN_SM.webp'),
  ('A2a-072', 'A2a', 72, 'Irida', 'trainer', null, 'supporter', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_072_EN_SM.webp'),
  ('A2a-073', 'A2a', 73, 'Celestic Town Elder', 'trainer', null, 'supporter', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_073_EN_SM.webp'),
  ('A2a-074', 'A2a', 74, 'Barry', 'trainer', null, 'supporter', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_074_EN_SM.webp'),
  ('A2a-075', 'A2a', 75, 'Adaman', 'trainer', null, 'supporter', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_075_EN_SM.webp')
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
  ('A2a-076', 'A2a', 76, 'Houndoom', 'pokemon', 'fire', null, 'star_1', 'A2a-012', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_076_EN_SM.webp'),
  ('A2a-077', 'A2a', 77, 'Marill', 'pokemon', 'water', null, 'star_1', 'A2a-014', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_077_EN_SM.webp'),
  ('A2a-078', 'A2a', 78, 'Unown', 'pokemon', 'psychic', null, 'star_1', 'A2a-034', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_078_EN_SM.webp'),
  ('A2a-079', 'A2a', 79, 'Sudowoodo', 'pokemon', 'fighting', null, 'star_1', 'A2a-036', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_079_EN_SM.webp'),
  ('A2a-080', 'A2a', 80, 'Magnemite', 'pokemon', 'metal', null, 'star_1', 'A2a-053', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_080_EN_SM.webp'),
  ('A2a-081', 'A2a', 81, 'Shaymin', 'pokemon', 'colorless', null, 'star_1', 'A2a-069', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_081_EN_SM.webp'),
  ('A2a-082', 'A2a', 82, 'Leafeon ex', 'pokemon', 'grass', null, 'star_2', 'A2a-010', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_082_EN_SM.webp'),
  ('A2a-083', 'A2a', 83, 'Glaceon ex', 'pokemon', 'water', null, 'star_2', 'A2a-022', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_083_EN_SM.webp'),
  ('A2a-084', 'A2a', 84, 'Garchomp ex', 'pokemon', 'fighting', null, 'star_2', 'A2a-047', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_084_EN_SM.webp'),
  ('A2a-085', 'A2a', 85, 'Probopass ex', 'pokemon', 'metal', null, 'star_2', 'A2a-057', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_085_EN_SM.webp'),
  ('A2a-086', 'A2a', 86, 'Arceus ex', 'pokemon', 'colorless', null, 'star_2', 'A2a-071', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_086_EN_SM.webp'),
  ('A2a-087', 'A2a', 87, 'Irida', 'trainer', null, 'supporter', 'star_2', 'A2a-072', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_087_EN_SM.webp'),
  ('A2a-088', 'A2a', 88, 'Celestic Town Elder', 'trainer', null, 'supporter', 'star_2', 'A2a-073', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_088_EN_SM.webp'),
  ('A2a-089', 'A2a', 89, 'Barry', 'trainer', null, 'supporter', 'star_2', 'A2a-074', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_089_EN_SM.webp'),
  ('A2a-090', 'A2a', 90, 'Adaman', 'trainer', null, 'supporter', 'star_2', 'A2a-075', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_090_EN_SM.webp'),
  ('A2a-091', 'A2a', 91, 'Leafeon ex', 'pokemon', 'grass', null, 'star_2', 'A2a-010', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_091_EN_SM.webp'),
  ('A2a-092', 'A2a', 92, 'Glaceon ex', 'pokemon', 'water', null, 'star_2', 'A2a-022', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_092_EN_SM.webp'),
  ('A2a-093', 'A2a', 93, 'Garchomp ex', 'pokemon', 'fighting', null, 'star_2', 'A2a-047', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_093_EN_SM.webp'),
  ('A2a-094', 'A2a', 94, 'Probopass ex', 'pokemon', 'metal', null, 'star_2', 'A2a-057', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_094_EN_SM.webp'),
  ('A2a-095', 'A2a', 95, 'Arceus ex', 'pokemon', 'colorless', null, 'star_3', 'A2a-071', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_095_EN_SM.webp'),
  ('A2a-096', 'A2a', 96, 'Arceus ex', 'pokemon', 'colorless', null, 'crown', 'A2a-071', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2a/A2a_096_EN_SM.webp')
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

-- Expected result: 96 cards, numbered 1 through 96.
select
  count(*) as card_count,
  min(collector_number) as first_number,
  max(collector_number) as last_number
from public.cards
where set_id = 'A2a';
