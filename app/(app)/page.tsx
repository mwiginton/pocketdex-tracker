import { ArrowRight, CheckCircle2, Sparkles, Target } from "lucide-react";
import Link from "next/link";
import { redirect } from "next/navigation";
import { Suspense } from "react";

import { Button } from "@/components/ui/button";
import { loadHomeCompletion } from "@/lib/home/data";
import { createClient } from "@/lib/supabase/server";
import { cn } from "@/lib/utils";

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
        <div className="flex items-start justify-between gap-4">
          <div>
            <p className="text-sm font-medium text-muted-foreground">
              Overall completion
            </p>
            <p className="mt-1 text-4xl font-bold tracking-tight tabular-nums">
              {formatPercent(completion.summary.completionRatio)}
            </p>
          </div>
          <span
            className="flex h-10 w-10 shrink-0 items-center justify-center rounded-md bg-primary text-primary-foreground"
            aria-hidden="true"
          >
            <CheckCircle2 className="h-5 w-5" />
          </span>
        </div>
        <ProgressBar
          className="mt-5"
          label="Overall collection progress"
          value={completion.summary.completionRatio}
        />
        <div className="mt-4 flex flex-wrap gap-x-5 gap-y-2 text-sm text-muted-foreground">
          <span>
            <strong className="font-semibold text-foreground tabular-nums">
              {completion.summary.ownedCards}
            </strong>{" "}
            owned
          </span>
          <span>
            <strong className="font-semibold text-foreground tabular-nums">
              {completion.summary.missingCards}
            </strong>{" "}
            missing
          </span>
          <span>
            <strong className="font-semibold text-foreground tabular-nums">
              {completion.summary.totalCards}
            </strong>{" "}
            total across {setCount} {setCount === 1 ? "set" : "sets"}
          </span>
        </div>
        <Button asChild className="mt-5 min-h-11 w-full sm:w-auto">
          <Link href="/recommend">
            <Sparkles aria-hidden="true" />
            What should I open?
          </Link>
        </Button>
      </section>

      <section aria-label="Closest set to finishing" className="mt-4">
        <div className="rounded-xl border bg-card p-4 shadow-sm sm:p-5">
          <span
            className="flex h-10 w-10 shrink-0 items-center justify-center rounded-md bg-secondary text-secondary-foreground"
            aria-hidden="true"
          >
            <Target className="h-5 w-5" />
          </span>
          <div className="mt-3 min-w-0">
            <p className="text-sm font-medium text-muted-foreground">
              Closest to finishing
            </p>
            {completion.closestSet ? (
              <Link
                href={`/sets/${encodeURIComponent(completion.closestSet.set_id)}`}
                className="-mx-2 mt-1 block rounded-md px-2 py-1 transition hover:bg-accent/60 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring"
              >
                <div className="mt-1 flex flex-wrap items-baseline gap-x-3 gap-y-1">
                  <h2 className="text-xl font-bold leading-tight">
                    {completion.closestSet.set_name}
                  </h2>
                  <ArrowRight
                    className="h-4 w-4 text-muted-foreground"
                    aria-hidden="true"
                  />
                  <span className="text-sm font-medium text-muted-foreground">
                    {completion.closestSet.missing_cards}{" "}
                    {completion.closestSet.missing_cards === 1
                      ? "card"
                      : "cards"}{" "}
                    left
                  </span>
                </div>
                <ProgressBar
                  className="mt-4"
                  label={`${completion.closestSet.set_name} progress`}
                  value={completion.closestSet.completionRatio}
                />
                <p className="mt-2 text-sm text-muted-foreground">
                  {completion.closestSet.owned_cards} of{" "}
                  {completion.closestSet.total_cards} cards owned.
                </p>
              </Link>
            ) : (
              <p className="mt-1 text-xl font-bold leading-tight">
                Every tracked set is complete.
              </p>
            )}
          </div>
        </div>
      </section>

      <section aria-label="Set completion totals" className="mt-6">
        <div className="flex items-end justify-between gap-4">
          <div>
            <p className="text-sm font-medium text-muted-foreground">
              By set
            </p>
            <h2 className="mt-1 text-xl font-bold tracking-tight">
              Progress list
            </h2>
          </div>
          <p className="text-sm text-muted-foreground tabular-nums">
            {setCount} {setCount === 1 ? "set" : "sets"}
          </p>
        </div>
        {completion.sets.length > 0 ? (
          <ul className="mt-3 divide-y rounded-xl border bg-card shadow-sm">
            {completion.sets.map((set) => (
              <li
                key={set.set_id}
                className={cn(
                  "transition",
                  completion.closestSet?.set_id === set.set_id &&
                    "bg-accent/50",
                )}
              >
                <Link
                  href={`/sets/${encodeURIComponent(set.set_id)}`}
                  className="block p-4 transition hover:bg-accent/60 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-inset focus-visible:ring-ring"
                >
                  <div className="flex items-start justify-between gap-4">
                    <div className="min-w-0">
                      <h3 className="truncate text-sm font-semibold">
                        {set.set_name}
                      </h3>
                      <p className="mt-1 text-xs text-muted-foreground">
                        {set.set_id}
                      </p>
                    </div>
                    <div className="flex shrink-0 items-start gap-3 text-right">
                      <div>
                        <p className="text-sm font-semibold tabular-nums">
                          {formatPercent(set.completionRatio)}
                        </p>
                        <p className="mt-1 text-xs text-muted-foreground tabular-nums">
                          {set.owned_cards}/{set.total_cards}
                        </p>
                      </div>
                      <ArrowRight
                        className="mt-0.5 h-4 w-4 text-muted-foreground"
                        aria-hidden="true"
                      />
                    </div>
                  </div>
                  <ProgressBar
                    className="mt-3"
                    label={`${set.set_name} progress`}
                    value={set.completionRatio}
                  />
                </Link>
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

function ProgressBar({
  className,
  label,
  value,
}: {
  className?: string;
  label: string;
  value: number;
}) {
  const percent = Math.max(0, Math.min(100, Math.round(value * 100)));

  return (
    <div
      aria-label={label}
      aria-valuemax={100}
      aria-valuemin={0}
      aria-valuenow={percent}
      className={cn(
        "h-2 w-full overflow-hidden rounded-full bg-muted",
        className,
      )}
      role="progressbar"
    >
      <div
        className="h-full rounded-full bg-primary transition-[width]"
        style={{ width: `${percent}%` }}
      />
    </div>
  );
}

export default function HomePage() {
  return (
    <Suspense fallback={<HomeSkeleton />}>
      <HomeDashboard />
    </Suspense>
  );
}
