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
  'b2-fantastical-parade',
  'B2',
  'Fantastical Parade',
  'fantastical-parade',
  'booster',
  5,
  true,
  0,
  'https://archives.bulbagarden.net/media/upload/b/b9/B2_Booster_EN.png'
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
where set_id = 'B2'
order by sort_order;
