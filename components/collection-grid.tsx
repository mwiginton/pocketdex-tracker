"use client";

import { LoaderCircle } from "lucide-react";
import { useMemo, useState } from "react";

import {
  CollectionCard,
  type CardData,
} from "@/components/collection-card";
import { Button } from "@/components/ui/button";
import { createClient } from "@/lib/supabase/client";

type Filter = "all" | "missing" | "owned";

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
  const [ownedCardIds, setOwnedCardIds] = useState(
    () => new Set(initialOwnedCardIds),
  );
  const [filter, setFilter] = useState<Filter>("all");
  const [bulkTarget, setBulkTarget] = useState<boolean | null>(null);
  const [pendingCardCount, setPendingCardCount] = useState(0);
  const [bulkError, setBulkError] = useState<string | null>(null);

  const visibleCards = useMemo(
    () =>
      cards.filter((card) => {
        if (filter === "missing") return !ownedCardIds.has(card.id);
        if (filter === "owned") return ownedCardIds.has(card.id);
        return true;
      }),
    [cards, filter, ownedCardIds],
  );

  const updateOwnedCard = (cardId: string, owned: boolean) => {
    setOwnedCardIds((current) => {
      const next = new Set(current);
      if (owned) next.add(cardId);
      else next.delete(cardId);
      return next;
    });
  };

  const updatePendingCardCount = (saving: boolean) => {
    setPendingCardCount((current) => Math.max(0, current + (saving ? 1 : -1)));
  };

  const setAllOwned = async (owned: boolean) => {
    if (bulkTarget !== null || pendingCardCount > 0) return;

    const affectedCardIds = cards
      .filter((card) => owned !== ownedCardIds.has(card.id))
      .map((card) => card.id);

    if (affectedCardIds.length === 0) return;

    setBulkTarget(owned);
    setBulkError(null);

    const supabase = createClient();
    const { error } = owned
      ? await supabase.from("user_cards").upsert(
          affectedCardIds.map((cardId) => ({
            user_id: userId,
            card_id: cardId,
          })),
        )
      : await supabase
          .from("user_cards")
          .delete()
          .eq("user_id", userId)
          .in("card_id", affectedCardIds);

    if (error) {
      setBulkError(error.message);
    } else {
      setOwnedCardIds(owned ? new Set(cards.map((card) => card.id)) : new Set());
    }

    setBulkTarget(null);
  };

  const isBulkSaving = bulkTarget !== null;
  const controlsDisabled = isBulkSaving || pendingCardCount > 0;

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
          {ownedCardIds.size}
          <span className="text-base font-normal text-muted-foreground">
            {" "}/ {cards.length} cards
          </span>
        </p>
      </section>

      <section aria-label="Collection controls" className="space-y-3">
        <div className="flex gap-2 overflow-x-auto pb-1">
          {(["all", "missing", "owned"] as const).map((value) => (
            <Button
              key={value}
              type="button"
              size="sm"
              variant={filter === value ? "default" : "outline"}
              aria-pressed={filter === value}
              onClick={() => setFilter(value)}
              className="capitalize"
            >
              {value}
            </Button>
          ))}
        </div>

        <div className="flex gap-2">
          <Button
            type="button"
            variant="secondary"
            className="min-h-11 flex-1"
            disabled={controlsDisabled || ownedCardIds.size === cards.length}
            onClick={() => setAllOwned(true)}
          >
            {bulkTarget === true && <LoaderCircle className="animate-spin" />}
            Mark all
          </Button>
          <Button
            type="button"
            variant="outline"
            className="min-h-11 flex-1"
            disabled={controlsDisabled || ownedCardIds.size === 0}
            onClick={() => setAllOwned(false)}
          >
            {bulkTarget === false && <LoaderCircle className="animate-spin" />}
            Unmark all
          </Button>
        </div>

        {bulkError && (
          <p
            role="alert"
            className="rounded-md border border-destructive/40 bg-destructive/10 p-3 text-sm text-destructive"
          >
            Could not update the set: {bulkError}
          </p>
        )}
      </section>

      <p className="text-sm text-muted-foreground" aria-live="polite">
        Showing {visibleCards.length}{" "}
        {visibleCards.length === 1 ? "card" : "cards"}
      </p>

      {visibleCards.length > 0 ? (
        <ul className="grid grid-cols-2 gap-3 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5">
          {visibleCards.map((card) => (
            <li key={card.id}>
              <CollectionCard
                card={card}
                disabled={isBulkSaving}
                isOwned={ownedCardIds.has(card.id)}
                onOwnedChange={(owned) => updateOwnedCard(card.id, owned)}
                onSavingChange={updatePendingCardCount}
                userId={userId}
              />
            </li>
          ))}
        </ul>
      ) : (
        <div className="rounded-xl border border-dashed p-8 text-center text-sm text-muted-foreground">
          {cards.length === 0
            ? "This set does not have any cards yet."
            : "No cards match this filter."}
        </div>
      )}
    </div>
  );
}
