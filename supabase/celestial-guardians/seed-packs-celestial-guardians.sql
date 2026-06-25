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
values
  (
    'a3-solgaleo',
    'A3',
    'Celestial Guardians: Solgaleo',
    'celestial-guardians-solgaleo',
    'booster',
    5,
    true,
    0,
    'https://archives.bulbagarden.net/media/upload/f/f4/A3_Booster_Solgaleo_EN.png'
  ),
  (
    'a3-lunala',
    'A3',
    'Celestial Guardians: Lunala',
    'celestial-guardians-lunala',
    'booster',
    5,
    true,
    1,
    'https://archives.bulbagarden.net/media/upload/3/32/A3_Booster_Lunala_EN.png'
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
where set_id = 'A3'
order by sort_order;