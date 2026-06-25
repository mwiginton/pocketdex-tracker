import type { SupabaseClient } from "@supabase/supabase-js";

import type { Database } from "@/lib/database.types";

export type HomeSetCompletionRow =
  Database["public"]["Functions"]["get_home_set_completion_rows"]["Returns"][number];

export type HomeSetCompletion = HomeSetCompletionRow & {
  completionRatio: number;
};

export type HomeCompletionSummary = {
  ownedCards: number;
  totalCards: number;
  missingCards: number;
  completionRatio: number;
};

export type HomeCompletionData = {
  sets: HomeSetCompletion[];
  summary: HomeCompletionSummary;
};

export async function loadHomeCompletion(
  supabase: SupabaseClient<Database>,
): Promise<HomeCompletionData> {
  const { data, error } = await supabase.rpc("get_home_set_completion_rows");

  if (error) {
    throw new Error(error.message);
  }

  const sets = (data ?? []).map((set) => ({
    ...set,
    completionRatio: getCompletionRatio(set.owned_cards, set.total_cards),
  }));

  const summary = sets.reduce<HomeCompletionSummary>(
    (current, set) => ({
      ownedCards: current.ownedCards + set.owned_cards,
      totalCards: current.totalCards + set.total_cards,
      missingCards: current.missingCards + set.missing_cards,
      completionRatio: 0,
    }),
    {
      ownedCards: 0,
      totalCards: 0,
      missingCards: 0,
      completionRatio: 0,
    },
  );

  summary.completionRatio = getCompletionRatio(
    summary.ownedCards,
    summary.totalCards,
  );

  return { sets, summary };
}

function getCompletionRatio(ownedCards: number, totalCards: number) {
  return totalCards > 0 ? ownedCards / totalCards : 0;
}
