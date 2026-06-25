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

  it("excludes currently unavailable limited-time packs by default", () => {
    const recommendations = buildPackRecommendationsFromRows([
      recommendationRow({
        pack_id: "a4b-deluxe-pack-ex",
        pack_name: "Deluxe Pack: ex",
        pack_set_id: "A4b",
        pack_slug: "deluxe-pack-ex",
        card_id: "card-deluxe",
        card_name: "Deluxe card",
        card_collector_number: 3,
        pull_probability: 0.9,
      }),
      recommendationRow({
        pack_id: "pack-mewtwo",
        pack_name: "Mewtwo",
        card_id: "card-mew",
        card_name: "Mew",
        card_collector_number: 2,
        pull_probability: 0.4,
      }),
    ]);

    assert.deepEqual(
      recommendations.map((recommendation) => recommendation.pack.id),
      ["pack-mewtwo"],
    );
  });

  it("includes currently unavailable limited-time packs when opted in", () => {
    const recommendations = buildPackRecommendationsFromRows(
      [
        recommendationRow({
          pack_id: "a4b-deluxe-pack-ex",
          pack_name: "Deluxe Pack: ex",
          pack_set_id: "A4b",
          pack_slug: "deluxe-pack-ex",
          card_id: "card-deluxe",
          card_name: "Deluxe card",
          card_collector_number: 3,
          pull_probability: 0.9,
        }),
        recommendationRow({
          pack_id: "pack-mewtwo",
          pack_name: "Mewtwo",
          card_id: "card-mew",
          card_name: "Mew",
          card_collector_number: 2,
          pull_probability: 0.4,
        }),
      ],
      {
        includeUnavailablePacks: true,
      },
    );

    assert.deepEqual(
      recommendations.map((recommendation) => recommendation.pack.id),
      ["a4b-deluxe-pack-ex", "pack-mewtwo"],
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
