import { notFound, redirect } from "next/navigation";
import { Suspense } from "react";

import { CollectionCard } from "@/components/collection-card";
import { createClient } from "@/lib/supabase/server";

type SetPageProps = {
  params: Promise<{
    setId: string;
  }>;
};

async function SetDetails({ params }: SetPageProps) {
  const { setId } = await params;
  const supabase = await createClient();
  const { data: authData, error: authError } = await supabase.auth.getUser();

  if (authError || !authData.user) {
    redirect("/auth/login");
  }

  const [{ data: set, error: setError }, { data: cards, error: cardsError }] =
    await Promise.all([
      supabase
        .from("sets")
        .select("id, name, release_date, total_card_count")
        .eq("id", setId)
        .maybeSingle(),
      supabase
        .from("cards")
        .select(
          "id, name, collector_number, rarity, category, energy_type, image_url",
        )
        .eq("set_id", setId)
        .order("collector_number", { ascending: true }),
    ]);

  if (setError || cardsError) {
    throw new Error(
      setError?.message ?? cardsError?.message ?? "Unable to load this set.",
    );
  }

  if (!set) {
    notFound();
  }

  const cardIds = cards.map((card) => card.id);
  const { data: userCards, error: userCardsError } = cardIds.length
    ? await supabase
        .from("user_cards")
        .select("card_id")
        .eq("user_id", authData.user.id)
        .in("card_id", cardIds)
    : { data: [], error: null };

  if (userCardsError) {
    throw new Error(userCardsError.message);
  }

  const ownedCardIds = new Set(userCards.map((userCard) => userCard.card_id));

  return (
    <div className="py-6 sm:py-8">
      <header className="mb-6">
        <p className="text-sm font-medium text-muted-foreground">{set.id}</p>
        <h1 className="mt-1 text-3xl font-bold tracking-tight">{set.name}</h1>
        <div className="mt-2 flex flex-wrap gap-x-4 gap-y-1 text-sm text-muted-foreground">
          <span>
            {cards.length} {cards.length === 1 ? "card" : "cards"}
          </span>
          {set.release_date && (
            <span>
              Released {new Intl.DateTimeFormat("en", { dateStyle: "medium" }).format(new Date(`${set.release_date}T00:00:00`))}
            </span>
          )}
        </div>
      </header>

      {cards.length > 0 ? (
        <ul className="grid grid-cols-2 gap-3 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5">
          {cards.map((card) => (
            <li key={card.id}>
              <CollectionCard
                card={card}
                initiallyOwned={ownedCardIds.has(card.id)}
                userId={authData.user.id}
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

function SetDetailsSkeleton() {
  return (
    <div className="animate-pulse py-6 sm:py-8" aria-label="Loading set">
      <div className="h-4 w-12 rounded bg-muted" />
      <div className="mt-2 h-9 w-52 rounded bg-muted" />
      <div className="mt-3 h-5 w-36 rounded bg-muted" />
      <div className="mt-6 grid grid-cols-2 gap-3 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5">
        {Array.from({ length: 10 }, (_, index) => (
          <div key={index} className="aspect-[5/8] rounded-xl bg-muted" />
        ))}
      </div>
    </div>
  );
}

export default function SetPage({ params }: SetPageProps) {
  return (
    <Suspense
      fallback={<SetDetailsSkeleton />}
    >
      <SetDetails params={params} />
    </Suspense>
  );
}
