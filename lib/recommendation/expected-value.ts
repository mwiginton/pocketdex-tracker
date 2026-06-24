import type { Tables } from "../database.types";

export type RecommendationPack = Pick<
  Tables<"packs">,
  "id" | "name" | "set_id" | "slug" | "sort_order"
>;

export type RecommendationMissingCard = Pick<
  Tables<"cards">,
  "id" | "name" | "collector_number" | "rarity" | "set_id"
>;

export type RecommendationCardOdds = Pick<
  Tables<"card_pack_odds">,
  "pack_id" | "card_id" | "pull_probability"
>;

export type RecommendationScope = {
  setId?: string;
};

export type PackRecommendationCard = {
  card: RecommendationMissingCard;
  pullProbability: number;
};

export type PackRecommendation = {
  pack: RecommendationPack;
  expectedNewCards: number;
  missingCardCount: number;
  cards: PackRecommendationCard[];
};

type CalculatePackRecommendationsInput = {
  packs: RecommendationPack[];
  missingCards: RecommendationMissingCard[];
  cardPackOdds: RecommendationCardOdds[];
  scope?: RecommendationScope;
};

export function calculatePackRecommendations({
  packs,
  missingCards,
  cardPackOdds,
  scope,
}: CalculatePackRecommendationsInput): PackRecommendation[] {
  const scopedMissingCards = scope?.setId
    ? missingCards.filter((card) => card.set_id === scope.setId)
    : missingCards;

  const missingCardsById = new Map(
    scopedMissingCards.map((card) => [card.id, card]),
  );

  const recommendationsByPackId = new Map(
    packs.map((pack) => [
      pack.id,
      {
        pack,
        expectedNewCards: 0,
        missingCardCount: 0,
        cards: [] as PackRecommendationCard[],
      },
    ]),
  );

  const seenPackCardPairs = new Set<string>();

  for (const odds of cardPackOdds) {
    const card = missingCardsById.get(odds.card_id);
    const recommendation = recommendationsByPackId.get(odds.pack_id);

    if (!card || !recommendation) continue;

    assertValidProbability(odds.pull_probability, odds);

    const pairKey = `${odds.pack_id}:${odds.card_id}`;
    if (seenPackCardPairs.has(pairKey)) continue;

    seenPackCardPairs.add(pairKey);
    recommendation.expectedNewCards += odds.pull_probability;
    recommendation.missingCardCount += 1;
    recommendation.cards.push({
      card,
      pullProbability: odds.pull_probability,
    });
  }

  return Array.from(recommendationsByPackId.values())
    .map((recommendation) => ({
      ...recommendation,
      expectedNewCards: roundExpectedValue(recommendation.expectedNewCards),
      cards: recommendation.cards.sort(compareRecommendationCards),
    }))
    .sort(compareRecommendations);
}

function assertValidProbability(
  pullProbability: number,
  odds: RecommendationCardOdds,
) {
  if (
    !Number.isFinite(pullProbability) ||
    pullProbability < 0 ||
    pullProbability > 1
  ) {
    throw new RangeError(
      `Invalid pull probability for pack "${odds.pack_id}" and card "${odds.card_id}": ${pullProbability}`,
    );
  }
}

function roundExpectedValue(value: number) {
  return Number(value.toFixed(10));
}

function compareRecommendations(
  left: PackRecommendation,
  right: PackRecommendation,
) {
  return (
    right.expectedNewCards - left.expectedNewCards ||
    left.pack.sort_order - right.pack.sort_order ||
    left.pack.name.localeCompare(right.pack.name) ||
    left.pack.id.localeCompare(right.pack.id)
  );
}

function compareRecommendationCards(
  left: PackRecommendationCard,
  right: PackRecommendationCard,
) {
  return (
    right.pullProbability - left.pullProbability ||
    left.card.collector_number - right.card.collector_number ||
    left.card.name.localeCompare(right.card.name)
  );
}
