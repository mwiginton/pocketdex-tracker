-- Home dashboard completion rows for the signed-in user.
--
-- Returns one compact row per set with aggregate card counts, avoiding a
-- client-side fetch of every card in every set.
--
-- Apply this in Supabase SQL editor, then run:
--   npm run db:types

create or replace function public.get_home_set_completion_rows()
returns table (
  set_id text,
  set_name text,
  set_slug text,
  release_date date,
  image_url text,
  data_version text,
  total_cards integer,
  owned_cards integer,
  missing_cards integer
)
language sql
stable
security invoker
set search_path = public
as $$
  select
    sets.id as set_id,
    sets.name as set_name,
    sets.slug as set_slug,
    sets.release_date,
    sets.image_url,
    sets.data_version,
    count(cards.id)::integer as total_cards,
    count(user_cards.card_id)::integer as owned_cards,
    (count(cards.id) - count(user_cards.card_id))::integer as missing_cards
  from public.sets
  left join public.cards
    on cards.set_id = sets.id
  left join public.user_cards
    on user_cards.card_id = cards.id
    and user_cards.user_id = auth.uid()
  group by
    sets.id,
    sets.name,
    sets.slug,
    sets.release_date,
    sets.image_url,
    sets.data_version
  order by
    sets.release_date desc nulls last,
    sets.id;
$$;

revoke all on function public.get_home_set_completion_rows() from public;
grant execute on function public.get_home_set_completion_rows() to authenticated;
