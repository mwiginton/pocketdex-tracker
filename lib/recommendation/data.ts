import type { SupabaseClient } from "@supabase/supabase-js";

import type { Database } from "../database.types";
import {
  calculatePackRecommendations,
  type PackRecommendation,
  type RecommendationCardOdds,
  type RecommendationMissingCard,
  type RecommendationPack,
  type RecommendationScope,
} from "./expected-value";

export type RecommendationRow =
  Database["public"]["Functions"]["get_pack_recommendation_rows"]["Returns"][number];

export const CURRENTLY_UNAVAILABLE_RECOMMENDATION_PACK_IDS = new Set([
  "a4b-deluxe-pack-ex",
]);

export async function loadPackRecommendations(
  supabase: SupabaseClient<Database>,
  scope?: RecommendationScope,
): Promise<PackRecommendation[]> {
  const { data, error } = await supabase.rpc(
    "get_pack_recommendation_rows",
    scope?.setId ? { scope_set_id: scope.setId } : {},
  );

  if (error) {
    throw new Error(error.message);
  }

  return buildPackRecommendationsFromRows(data ?? [], scope);
}

export function buildPackRecommendationsFromRows(
  rows: RecommendationRow[],
  scope?: RecommendationScope,
): PackRecommendation[] {
  const recommendationRows = scope?.includeUnavailablePacks
    ? rows
    : rows.filter(
        (row) =>
          !CURRENTLY_UNAVAILABLE_RECOMMENDATION_PACK_IDS.has(row.pack_id),
      );
  const packsById = new Map<string, RecommendationPack>();
  const missingCardsById = new Map<string, RecommendationMissingCard>();
  const cardPackOdds: RecommendationCardOdds[] = [];

  for (const row of recommendationRows) {
    packsById.set(row.pack_id, {
      id: row.pack_id,
      name: row.pack_name,
      set_id: row.pack_set_id,
      slug: row.pack_slug,
      sort_order: row.pack_sort_order,
    });

    missingCardsById.set(row.card_id, {
      id: row.card_id,
      name: row.card_name,
      collector_number: row.card_collector_number,
      rarity: row.card_rarity,
      set_id: row.card_set_id,
    });

    cardPackOdds.push({
      pack_id: row.pack_id,
      card_id: row.card_id,
      pull_probability: row.pull_probability,
    });
  }

  return calculatePackRecommendations({
    packs: Array.from(packsById.values()),
    missingCards: Array.from(missingCardsById.values()),
    cardPackOdds,
    scope,
  });
}
