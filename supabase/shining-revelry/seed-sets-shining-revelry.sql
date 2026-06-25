insert into public.sets (
  id,
  name,
  slug,
  release_date,
  official_card_count,
  total_card_count,
  is_promo,
  image_url,
  data_version
)
values (
  'A2b',
  'Shining Revelry',
  'shining-revelry',
  '2025-03-27',
  72,
  111,
  false,
  null,
  '2026-06-24'
)
on conflict (id) do update set
  name = excluded.name,
  slug = excluded.slug,
  release_date = excluded.release_date,
  official_card_count = excluded.official_card_count,
  total_card_count = excluded.total_card_count,
  is_promo = excluded.is_promo,
  image_url = excluded.image_url,
  data_version = excluded.data_version,
  updated_at = now();