-- Recommendation input rows for the signed-in user.
--
-- Returns one row per missing card per recommendable pack, including the pack
-- and card fields needed by lib/recommendation/expected-value.ts.
--
-- Apply this in Supabase SQL editor, then run:
--   npm run db:types

create or replace function public.get_pack_recommendation_rows(
  scope_set_id text default null
)
returns table (
  pack_id text,
  pack_name text,
  pack_set_id text,
  pack_slug text,
  pack_sort_order smallint,
  card_id text,
  card_name text,
  card_collector_number integer,
  card_rarity text,
  card_set_id text,
  pull_probability numeric
)
language sql
stable
security invoker
set search_path = public
as $$
  select
    packs.id as pack_id,
    packs.name as pack_name,
    packs.set_id as pack_set_id,
    packs.slug as pack_slug,
    packs.sort_order as pack_sort_order,
    cards.id as card_id,
    cards.name as card_name,
    cards.collector_number as card_collector_number,
    cards.rarity as card_rarity,
    cards.set_id as card_set_id,
    card_pack_odds.pull_probability
  from public.card_pack_odds
  join public.cards
    on cards.id = card_pack_odds.card_id
  join public.packs
    on packs.id = card_pack_odds.pack_id
  left join public.user_cards
    on user_cards.card_id = cards.id
    and user_cards.user_id = auth.uid()
  where packs.is_recommendable = true
    and user_cards.card_id is null
    and (
      scope_set_id is null
      or cards.set_id = scope_set_id
    )
  order by
    packs.sort_order,
    packs.name,
    cards.collector_number;
$$;

revoke all on function public.get_pack_recommendation_rows(text) from public;
grant execute on function public.get_pack_recommendation_rows(text) to authenticated;
