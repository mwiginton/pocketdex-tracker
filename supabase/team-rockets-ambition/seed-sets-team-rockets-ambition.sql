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
  'B4a',
  'Team Rocket''s Ambition',
  'team-rockets-ambition',
  '2026-08-27',
  72,
  110,
  false,
  null,
  '2026-08-29'
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
