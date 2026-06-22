"use client";

import { Check, LoaderCircle } from "lucide-react";
import Image from "next/image";
import { useState } from "react";

import { Badge } from "@/components/ui/badge";
import type { Tables } from "@/lib/database.types";
import { createClient } from "@/lib/supabase/client";
import { cn } from "@/lib/utils";

export type CardData = Pick<
  Tables<"cards">,
  | "id"
  | "name"
  | "collector_number"
  | "rarity"
  | "category"
  | "energy_type"
  | "image_url"
>;

type CollectionCardProps = {
  card: CardData;
  initiallyOwned: boolean;
  onOwnedChange: (owned: boolean) => void;
  userId: string;
};

export function CollectionCard({
  card,
  initiallyOwned,
  onOwnedChange,
  userId,
}: CollectionCardProps) {
  const [isOwned, setIsOwned] = useState(initiallyOwned);
  const [isSaving, setIsSaving] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const toggleOwned = async () => {
    if (isSaving) return;

    setIsSaving(true);
    setError(null);

    const supabase = createClient();
    const { error: mutationError } = isOwned
      ? await supabase
          .from("user_cards")
          .delete()
          .eq("user_id", userId)
          .eq("card_id", card.id)
      : await supabase
          .from("user_cards")
          .upsert({ user_id: userId, card_id: card.id });

    if (mutationError) {
      setError(mutationError.message);
    } else {
      const nextOwned = !isOwned;
      setIsOwned(nextOwned);
      onOwnedChange(nextOwned);
    }

    setIsSaving(false);
  };

  return (
    <div className="h-full">
      <button
        type="button"
        onClick={toggleOwned}
        disabled={isSaving}
        aria-pressed={isOwned}
        aria-label={`${card.name}, card ${card.collector_number}. ${isOwned ? "Owned" : "Missing"}. Tap to mark ${isOwned ? "missing" : "owned"}.`}
        className={cn(
          "group h-full w-full overflow-hidden rounded-xl border bg-card text-left shadow-sm transition focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-wait",
          isOwned
            ? "border-primary ring-1 ring-primary"
            : "opacity-75 hover:opacity-100",
          error && "border-destructive ring-1 ring-destructive",
        )}
      >
        <div className="relative aspect-[5/7] overflow-hidden bg-muted">
          {card.image_url ? (
            <Image
              src={card.image_url}
              alt={`${card.name} card`}
              fill
              sizes="(max-width: 640px) 46vw, (max-width: 768px) 30vw, (max-width: 1024px) 23vw, 190px"
              className={cn(
                "object-cover transition",
                !isOwned && "grayscale-[35%]",
              )}
            />
          ) : (
            <div className="flex h-full items-center justify-center p-4 text-center text-xs text-muted-foreground">
              Image unavailable
            </div>
          )}

          <span
            className={cn(
              "absolute right-2 top-2 flex h-8 w-8 items-center justify-center rounded-full border bg-background/90 shadow-sm",
              isOwned &&
                "border-primary bg-primary text-primary-foreground",
            )}
            aria-hidden="true"
          >
            {isSaving ? (
              <LoaderCircle className="h-4 w-4 animate-spin" />
            ) : isOwned ? (
              <Check className="h-4 w-4" />
            ) : null}
          </span>
        </div>

        <div className="space-y-2 p-3">
          <div className="flex items-start justify-between gap-2">
            <h2 className="text-sm font-semibold leading-tight">
              {card.name}
            </h2>
            <span className="shrink-0 text-xs tabular-nums text-muted-foreground">
              #{card.collector_number}
            </span>
          </div>
          <div className="flex flex-wrap gap-1.5">
            <Badge variant="secondary" className="capitalize">
              {card.rarity.replaceAll("_", " ")}
            </Badge>
            <Badge variant="outline" className="capitalize">
              {card.energy_type ?? card.category}
            </Badge>
          </div>
        </div>
      </button>

      <p className="sr-only" role="status" aria-live="polite">
        {isSaving
          ? `Saving ${card.name}`
          : error
            ? `Could not save ${card.name}: ${error}`
            : `${card.name} is ${isOwned ? "owned" : "missing"}`}
      </p>
      {error && (
        <p className="mt-1 text-xs text-destructive" role="alert">
          Could not save. Tap to retry.
        </p>
      )}
    </div>
  );
}
