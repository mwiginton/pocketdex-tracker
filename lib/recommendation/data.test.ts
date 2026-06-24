import * as assert from "node:assert/strict";
import { describe, it } from "node:test";

import {
  buildPackRecommendationsFromRows,
  type RecommendationRow,
} from "./data";

describe("buildPackRecommendationsFromRows", () => {
  it("turns RPC rows into ranked pack recommendations", () => {
    const recommendations = buildPackRecommendationsFromRows([
      recommendationRow({
        pack_id: "pack-mewtwo",
        pack_name: "Mewtwo",
        pack_sort_order: 1,
        card_id: "card-mew",
        card_name: "Mew",
        card_collector_number: 2,
        pull_probability: 0.4,
      }),
      recommendationRow({
        pack_id: "pack-charizard",
        pack_name: "Charizard",
        pack_sort_order: 2,
        card_id: "card-mew",
        card_name: "Mew",
        card_collector_number: 2,
        pull_probability: 0.1,
      }),
      recommendationRow({
        pack_id: "pack-charizard",
        pack_name: "Charizard",
        pack_sort_order: 2,
        card_id: "card-pikachu",
        card_name: "Pikachu",
        card_collector_number: 1,
        pull_probability: 0.3,
      }),
    ]);

    assert.deepEqual(
      recommendations.map((recommendation) => ({
        packId: recommendation.pack.id,
        expectedNewCards: recommendation.expectedNewCards,
        cards: recommendation.cards.map(({ card }) => card.id),
      })),
      [
        {
          packId: "pack-mewtwo",
          expectedNewCards: 0.4,
          cards: ["card-mew"],
        },
        {
          packId: "pack-charizard",
          expectedNewCards: 0.4,
          cards: ["card-pikachu", "card-mew"],
        },
      ],
    );
  });
});

function recommendationRow(
  overrides: Partial<RecommendationRow>,
): RecommendationRow {
  return {
    pack_id: "pack-charizard",
    pack_name: "Charizard",
    pack_set_id: "A1",
    pack_slug: "charizard",
    pack_sort_order: 1,
    card_id: "card-pikachu",
    card_name: "Pikachu",
    card_collector_number: 1,
    card_rarity: "diamond_1",
    card_set_id: "A1",
    pull_probability: 0.3,
    ...overrides,
  };
}
