import { ChevronDown, Sparkles } from "lucide-react";
import { redirect } from "next/navigation";
import { Suspense } from "react";

import { Badge } from "@/components/ui/badge";
import { Card, CardContent } from "@/components/ui/card";
import { loadPackRecommendations } from "@/lib/recommendation/data";
import { createClient } from "@/lib/supabase/server";

async function RecommendContent() {
  const supabase = await createClient();
  const { data: authData, error: authError } = await supabase.auth.getUser();

  if (authError || !authData.user) {
    redirect("/auth/login");
  }

  const recommendations = await loadPackRecommendations(supabase);
  const topRecommendation = recommendations[0];

  return (
    <div className="py-6 sm:py-8">
      <header className="mb-6">
        <p className="text-sm font-medium text-muted-foreground">
          Pack recommendation
        </p>
        <h1 className="mt-1 text-3xl font-bold tracking-tight">
          What should I open?
        </h1>
      </header>

      {topRecommendation ? (
        <div className="space-y-4">
          <section
            aria-label="Top recommendation"
            className="rounded-xl border bg-card p-4 shadow-sm sm:p-5"
          >
            <div className="flex items-start gap-3">
              <span
                className="flex h-10 w-10 shrink-0 items-center justify-center rounded-md bg-primary text-primary-foreground"
                aria-hidden="true"
              >
                <Sparkles className="h-5 w-5" />
              </span>
              <div className="min-w-0 flex-1">
                <div className="flex flex-wrap items-center gap-2">
                  <h2 className="text-xl font-bold leading-tight">
                    {topRecommendation.pack.name}
                  </h2>
                  <Badge variant="secondary">
                    {topRecommendation.pack.set_id}
                  </Badge>
                </div>
                <p className="mt-2 text-sm text-muted-foreground">
                  Best current expected value across your missing cards.
                </p>
              </div>
            </div>
            <p className="mt-5 text-4xl font-bold tabular-nums tracking-tight">
              {formatExpectedNewCards(topRecommendation.expectedNewCards)}
              <span className="ml-2 align-middle text-base font-medium text-muted-foreground">
                new cards / pack
              </span>
            </p>
          </section>

          <ol className="space-y-3" aria-label="Pack rankings">
            {recommendations.map((recommendation, index) => (
              <li key={recommendation.pack.id}>
                <Card className="shadow-sm">
                  <CardContent className="p-0">
                    <details className="group">
                      <summary className="flex cursor-pointer list-none items-center gap-3 p-4 transition hover:bg-accent/50 [&::-webkit-details-marker]:hidden">
                        <div className="flex h-9 w-9 shrink-0 items-center justify-center rounded-md border bg-background text-sm font-semibold tabular-nums">
                          {index + 1}
                        </div>
                        <div className="min-w-0 flex-1">
                          <div className="flex flex-wrap items-center gap-x-2 gap-y-1">
                            <h2 className="truncate text-base font-semibold">
                              {recommendation.pack.name}
                            </h2>
                            <Badge variant="outline">
                              {recommendation.pack.set_id}
                            </Badge>
                          </div>
                          <p className="mt-1 text-sm text-muted-foreground">
                            {recommendation.missingCardCount} missing{" "}
                            {recommendation.missingCardCount === 1
                              ? "card"
                              : "cards"}{" "}
                            with pull odds
                          </p>
                        </div>
                        <div className="text-right">
                          <p className="text-lg font-bold tabular-nums">
                            {formatExpectedNewCards(
                              recommendation.expectedNewCards,
                            )}
                          </p>
                          <p className="text-xs text-muted-foreground">
                            new / pack
                          </p>
                        </div>
                        <ChevronDown
                          className="h-4 w-4 shrink-0 text-muted-foreground transition group-open:rotate-180"
                          aria-hidden="true"
                        />
                      </summary>

                      <div className="border-t px-4 pb-4 pt-3">
                        <div className="mb-3 flex items-center justify-between gap-3">
                          <h3 className="text-sm font-semibold">
                            Missing cards this pack can pull
                          </h3>
                          <span className="text-xs text-muted-foreground">
                            {recommendation.cards.length} total
                          </span>
                        </div>
                        <ul className="max-h-80 space-y-2 overflow-y-auto pr-1">
                          {recommendation.cards.map(({ card, pullProbability }) => (
                            <li
                              key={card.id}
                              className="flex items-center gap-3 rounded-md border bg-background p-3"
                            >
                              <span className="w-10 shrink-0 text-sm tabular-nums text-muted-foreground">
                                #{card.collector_number}
                              </span>
                              <div className="min-w-0 flex-1">
                                <p className="truncate text-sm font-medium">
                                  {card.name}
                                </p>
                                <Badge
                                  variant="secondary"
                                  className="mt-1 capitalize"
                                >
                                  {formatRarity(card.rarity)}
                                </Badge>
                              </div>
                              <div className="text-right">
                                <p className="text-sm font-semibold tabular-nums">
                                  {formatPullProbability(pullProbability)}
                                </p>
                                <p className="text-xs text-muted-foreground">
                                  chance
                                </p>
                              </div>
                            </li>
                          ))}
                        </ul>
                      </div>
                    </details>
                  </CardContent>
                </Card>
              </li>
            ))}
          </ol>
        </div>
      ) : (
        <div className="rounded-xl border border-dashed p-8 text-center text-sm text-muted-foreground">
          No pack recommendations are available yet.
        </div>
      )}
    </div>
  );
}

function RecommendSkeleton() {
  return (
    <div className="animate-pulse py-6 sm:py-8" aria-label="Loading recommendations">
      <div className="h-4 w-36 rounded bg-muted" />
      <div className="mt-2 h-9 w-64 rounded bg-muted" />
      <div className="mt-6 h-36 rounded-xl bg-muted" />
      <div className="mt-4 space-y-3">
        {Array.from({ length: 3 }, (_, index) => (
          <div key={index} className="h-24 rounded-xl bg-muted" />
        ))}
      </div>
    </div>
  );
}

function formatExpectedNewCards(value: number) {
  return new Intl.NumberFormat("en", {
    maximumFractionDigits: 2,
    minimumFractionDigits: value > 0 && value < 0.01 ? 4 : 2,
  }).format(value);
}

function formatPullProbability(value: number) {
  return new Intl.NumberFormat("en", {
    maximumFractionDigits: 2,
    minimumFractionDigits: value > 0 && value < 0.0001 ? 4 : 2,
    style: "percent",
  }).format(value);
}

function formatRarity(rarity: string) {
  return rarity.replaceAll("_", " ");
}

export default function RecommendPage() {
  return (
    <Suspense fallback={<RecommendSkeleton />}>
      <RecommendContent />
    </Suspense>
  );
}
