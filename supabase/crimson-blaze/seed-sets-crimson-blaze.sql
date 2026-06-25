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
  'B1a',
  'Crimson Blaze',
  'crimson-blaze',
  '2025-12-17',
  69,
  103,
  false,
  null,
  '2026-06-25'
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
