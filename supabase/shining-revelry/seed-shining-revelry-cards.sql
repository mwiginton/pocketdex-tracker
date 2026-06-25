-- Shining Revelry (A2b): 72 main-set cards and 39 secret cards.
-- Source checked 2026-06-24: https://pocket.limitlesstcg.com/cards/A2b
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
  ('A2b-001', 'A2b', 1, 'Weedle', 'pokemon', 'grass', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_001_EN_SM.webp'),
  ('A2b-002', 'A2b', 2, 'Kakuna', 'pokemon', 'grass', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_002_EN_SM.webp'),
  ('A2b-003', 'A2b', 3, 'Beedrill ex', 'pokemon', 'grass', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_003_EN_SM.webp'),
  ('A2b-004', 'A2b', 4, 'Pinsir', 'pokemon', 'grass', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_004_EN_SM.webp'),
  ('A2b-005', 'A2b', 5, 'Sprigatito', 'pokemon', 'grass', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_005_EN_SM.webp'),
  ('A2b-006', 'A2b', 6, 'Floragato', 'pokemon', 'grass', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_006_EN_SM.webp'),
  ('A2b-007', 'A2b', 7, 'Meowscarada', 'pokemon', 'grass', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_007_EN_SM.webp'),
  ('A2b-008', 'A2b', 8, 'Charmander', 'pokemon', 'fire', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_008_EN_SM.webp'),
  ('A2b-009', 'A2b', 9, 'Charmeleon', 'pokemon', 'fire', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_009_EN_SM.webp'),
  ('A2b-010', 'A2b', 10, 'Charizard ex', 'pokemon', 'fire', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_010_EN_SM.webp'),
  ('A2b-011', 'A2b', 11, 'Magmar', 'pokemon', 'fire', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_011_EN_SM.webp'),
  ('A2b-012', 'A2b', 12, 'Magmortar', 'pokemon', 'fire', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_012_EN_SM.webp'),
  ('A2b-013', 'A2b', 13, 'Paldean Tauros', 'pokemon', 'fire', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_013_EN_SM.webp'),
  ('A2b-014', 'A2b', 14, 'Tentacool', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_014_EN_SM.webp'),
  ('A2b-015', 'A2b', 15, 'Tentacruel', 'pokemon', 'water', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_015_EN_SM.webp'),
  ('A2b-016', 'A2b', 16, 'Buizel', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_016_EN_SM.webp'),
  ('A2b-017', 'A2b', 17, 'Floatzel', 'pokemon', 'water', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_017_EN_SM.webp'),
  ('A2b-018', 'A2b', 18, 'Wiglett', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_018_EN_SM.webp'),
  ('A2b-019', 'A2b', 19, 'Wugtrio ex', 'pokemon', 'water', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_019_EN_SM.webp'),
  ('A2b-020', 'A2b', 20, 'Dondozo', 'pokemon', 'water', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_020_EN_SM.webp'),
  ('A2b-021', 'A2b', 21, 'Tatsugiri', 'pokemon', 'water', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_021_EN_SM.webp'),
  ('A2b-022', 'A2b', 22, 'Pikachu ex', 'pokemon', 'lightning', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_022_EN_SM.webp'),
  ('A2b-023', 'A2b', 23, 'Voltorb', 'pokemon', 'lightning', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_023_EN_SM.webp'),
  ('A2b-024', 'A2b', 24, 'Electrode', 'pokemon', 'lightning', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_024_EN_SM.webp'),
  ('A2b-025', 'A2b', 25, 'Pachirisu', 'pokemon', 'lightning', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_025_EN_SM.webp'),
  ('A2b-026', 'A2b', 26, 'Pawmi', 'pokemon', 'lightning', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_026_EN_SM.webp'),
  ('A2b-027', 'A2b', 27, 'Pawmo', 'pokemon', 'lightning', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_027_EN_SM.webp'),
  ('A2b-028', 'A2b', 28, 'Pawmot', 'pokemon', 'lightning', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_028_EN_SM.webp'),
  ('A2b-029', 'A2b', 29, 'Abra', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_029_EN_SM.webp'),
  ('A2b-030', 'A2b', 30, 'Kadabra', 'pokemon', 'psychic', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_030_EN_SM.webp'),
  ('A2b-031', 'A2b', 31, 'Alakazam', 'pokemon', 'psychic', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_031_EN_SM.webp'),
  ('A2b-032', 'A2b', 32, 'Mr. Mime', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_032_EN_SM.webp'),
  ('A2b-033', 'A2b', 33, 'Drifloon', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_033_EN_SM.webp'),
  ('A2b-034', 'A2b', 34, 'Drifblim', 'pokemon', 'psychic', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_034_EN_SM.webp'),
  ('A2b-035', 'A2b', 35, 'Giratina ex', 'pokemon', 'psychic', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_035_EN_SM.webp'),
  ('A2b-036', 'A2b', 36, 'Gimmighoul', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_036_EN_SM.webp'),
  ('A2b-037', 'A2b', 37, 'Machop', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_037_EN_SM.webp'),
  ('A2b-038', 'A2b', 38, 'Machoke', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_038_EN_SM.webp'),
  ('A2b-039', 'A2b', 39, 'Machamp', 'pokemon', 'fighting', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_039_EN_SM.webp'),
  ('A2b-040', 'A2b', 40, 'Hitmonlee', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_040_EN_SM.webp'),
  ('A2b-041', 'A2b', 41, 'Hitmonchan', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_041_EN_SM.webp'),
  ('A2b-042', 'A2b', 42, 'Riolu', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_042_EN_SM.webp'),
  ('A2b-043', 'A2b', 43, 'Lucario ex', 'pokemon', 'fighting', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_043_EN_SM.webp'),
  ('A2b-044', 'A2b', 44, 'Flamigo', 'pokemon', 'fighting', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_044_EN_SM.webp'),
  ('A2b-045', 'A2b', 45, 'Ekans', 'pokemon', 'darkness', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_045_EN_SM.webp'),
  ('A2b-046', 'A2b', 46, 'Arbok', 'pokemon', 'darkness', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_046_EN_SM.webp'),
  ('A2b-047', 'A2b', 47, 'Paldean Wooper', 'pokemon', 'darkness', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_047_EN_SM.webp'),
  ('A2b-048', 'A2b', 48, 'Paldean Clodsire ex', 'pokemon', 'darkness', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_048_EN_SM.webp'),
  ('A2b-049', 'A2b', 49, 'Spiritomb', 'pokemon', 'darkness', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_049_EN_SM.webp'),
  ('A2b-050', 'A2b', 50, 'Shroodle', 'pokemon', 'darkness', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_050_EN_SM.webp'),
  ('A2b-051', 'A2b', 51, 'Grafaiai', 'pokemon', 'darkness', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_051_EN_SM.webp'),
  ('A2b-052', 'A2b', 52, 'Tinkatink', 'pokemon', 'metal', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_052_EN_SM.webp'),
  ('A2b-053', 'A2b', 53, 'Tinkatuff', 'pokemon', 'metal', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_053_EN_SM.webp'),
  ('A2b-054', 'A2b', 54, 'Tinkaton ex', 'pokemon', 'metal', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_054_EN_SM.webp'),
  ('A2b-055', 'A2b', 55, 'Varoom', 'pokemon', 'metal', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_055_EN_SM.webp'),
  ('A2b-056', 'A2b', 56, 'Revavroom', 'pokemon', 'metal', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_056_EN_SM.webp'),
  ('A2b-057', 'A2b', 57, 'Gholdengo', 'pokemon', 'metal', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_057_EN_SM.webp'),
  ('A2b-058', 'A2b', 58, 'Rattata', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_058_EN_SM.webp'),
  ('A2b-059', 'A2b', 59, 'Raticate', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_059_EN_SM.webp'),
  ('A2b-060', 'A2b', 60, 'Jigglypuff', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_060_EN_SM.webp'),
  ('A2b-061', 'A2b', 61, 'Wigglytuff', 'pokemon', 'colorless', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_061_EN_SM.webp'),
  ('A2b-062', 'A2b', 62, 'Lickitung', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_062_EN_SM.webp'),
  ('A2b-063', 'A2b', 63, 'Lickilicky', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_063_EN_SM.webp'),
  ('A2b-064', 'A2b', 64, 'Bidoof', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_064_EN_SM.webp'),
  ('A2b-065', 'A2b', 65, 'Bibarel ex', 'pokemon', 'colorless', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_065_EN_SM.webp'),
  ('A2b-066', 'A2b', 66, 'Buneary', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_066_EN_SM.webp'),
  ('A2b-067', 'A2b', 67, 'Lopunny', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_067_EN_SM.webp'),
  ('A2b-068', 'A2b', 68, 'Cyclizar', 'pokemon', 'colorless', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_068_EN_SM.webp'),
  ('A2b-069', 'A2b', 69, 'Iono', 'trainer', null, 'supporter', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_069_EN_SM.webp'),
  ('A2b-070', 'A2b', 70, 'Pokémon Center Lady', 'trainer', null, 'supporter', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_070_EN_SM.webp'),
  ('A2b-071', 'A2b', 71, 'Red', 'trainer', null, 'supporter', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_071_EN_SM.webp'),
  ('A2b-072', 'A2b', 72, 'Team Rocket Grunt', 'trainer', null, 'supporter', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_072_EN_SM.webp')
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
  ('A2b-073', 'A2b', 73, 'Meowscarada', 'pokemon', 'grass', null, 'star_1', 'A2b-007', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_073_EN_SM.webp'),
  ('A2b-074', 'A2b', 74, 'Buizel', 'pokemon', 'water', null, 'star_1', 'A2b-016', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_074_EN_SM.webp'),
  ('A2b-075', 'A2b', 75, 'Tatsugiri', 'pokemon', 'water', null, 'star_1', 'A2b-021', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_075_EN_SM.webp'),
  ('A2b-076', 'A2b', 76, 'Grafaiai', 'pokemon', 'darkness', null, 'star_1', 'A2b-051', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_076_EN_SM.webp'),
  ('A2b-077', 'A2b', 77, 'Gholdengo', 'pokemon', 'metal', null, 'star_1', 'A2b-057', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_077_EN_SM.webp'),
  ('A2b-078', 'A2b', 78, 'Wigglytuff', 'pokemon', 'colorless', null, 'star_1', 'A2b-061', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_078_EN_SM.webp'),
  ('A2b-079', 'A2b', 79, 'Beedrill ex', 'pokemon', 'grass', null, 'star_2', 'A2b-003', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_079_EN_SM.webp'),
  ('A2b-080', 'A2b', 80, 'Charizard ex', 'pokemon', 'fire', null, 'star_2', 'A2b-010', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_080_EN_SM.webp'),
  ('A2b-081', 'A2b', 81, 'Wugtrio ex', 'pokemon', 'water', null, 'star_2', 'A2b-019', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_081_EN_SM.webp'),
  ('A2b-082', 'A2b', 82, 'Pikachu ex', 'pokemon', 'lightning', null, 'star_2', 'A2b-022', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_082_EN_SM.webp'),
  ('A2b-083', 'A2b', 83, 'Giratina ex', 'pokemon', 'psychic', null, 'star_2', 'A2b-035', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_083_EN_SM.webp'),
  ('A2b-084', 'A2b', 84, 'Lucario ex', 'pokemon', 'fighting', null, 'star_2', 'A2b-043', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_084_EN_SM.webp'),
  ('A2b-085', 'A2b', 85, 'Paldean Clodsire ex', 'pokemon', 'darkness', null, 'star_2', 'A2b-048', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_085_EN_SM.webp'),
  ('A2b-086', 'A2b', 86, 'Tinkaton ex', 'pokemon', 'metal', null, 'star_2', 'A2b-054', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_086_EN_SM.webp'),
  ('A2b-087', 'A2b', 87, 'Bibarel ex', 'pokemon', 'colorless', null, 'star_2', 'A2b-065', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_087_EN_SM.webp'),
  ('A2b-088', 'A2b', 88, 'Iono', 'trainer', null, 'supporter', 'star_2', 'A2b-069', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_088_EN_SM.webp'),
  ('A2b-089', 'A2b', 89, 'Pokémon Center Lady', 'trainer', null, 'supporter', 'star_2', 'A2b-070', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_089_EN_SM.webp'),
  ('A2b-090', 'A2b', 90, 'Red', 'trainer', null, 'supporter', 'star_2', 'A2b-071', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_090_EN_SM.webp'),
  ('A2b-091', 'A2b', 91, 'Team Rocket Grunt', 'trainer', null, 'supporter', 'star_2', 'A2b-072', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_091_EN_SM.webp'),
  ('A2b-092', 'A2b', 92, 'Pikachu ex', 'pokemon', 'lightning', null, 'star_2', 'A2b-022', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_092_EN_SM.webp'),
  ('A2b-093', 'A2b', 93, 'Paldean Clodsire ex', 'pokemon', 'darkness', null, 'star_2', 'A2b-048', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_093_EN_SM.webp'),
  ('A2b-094', 'A2b', 94, 'Tinkaton ex', 'pokemon', 'metal', null, 'star_2', 'A2b-054', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_094_EN_SM.webp'),
  ('A2b-095', 'A2b', 95, 'Bibarel ex', 'pokemon', 'colorless', null, 'star_2', 'A2b-065', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_095_EN_SM.webp'),
  ('A2b-096', 'A2b', 96, 'Giratina ex', 'pokemon', 'psychic', null, 'star_3', 'A2b-035', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_096_EN_SM.webp'),
  ('A2b-097', 'A2b', 97, 'Weedle', 'pokemon', 'grass', null, 'star_1', 'A2b-001', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_097_EN_SM.webp'),
  ('A2b-098', 'A2b', 98, 'Kakuna', 'pokemon', 'grass', null, 'star_1', 'A2b-002', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_098_EN_SM.webp'),
  ('A2b-099', 'A2b', 99, 'Charmander', 'pokemon', 'fire', null, 'star_1', 'A2b-008', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_099_EN_SM.webp'),
  ('A2b-100', 'A2b', 100, 'Charmeleon', 'pokemon', 'fire', null, 'star_1', 'A2b-009', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_100_EN_SM.webp'),
  ('A2b-101', 'A2b', 101, 'Wiglett', 'pokemon', 'water', null, 'star_1', 'A2b-018', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_101_EN_SM.webp'),
  ('A2b-102', 'A2b', 102, 'Dondozo', 'pokemon', 'water', null, 'star_1', 'A2b-020', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_102_EN_SM.webp'),
  ('A2b-103', 'A2b', 103, 'Pachirisu', 'pokemon', 'lightning', null, 'star_1', 'A2b-025', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_103_EN_SM.webp'),
  ('A2b-104', 'A2b', 104, 'Riolu', 'pokemon', 'fighting', null, 'star_1', 'A2b-042', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_104_EN_SM.webp'),
  ('A2b-105', 'A2b', 105, 'Varoom', 'pokemon', 'metal', null, 'star_1', 'A2b-055', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_105_EN_SM.webp'),
  ('A2b-106', 'A2b', 106, 'Revavroom', 'pokemon', 'metal', null, 'star_1', 'A2b-056', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_106_EN_SM.webp'),
  ('A2b-107', 'A2b', 107, 'Beedrill ex', 'pokemon', 'grass', null, 'star_2', 'A2b-003', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_107_EN_SM.webp'),
  ('A2b-108', 'A2b', 108, 'Charizard ex', 'pokemon', 'fire', null, 'star_2', 'A2b-010', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_108_EN_SM.webp'),
  ('A2b-109', 'A2b', 109, 'Wugtrio ex', 'pokemon', 'water', null, 'star_2', 'A2b-019', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_109_EN_SM.webp'),
  ('A2b-110', 'A2b', 110, 'Lucario ex', 'pokemon', 'fighting', null, 'star_2', 'A2b-043', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_110_EN_SM.webp'),
  ('A2b-111', 'A2b', 111, 'Poké Ball', 'trainer', null, 'item', 'crown', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A2b/A2b_111_EN_SM.webp')
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

-- Expected result: 111 cards, numbered 1 through 111.
select
  count(*) as card_count,
  min(collector_number) as first_number,
  max(collector_number) as last_number
from public.cards
where set_id = 'A2b';
