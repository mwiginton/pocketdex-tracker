import * as assert from "node:assert/strict";
import { describe, it } from "node:test";

import {
  calculatePackRecommendations,
  type RecommendationCardOdds,
  type RecommendationMissingCard,
  type RecommendationPack,
} from "./expected-value";

const packs = [
  {
    id: "pack-charizard",
    name: "Charizard",
    set_id: "A1",
    slug: "charizard",
    sort_order: 2,
  },
  {
    id: "pack-mewtwo",
    name: "Mewtwo",
    set_id: "A1",
    slug: "mewtwo",
    sort_order: 1,
  },
] satisfies RecommendationPack[];

const missingCards = [
  {
    id: "card-pikachu",
    name: "Pikachu",
    collector_number: 1,
    rarity: "diamond_1",
    set_id: "A1",
  },
  {
    id: "card-mew",
    name: "Mew",
    collector_number: 2,
    rarity: "star_1",
    set_id: "A1",
  },
  {
    id: "card-celebi",
    name: "Celebi",
    collector_number: 3,
    rarity: "star_1",
    set_id: "A1a",
  },
] satisfies RecommendationMissingCard[];

describe("calculatePackRecommendations", () => {
  it("ranks packs by expected new cards per opened pack", () => {
    const recommendations = calculatePackRecommendations({
      packs,
      missingCards,
      cardPackOdds: [
        {
          pack_id: "pack-charizard",
          card_id: "card-pikachu",
          pull_probability: 0.3,
        },
        {
          pack_id: "pack-charizard",
          card_id: "card-mew",
          pull_probability: 0.1,
        },
        {
          pack_id: "pack-mewtwo",
          card_id: "card-pikachu",
          pull_probability: 0.2,
        },
        {
          pack_id: "pack-mewtwo",
          card_id: "card-mew",
          pull_probability: 0.4,
        },
      ] satisfies RecommendationCardOdds[],
    });

    assert.deepEqual(
      recommendations.map((recommendation) => ({
        packId: recommendation.pack.id,
        expectedNewCards: recommendation.expectedNewCards,
        missingCardCount: recommendation.missingCardCount,
      })),
      [
        {
          packId: "pack-mewtwo",
          expectedNewCards: 0.6,
          missingCardCount: 2,
        },
        {
          packId: "pack-charizard",
          expectedNewCards: 0.4,
          missingCardCount: 2,
        },
      ],
    );
  });

  it("includes card-level details sorted by pull probability", () => {
    const [recommendation] = calculatePackRecommendations({
      packs: [packs[0]],
      missingCards,
      cardPackOdds: [
        {
          pack_id: "pack-charizard",
          card_id: "card-mew",
          pull_probability: 0.1,
        },
        {
          pack_id: "pack-charizard",
          card_id: "card-pikachu",
          pull_probability: 0.3,
        },
      ] satisfies RecommendationCardOdds[],
    });

    assert.deepEqual(
      recommendation.cards.map(({ card, pullProbability }) => ({
        cardId: card.id,
        rarity: card.rarity,
        pullProbability,
      })),
      [
        {
          cardId: "card-pikachu",
          rarity: "diamond_1",
          pullProbability: 0.3,
        },
        {
          cardId: "card-mew",
          rarity: "star_1",
          pullProbability: 0.1,
        },
      ],
    );
  });

  it("can scope missing cards to a single set", () => {
    const recommendations = calculatePackRecommendations({
      packs,
      missingCards,
      cardPackOdds: [
        {
          pack_id: "pack-charizard",
          card_id: "card-pikachu",
          pull_probability: 0.3,
        },
        {
          pack_id: "pack-charizard",
          card_id: "card-celebi",
          pull_probability: 0.8,
        },
      ] satisfies RecommendationCardOdds[],
      scope: {
        setId: "A1a",
      },
    });

    assert.equal(recommendations[0].pack.id, "pack-charizard");
    assert.equal(recommendations[0].expectedNewCards, 0.8);
    assert.deepEqual(
      recommendations[0].cards.map(({ card }) => card.id),
      ["card-celebi"],
    );
  });

  it("keeps packs with no matching missing-card odds at zero value", () => {
    const recommendations = calculatePackRecommendations({
      packs,
      missingCards: [missingCards[0]],
      cardPackOdds: [
        {
          pack_id: "pack-charizard",
          card_id: "already-owned-card",
          pull_probability: 0.9,
        },
      ] satisfies RecommendationCardOdds[],
    });

    assert.deepEqual(
      recommendations.map((recommendation) => ({
        packId: recommendation.pack.id,
        expectedNewCards: recommendation.expectedNewCards,
        missingCardCount: recommendation.missingCardCount,
      })),
      [
        {
          packId: "pack-mewtwo",
          expectedNewCards: 0,
          missingCardCount: 0,
        },
        {
          packId: "pack-charizard",
          expectedNewCards: 0,
          missingCardCount: 0,
        },
      ],
    );
  });

  it("rejects invalid pull probabilities", () => {
    assert.throws(
      () =>
        calculatePackRecommendations({
          packs,
          missingCards,
          cardPackOdds: [
            {
              pack_id: "pack-charizard",
              card_id: "card-pikachu",
              pull_probability: 1.2,
            },
          ] satisfies RecommendationCardOdds[],
        }),
      RangeError,
    );
  });
});
