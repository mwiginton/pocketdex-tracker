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
    'b1-mega-gyarados',
    'B1',
    'Mega Rising: Mega Gyarados',
    'mega-rising-mega-gyarados',
    'booster',
    5,
    true,
    0,
    'https://archives.bulbagarden.net/media/upload/9/94/B1_Booster_Mega_Gyarados_EN.png'
  ),
  (
    'b1-mega-blaziken',
    'B1',
    'Mega Rising: Mega Blaziken',
    'mega-rising-mega-blaziken',
    'booster',
    5,
    true,
    1,
    'https://archives.bulbagarden.net/media/upload/5/54/B1_Booster_Mega_Blaziken_EN.png'
  ),
  (
    'b1-mega-altaria',
    'B1',
    'Mega Rising: Mega Altaria',
    'mega-rising-mega-altaria',
    'booster',
    5,
    true,
    2,
    'https://archives.bulbagarden.net/media/upload/7/76/B1_Booster_Mega_Altaria_EN.png'
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
where set_id = 'B1'
order by sort_order;
