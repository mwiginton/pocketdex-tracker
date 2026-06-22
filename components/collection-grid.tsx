"use client";

import { useState } from "react";

import {
  CollectionCard,
  type CardData,
} from "@/components/collection-card";

type CollectionGridProps = {
  cards: CardData[];
  initialOwnedCardIds: string[];
  userId: string;
};

export function CollectionGrid({
  cards,
  initialOwnedCardIds,
  userId,
}: CollectionGridProps) {
  const [ownedCount, setOwnedCount] = useState(initialOwnedCardIds.length);
  const initialOwnedCardIdSet = new Set(initialOwnedCardIds);

  const updateOwnedCount = (owned: boolean) => {
    setOwnedCount((current) => {
      const next = current + (owned ? 1 : -1);
      return Math.min(cards.length, Math.max(0, next));
    });
  };

  return (
    <div className="space-y-5">
      <section
        aria-label="Set completion"
        className="rounded-xl border bg-card p-4 shadow-sm"
      >
        <p className="text-sm font-medium text-muted-foreground">
          Set completion
        </p>
        <p className="mt-1 text-2xl font-bold tabular-nums" aria-live="polite">
          {ownedCount}
          <span className="text-base font-normal text-muted-foreground">
            {" "}/ {cards.length} cards
          </span>
        </p>
      </section>

      {cards.length > 0 ? (
        <ul className="grid grid-cols-2 gap-3 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5">
          {cards.map((card) => (
            <li key={card.id}>
              <CollectionCard
                card={card}
                initiallyOwned={initialOwnedCardIdSet.has(card.id)}
                onOwnedChange={updateOwnedCount}
                userId={userId}
              />
            </li>
          ))}
        </ul>
      ) : (
        <div className="rounded-xl border border-dashed p-8 text-center text-sm text-muted-foreground">
          This set does not have any cards yet.
        </div>
      )}
    </div>
  );
}
