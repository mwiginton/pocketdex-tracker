-- Mythical Island (A1a): 68 main-set cards and 18 secret cards.
-- Source checked 2026-06-20: https://pocket.limitlesstcg.com/cards/A1a
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
  ('A1a-001', 'A1a', 1, 'Exeggcute', 'pokemon', 'grass', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_001_EN_SM.webp'),
  ('A1a-002', 'A1a', 2, 'Exeggutor', 'pokemon', 'grass', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_002_EN_SM.webp'),
  ('A1a-003', 'A1a', 3, 'Celebi ex', 'pokemon', 'grass', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_003_EN_SM.webp'),
  ('A1a-004', 'A1a', 4, 'Snivy', 'pokemon', 'grass', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_004_EN_SM.webp'),
  ('A1a-005', 'A1a', 5, 'Servine', 'pokemon', 'grass', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_005_EN_SM.webp'),
  ('A1a-006', 'A1a', 6, 'Serperior', 'pokemon', 'grass', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_006_EN_SM.webp'),
  ('A1a-007', 'A1a', 7, 'Morelull', 'pokemon', 'grass', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_007_EN_SM.webp'),
  ('A1a-008', 'A1a', 8, 'Shiinotic', 'pokemon', 'grass', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_008_EN_SM.webp'),
  ('A1a-009', 'A1a', 9, 'Dhelmise', 'pokemon', 'grass', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_009_EN_SM.webp'),
  ('A1a-010', 'A1a', 10, 'Ponyta', 'pokemon', 'fire', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_010_EN_SM.webp'),
  ('A1a-011', 'A1a', 11, 'Rapidash', 'pokemon', 'fire', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_011_EN_SM.webp'),
  ('A1a-012', 'A1a', 12, 'Magmar', 'pokemon', 'fire', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_012_EN_SM.webp'),
  ('A1a-013', 'A1a', 13, 'Larvesta', 'pokemon', 'fire', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_013_EN_SM.webp'),
  ('A1a-014', 'A1a', 14, 'Volcarona', 'pokemon', 'fire', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_014_EN_SM.webp'),
  ('A1a-015', 'A1a', 15, 'Salandit', 'pokemon', 'fire', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_015_EN_SM.webp'),
  ('A1a-016', 'A1a', 16, 'Salazzle', 'pokemon', 'fire', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_016_EN_SM.webp'),
  ('A1a-017', 'A1a', 17, 'Magikarp', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_017_EN_SM.webp'),
  ('A1a-018', 'A1a', 18, 'Gyarados ex', 'pokemon', 'water', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_018_EN_SM.webp'),
  ('A1a-019', 'A1a', 19, 'Vaporeon', 'pokemon', 'water', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_019_EN_SM.webp'),
  ('A1a-020', 'A1a', 20, 'Finneon', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_020_EN_SM.webp'),
  ('A1a-021', 'A1a', 21, 'Lumineon', 'pokemon', 'water', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_021_EN_SM.webp'),
  ('A1a-022', 'A1a', 22, 'Chewtle', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_022_EN_SM.webp'),
  ('A1a-023', 'A1a', 23, 'Drednaw', 'pokemon', 'water', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_023_EN_SM.webp'),
  ('A1a-024', 'A1a', 24, 'Cramorant', 'pokemon', 'water', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_024_EN_SM.webp'),
  ('A1a-025', 'A1a', 25, 'Pikachu', 'pokemon', 'lightning', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_025_EN_SM.webp'),
  ('A1a-026', 'A1a', 26, 'Raichu', 'pokemon', 'lightning', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_026_EN_SM.webp'),
  ('A1a-027', 'A1a', 27, 'Electabuzz', 'pokemon', 'lightning', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_027_EN_SM.webp'),
  ('A1a-028', 'A1a', 28, 'Joltik', 'pokemon', 'lightning', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_028_EN_SM.webp'),
  ('A1a-029', 'A1a', 29, 'Galvantula', 'pokemon', 'lightning', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_029_EN_SM.webp'),
  ('A1a-030', 'A1a', 30, 'Dedenne', 'pokemon', 'lightning', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_030_EN_SM.webp'),
  ('A1a-031', 'A1a', 31, 'Mew', 'pokemon', 'psychic', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_031_EN_SM.webp'),
  ('A1a-032', 'A1a', 32, 'Mew ex', 'pokemon', 'psychic', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_032_EN_SM.webp'),
  ('A1a-033', 'A1a', 33, 'Sigilyph', 'pokemon', 'psychic', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_033_EN_SM.webp'),
  ('A1a-034', 'A1a', 34, 'Elgyem', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_034_EN_SM.webp'),
  ('A1a-035', 'A1a', 35, 'Beheeyem', 'pokemon', 'psychic', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_035_EN_SM.webp'),
  ('A1a-036', 'A1a', 36, 'Flabébé', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_036_EN_SM.webp'),
  ('A1a-037', 'A1a', 37, 'Floette', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_037_EN_SM.webp'),
  ('A1a-038', 'A1a', 38, 'Florges', 'pokemon', 'psychic', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_038_EN_SM.webp'),
  ('A1a-039', 'A1a', 39, 'Swirlix', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_039_EN_SM.webp'),
  ('A1a-040', 'A1a', 40, 'Slurpuff', 'pokemon', 'psychic', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_040_EN_SM.webp'),
  ('A1a-041', 'A1a', 41, 'Mankey', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_041_EN_SM.webp'),
  ('A1a-042', 'A1a', 42, 'Primeape', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_042_EN_SM.webp'),
  ('A1a-043', 'A1a', 43, 'Geodude', 'pokemon', 'fighting', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_043_EN_SM.webp'),
  ('A1a-044', 'A1a', 44, 'Graveler', 'pokemon', 'fighting', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_044_EN_SM.webp'),
  ('A1a-045', 'A1a', 45, 'Golem', 'pokemon', 'fighting', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_045_EN_SM.webp'),
  ('A1a-046', 'A1a', 46, 'Aerodactyl ex', 'pokemon', 'fighting', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_046_EN_SM.webp'),
  ('A1a-047', 'A1a', 47, 'Marshadow', 'pokemon', 'fighting', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_047_EN_SM.webp'),
  ('A1a-048', 'A1a', 48, 'Stonjourner', 'pokemon', 'fighting', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_048_EN_SM.webp'),
  ('A1a-049', 'A1a', 49, 'Koffing', 'pokemon', 'darkness', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_049_EN_SM.webp'),
  ('A1a-050', 'A1a', 50, 'Weezing', 'pokemon', 'darkness', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_050_EN_SM.webp'),
  ('A1a-051', 'A1a', 51, 'Purrloin', 'pokemon', 'darkness', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_051_EN_SM.webp'),
  ('A1a-052', 'A1a', 52, 'Liepard', 'pokemon', 'darkness', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_052_EN_SM.webp'),
  ('A1a-053', 'A1a', 53, 'Venipede', 'pokemon', 'darkness', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_053_EN_SM.webp'),
  ('A1a-054', 'A1a', 54, 'Whirlipede', 'pokemon', 'darkness', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_054_EN_SM.webp'),
  ('A1a-055', 'A1a', 55, 'Scolipede', 'pokemon', 'darkness', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_055_EN_SM.webp'),
  ('A1a-056', 'A1a', 56, 'Druddigon', 'pokemon', 'dragon', null, 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_056_EN_SM.webp'),
  ('A1a-057', 'A1a', 57, 'Pidgey', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_057_EN_SM.webp'),
  ('A1a-058', 'A1a', 58, 'Pidgeotto', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_058_EN_SM.webp'),
  ('A1a-059', 'A1a', 59, 'Pidgeot ex', 'pokemon', 'colorless', null, 'diamond_4', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_059_EN_SM.webp'),
  ('A1a-060', 'A1a', 60, 'Tauros', 'pokemon', 'colorless', null, 'diamond_3', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_060_EN_SM.webp'),
  ('A1a-061', 'A1a', 61, 'Eevee', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_061_EN_SM.webp'),
  ('A1a-062', 'A1a', 62, 'Chatot', 'pokemon', 'colorless', null, 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_062_EN_SM.webp'),
  ('A1a-063', 'A1a', 63, 'Old Amber', 'trainer', null, 'item', 'diamond_1', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_063_EN_SM.webp'),
  ('A1a-064', 'A1a', 64, 'Pokémon Flute', 'trainer', null, 'item', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_064_EN_SM.webp'),
  ('A1a-065', 'A1a', 65, 'Mythical Slab', 'trainer', null, 'item', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_065_EN_SM.webp'),
  ('A1a-066', 'A1a', 66, 'Budding Expeditioner', 'trainer', null, 'supporter', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_066_EN_SM.webp'),
  ('A1a-067', 'A1a', 67, 'Blue', 'trainer', null, 'supporter', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_067_EN_SM.webp'),
  ('A1a-068', 'A1a', 68, 'Leaf', 'trainer', null, 'supporter', 'diamond_2', null, 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_068_EN_SM.webp')
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
  ('A1a-069', 'A1a', 69, 'Exeggutor', 'pokemon', 'grass', null, 'star_1', 'A1a-002', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_069_EN_SM.webp'),
  ('A1a-070', 'A1a', 70, 'Serperior', 'pokemon', 'grass', null, 'star_1', 'A1a-006', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_070_EN_SM.webp'),
  ('A1a-071', 'A1a', 71, 'Salandit', 'pokemon', 'fire', null, 'star_1', 'A1a-015', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_071_EN_SM.webp'),
  ('A1a-072', 'A1a', 72, 'Vaporeon', 'pokemon', 'water', null, 'star_1', 'A1a-019', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_072_EN_SM.webp'),
  ('A1a-073', 'A1a', 73, 'Dedenne', 'pokemon', 'lightning', null, 'star_1', 'A1a-030', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_073_EN_SM.webp'),
  ('A1a-074', 'A1a', 74, 'Marshadow', 'pokemon', 'fighting', null, 'star_1', 'A1a-047', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_074_EN_SM.webp'),
  ('A1a-075', 'A1a', 75, 'Celebi ex', 'pokemon', 'grass', null, 'star_2', 'A1a-003', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_075_EN_SM.webp'),
  ('A1a-076', 'A1a', 76, 'Gyarados ex', 'pokemon', 'water', null, 'star_2', 'A1a-018', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_076_EN_SM.webp'),
  ('A1a-077', 'A1a', 77, 'Mew ex', 'pokemon', 'psychic', null, 'star_2', 'A1a-032', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_077_EN_SM.webp'),
  ('A1a-078', 'A1a', 78, 'Aerodactyl ex', 'pokemon', 'fighting', null, 'star_2', 'A1a-046', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_078_EN_SM.webp'),
  ('A1a-079', 'A1a', 79, 'Pidgeot ex', 'pokemon', 'colorless', null, 'star_2', 'A1a-059', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_079_EN_SM.webp'),
  ('A1a-080', 'A1a', 80, 'Budding Expeditioner', 'trainer', null, 'supporter', 'star_2', 'A1a-066', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_080_EN_SM.webp'),
  ('A1a-081', 'A1a', 81, 'Blue', 'trainer', null, 'supporter', 'star_2', 'A1a-067', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_081_EN_SM.webp'),
  ('A1a-082', 'A1a', 82, 'Leaf', 'trainer', null, 'supporter', 'star_2', 'A1a-068', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_082_EN_SM.webp'),
  ('A1a-083', 'A1a', 83, 'Mew ex', 'pokemon', 'psychic', null, 'star_2', 'A1a-032', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_083_EN_SM.webp'),
  ('A1a-084', 'A1a', 84, 'Aerodactyl ex', 'pokemon', 'fighting', null, 'star_2', 'A1a-046', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_084_EN_SM.webp'),
  ('A1a-085', 'A1a', 85, 'Celebi ex', 'pokemon', 'grass', null, 'star_3', 'A1a-003', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_085_EN_SM.webp'),
  ('A1a-086', 'A1a', 86, 'Mew ex', 'pokemon', 'psychic', null, 'crown', 'A1a-032', 'https://limitlesstcg.nyc3.cdn.digitaloceanspaces.com/pocket/A1a/A1a_086_EN_SM.webp')
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

-- Expected result: 86 cards, numbered 1 through 86.
select
  count(*) as card_count,
  min(collector_number) as first_number,
  max(collector_number) as last_number
from public.cards
where set_id = 'A1a';
