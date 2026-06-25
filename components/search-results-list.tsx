"use client";

import { Check, LoaderCircle } from "lucide-react";
import Image from "next/image";
import Link from "next/link";
import { useMemo, useState } from "react";

import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { createClient } from "@/lib/supabase/client";

export type SearchOwnershipFilter = "" | "missing" | "owned";

export type SearchResultFilters = {
  owned: SearchOwnershipFilter;
  q: string;
  rarity: string;
  setId: string;
  type: string;
};

export type SearchResultCard = {
  id: string;
  name: string;
  collector_number: number;
  rarity: string;
  category: string;
  energy_type: string | null;
  image_url: string | null;
  isOwned: boolean;
  set_id: string;
  sets: {
    id: string;
    name: string;
  } | null;
};

type SearchResultsListProps = {
  cards: SearchResultCard[];
  filters: SearchResultFilters;
  resultLimit: number;
  userId: string;
};

export function SearchResultsList({
  cards,
  filters,
  resultLimit,
  userId,
}: SearchResultsListProps) {
  const [ownedCardIds, setOwnedCardIds] = useState(
    () => new Set(cards.filter((card) => card.isOwned).map((card) => card.id)),
  );
  const [pendingCardIds, setPendingCardIds] = useState(() => new Set<string>());
  const [cardErrors, setCardErrors] = useState(() => new Map<string, string>());

  const visibleCards = useMemo(
    () =>
      cards.filter((card) => {
        if (filters.owned === "owned") return ownedCardIds.has(card.id);
        if (filters.owned === "missing") return !ownedCardIds.has(card.id);
        return true;
      }),
    [cards, filters.owned, ownedCardIds],
  );

  const updateOwnedCard = (cardId: string, owned: boolean) => {
    setOwnedCardIds((current) => {
      const next = new Set(current);
      if (owned) next.add(cardId);
      else next.delete(cardId);
      return next;
    });
  };

  const updatePendingCard = (cardId: string, saving: boolean) => {
    setPendingCardIds((current) => {
      const next = new Set(current);
      if (saving) next.add(cardId);
      else next.delete(cardId);
      return next;
    });
  };

  const updateCardError = (cardId: string, message: string | null) => {
    setCardErrors((current) => {
      const next = new Map(current);
      if (message) next.set(cardId, message);
      else next.delete(cardId);
      return next;
    });
  };

  const toggleCardOwned = async (cardId: string, currentOwned: boolean) => {
    if (pendingCardIds.has(cardId)) return;

    const nextOwned = !currentOwned;

    updateOwnedCard(cardId, nextOwned);
    updatePendingCard(cardId, true);
    updateCardError(cardId, null);

    const supabase = createClient();
    const { error } = nextOwned
      ? await supabase
          .from("user_cards")
          .upsert({ user_id: userId, card_id: cardId })
      : await supabase
          .from("user_cards")
          .delete()
          .eq("user_id", userId)
          .eq("card_id", cardId);

    if (error) {
      updateOwnedCard(cardId, currentOwned);
      updateCardError(cardId, error.message);
    }

    updatePendingCard(cardId, false);
  };

  return (
    <div>
      <div className="mb-3 flex items-center justify-between gap-3">
        <p className="text-sm text-muted-foreground" aria-live="polite">
          {getResultSummary(visibleCards.length, filters)}
        </p>
        {cards.length === resultLimit ? (
          <p className="text-xs text-muted-foreground">
            First {resultLimit} shown
          </p>
        ) : null}
      </div>

      {visibleCards.length > 0 ? (
        <ul className="divide-y overflow-hidden rounded-xl border bg-card shadow-sm">
          {visibleCards.map((card) => {
            const isOwned = ownedCardIds.has(card.id);
            const isSaving = pendingCardIds.has(card.id);
            const error = cardErrors.get(card.id);

            return (
              <li key={card.id}>
                <div className="flex gap-3 p-3 sm:p-4">
                  <div className="relative h-20 w-14 shrink-0 overflow-hidden rounded-md bg-muted sm:h-24 sm:w-16">
                    {card.image_url ? (
                      <Image
                        src={card.image_url}
                        alt={`${card.name} card`}
                        fill
                        sizes="64px"
                        className="object-cover"
                      />
                    ) : (
                      <div className="flex h-full items-center justify-center p-2 text-center text-[10px] text-muted-foreground">
                        No image
                      </div>
                    )}
                  </div>

                  <div className="min-w-0 flex-1">
                    <div className="flex items-start justify-between gap-3">
                      <div className="min-w-0">
                        <h2 className="truncate text-base font-semibold leading-tight">
                          {card.name}
                        </h2>
                        <Link
                          href={`/sets/${encodeURIComponent(card.set_id)}`}
                          className="mt-1 inline-block rounded-sm text-sm text-muted-foreground underline-offset-4 hover:text-foreground hover:underline focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring"
                        >
                          {card.sets?.name ?? card.set_id}
                        </Link>
                      </div>
                      <span className="shrink-0 text-sm tabular-nums text-muted-foreground">
                        #{card.collector_number}
                      </span>
                    </div>

                    <div className="mt-3 flex flex-wrap items-center gap-1.5">
                      <Badge
                        variant={isOwned ? "default" : "outline"}
                        className="capitalize"
                      >
                        {isOwned ? "Owned" : "Missing"}
                      </Badge>
                      <Badge variant="secondary" className="capitalize">
                        {formatToken(card.rarity)}
                      </Badge>
                      <Badge variant="outline" className="capitalize">
                        {formatToken(card.energy_type ?? card.category)}
                      </Badge>
                      <Badge variant="outline">{card.set_id}</Badge>
                    </div>

                    <div className="mt-3 flex flex-wrap items-center gap-2">
                      <Button
                        type="button"
                        size="sm"
                        variant={isOwned ? "outline" : "secondary"}
                        disabled={isSaving}
                        aria-pressed={isOwned}
                        aria-label={`${card.name} is ${isOwned ? "owned" : "missing"}. Mark ${isOwned ? "missing" : "owned"}.`}
                        className="min-h-9 min-w-32"
                        onClick={() => toggleCardOwned(card.id, isOwned)}
                      >
                        {isSaving ? (
                          <LoaderCircle
                            className="animate-spin"
                            aria-hidden="true"
                          />
                        ) : isOwned ? (
                          <Check aria-hidden="true" />
                        ) : null}
                        {isSaving
                          ? "Saving"
                          : isOwned
                            ? "Mark missing"
                            : "Mark owned"}
                      </Button>

                      {error ? (
                        <p
                          role="alert"
                          className="text-xs text-destructive"
                        >
                          Could not save. Try again.
                        </p>
                      ) : null}
                    </div>

                    <p className="sr-only" role="status" aria-live="polite">
                      {isSaving
                        ? `Saving ${card.name}`
                        : error
                          ? `Could not save ${card.name}: ${error}`
                          : `${card.name} is ${isOwned ? "owned" : "missing"}`}
                    </p>
                  </div>
                </div>
              </li>
            );
          })}
        </ul>
      ) : (
        <div className="rounded-xl border border-dashed p-8 text-center text-sm text-muted-foreground">
          {hasActiveFilters(filters)
            ? "No cards match that search."
            : "No cards are available yet."}
        </div>
      )}
    </div>
  );
}

function getResultSummary(count: number, filters: SearchResultFilters) {
  const resultText = `${count} ${count === 1 ? "card" : "cards"}`;

  if (filters.q) {
    return `${resultText} for "${filters.q}"${hasStructuredFilters(filters) ? " with filters" : ""}`;
  }

  return hasStructuredFilters(filters)
    ? `${resultText} matching filters`
    : `Showing ${resultText}`;
}

function hasActiveFilters(filters: SearchResultFilters) {
  return Boolean(
    filters.q ||
      filters.setId ||
      filters.rarity ||
      filters.type ||
      filters.owned,
  );
}

function hasStructuredFilters(filters: SearchResultFilters) {
  return Boolean(
    filters.setId || filters.rarity || filters.type || filters.owned,
  );
}

function formatToken(value: string) {
  return value.replaceAll("_", " ");
}
