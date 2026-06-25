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
    'a2-dialga',
    'A2',
    'Space-Time Smackdown: Dialga',
    'space-time-smackdown-dialga',
    'booster',
    5,
    true,
    0,
    'https://archives.bulbagarden.net/media/upload/0/03/A2_Booster_Dialga_EN.png'
  ),
  (
    'a2-palkia',
    'A2',
    'Space-Time Smackdown: Palkia',
    'space-time-smackdown-palkia',
    'booster',
    5,
    true,
    1,
    'https://archives.bulbagarden.net/media/upload/c/c7/A2_Booster_Palkia_EN.png'
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
where set_id = 'A2'
order by sort_order;