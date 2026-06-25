-- Mythical Island (A1a) has one selectable, five-card booster pack.
-- Source checked 2026-06-21:
-- https://bulbapedia.bulbagarden.net/wiki/Mythical_Island_(TCG_Pocket)
--
-- The image URL is hosted by a third party. Mirror an appropriately licensed
-- asset into storage you control before depending on it in production.

insert into public.packs (
  id,
  set_id,
  name,
  slug,
  kind,
  cards_per_pack,
  is_recommendable,
  sort_order,
  image_url
)
values (
  'a1a-mythical-island',
  'A1a',
  'Mythical Island',
  'mythical-island',
  'booster',
  5,
  true,
  0,
  'https://archives.bulbagarden.net/media/upload/1/14/A1a_Booster_EN.png'
)
on conflict (id) do update set
  set_id = excluded.set_id,
  name = excluded.name,
  slug = excluded.slug,
  kind = excluded.kind,
  cards_per_pack = excluded.cards_per_pack,
  is_recommendable = excluded.is_recommendable,
  sort_order = excluded.sort_order,
  image_url = excluded.image_url,
  updated_at = now();

select *
from public.packs
where id = 'a1a-mythical-island';
