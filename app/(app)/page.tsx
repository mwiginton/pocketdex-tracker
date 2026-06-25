import { redirect } from "next/navigation";
import { Suspense } from "react";

import { loadHomeCompletion } from "@/lib/home/data";
import { createClient } from "@/lib/supabase/server";

async function HomeDashboard() {
  const supabase = await createClient();
  const { data: authData, error: authError } = await supabase.auth.getUser();

  if (authError || !authData.user) {
    redirect("/auth/login");
  }

  const completion = await loadHomeCompletion(supabase);
  const setCount = completion.sets.length;

  return (
    <div className="py-6 sm:py-8">
      <header className="mb-6">
        <p className="text-sm font-medium text-muted-foreground">Home</p>
        <h1 className="mt-1 text-3xl font-bold tracking-tight">
          Collection dashboard
        </h1>
      </header>

      <section
        aria-label="Overall collection completion"
        className="rounded-xl border bg-card p-4 shadow-sm sm:p-5"
      >
        <p className="text-sm font-medium text-muted-foreground">
          Overall completion
        </p>
        <p className="mt-1 text-3xl font-bold tabular-nums">
          {formatPercent(completion.summary.completionRatio)}
        </p>
        <p className="mt-2 text-sm text-muted-foreground">
          {completion.summary.ownedCards} of {completion.summary.totalCards}{" "}
          cards owned across {setCount} {setCount === 1 ? "set" : "sets"}.
        </p>
      </section>

      <section aria-label="Set completion totals" className="mt-6">
        <h2 className="text-base font-semibold">Set totals</h2>
        {completion.sets.length > 0 ? (
          <ul className="mt-3 divide-y rounded-xl border bg-card shadow-sm">
            {completion.sets.map((set) => (
              <li
                key={set.set_id}
                className="flex items-center justify-between gap-4 p-4"
              >
                <div className="min-w-0">
                  <h3 className="truncate text-sm font-semibold">
                    {set.set_name}
                  </h3>
                  <p className="mt-1 text-xs text-muted-foreground">
                    {set.set_id}
                  </p>
                </div>
                <div className="shrink-0 text-right">
                  <p className="text-sm font-semibold tabular-nums">
                    {formatPercent(set.completionRatio)}
                  </p>
                  <p className="mt-1 text-xs text-muted-foreground tabular-nums">
                    {set.owned_cards}/{set.total_cards}
                  </p>
                </div>
              </li>
            ))}
          </ul>
        ) : (
          <div className="mt-3 rounded-xl border border-dashed p-8 text-center text-sm text-muted-foreground">
            No sets are available yet.
          </div>
        )}
      </section>
    </div>
  );
}

function HomeSkeleton() {
  return (
    <div className="animate-pulse py-6 sm:py-8" aria-label="Loading dashboard">
      <div className="h-4 w-12 rounded bg-muted" />
      <div className="mt-2 h-9 w-64 rounded bg-muted" />
      <div className="mt-6 h-36 rounded-xl bg-muted" />
      <div className="mt-6 h-5 w-24 rounded bg-muted" />
      <div className="mt-3 space-y-0 overflow-hidden rounded-xl border">
        {Array.from({ length: 4 }, (_, index) => (
          <div key={index} className="h-20 border-b bg-muted last:border-b-0" />
        ))}
      </div>
    </div>
  );
}

function formatPercent(value: number) {
  return new Intl.NumberFormat("en", {
    maximumFractionDigits: 0,
    style: "percent",
  }).format(value);
}

export default function HomePage() {
  return (
    <Suspense fallback={<HomeSkeleton />}>
      <HomeDashboard />
    </Suspense>
  );
}
