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
    'a4-ho-oh',
    'A4',
    'Wisdom of Sea and Sky: Ho-Oh',
    'wisdom-of-sea-and-sky-ho-oh',
    'booster',
    5,
    true,
    0,
    'https://archives.bulbagarden.net/media/upload/c/c8/A4_Booster_Ho-Oh_EN.png'
  ),
  (
    'a4-lugia',
    'A4',
    'Wisdom of Sea and Sky: Lugia',
    'wisdom-of-sea-and-sky-lugia',
    'booster',
    5,
    true,
    1,
    'https://archives.bulbagarden.net/media/upload/f/fa/A4_Booster_Lugia_EN.png'
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
where set_id = 'A4'
order by sort_order;
