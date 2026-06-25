import { Search as SearchIcon, X } from "lucide-react";
import Image from "next/image";
import Link from "next/link";
import { redirect } from "next/navigation";
import { Suspense } from "react";

import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { createClient } from "@/lib/supabase/server";

type SearchPageProps = {
  searchParams: Promise<{
    q?: string | string[];
  }>;
};

type SearchCard = {
  id: string;
  name: string;
  collector_number: number;
  rarity: string;
  category: string;
  energy_type: string | null;
  image_url: string | null;
  set_id: string;
  sets: {
    id: string;
    name: string;
  } | null;
};

const RESULT_LIMIT = 120;

async function SearchContent({ searchParams }: SearchPageProps) {
  const query = normalizeQuery((await searchParams).q);
  const supabase = await createClient();
  const { data: authData, error: authError } = await supabase.auth.getUser();

  if (authError || !authData.user) {
    redirect("/auth/login");
  }

  let cardsQuery = supabase
    .from("cards")
    .select(
      `
        id,
        name,
        collector_number,
        rarity,
        category,
        energy_type,
        image_url,
        set_id,
        sets (
          id,
          name
        )
      `,
    )
    .order("set_id", { ascending: true })
    .order("collector_number", { ascending: true })
    .limit(RESULT_LIMIT);

  if (query) {
    cardsQuery = cardsQuery.ilike("name", `%${query}%`);
  }

  const { data: cards, error } = await cardsQuery.returns<SearchCard[]>();

  if (error) {
    throw new Error(error.message);
  }

  return (
    <div className="py-6 sm:py-8">
      <header className="mb-6">
        <p className="text-sm font-medium text-muted-foreground">Search</p>
        <h1 className="mt-1 text-3xl font-bold tracking-tight">
          Card search
        </h1>
      </header>

      <form action="/search" className="mb-5 flex gap-2">
        <div className="relative min-w-0 flex-1">
          <SearchIcon
            className="pointer-events-none absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-muted-foreground"
            aria-hidden="true"
          />
          <Input
            className="h-11 pl-9"
            defaultValue={query}
            name="q"
            placeholder="Search card names"
            type="search"
          />
        </div>
        <Button type="submit" className="h-11 shrink-0">
          Search
        </Button>
        {query ? (
          <Button
            asChild
            type="button"
            variant="outline"
            size="icon"
            className="h-11 w-11 shrink-0"
          >
            <Link href="/search" aria-label="Clear search">
              <X className="h-4 w-4" aria-hidden="true" />
            </Link>
          </Button>
        ) : null}
      </form>

      <div className="mb-3 flex items-center justify-between gap-3">
        <p className="text-sm text-muted-foreground" aria-live="polite">
          {query
            ? `${cards.length} ${cards.length === 1 ? "result" : "results"} for "${query}"`
            : `Showing ${cards.length} ${cards.length === 1 ? "card" : "cards"}`}
        </p>
        {cards.length === RESULT_LIMIT ? (
          <p className="text-xs text-muted-foreground">
            First {RESULT_LIMIT} shown
          </p>
        ) : null}
      </div>

      {cards.length > 0 ? (
        <ul className="divide-y overflow-hidden rounded-xl border bg-card shadow-sm">
          {cards.map((card) => (
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

                  <div className="mt-3 flex flex-wrap gap-1.5">
                    <Badge variant="secondary" className="capitalize">
                      {formatToken(card.rarity)}
                    </Badge>
                    <Badge variant="outline" className="capitalize">
                      {formatToken(card.energy_type ?? card.category)}
                    </Badge>
                    <Badge variant="outline">{card.set_id}</Badge>
                  </div>
                </div>
              </div>
            </li>
          ))}
        </ul>
      ) : (
        <div className="rounded-xl border border-dashed p-8 text-center text-sm text-muted-foreground">
          {query
            ? "No cards match that search."
            : "No cards are available yet."}
        </div>
      )}
    </div>
  );
}

function SearchSkeleton() {
  return (
    <div className="animate-pulse py-6 sm:py-8" aria-label="Loading search">
      <div className="h-4 w-16 rounded bg-muted" />
      <div className="mt-2 h-9 w-48 rounded bg-muted" />
      <div className="mt-6 h-11 rounded-md bg-muted" />
      <div className="mt-5 overflow-hidden rounded-xl border">
        {Array.from({ length: 6 }, (_, index) => (
          <div key={index} className="h-28 border-b bg-muted last:border-b-0" />
        ))}
      </div>
    </div>
  );
}

function normalizeQuery(value: string | string[] | undefined) {
  const rawValue = Array.isArray(value) ? value[0] : value;

  return rawValue?.trim().replace(/\s+/g, " ").slice(0, 80) ?? "";
}

function formatToken(value: string) {
  return value.replaceAll("_", " ");
}

export default function SearchPage({ searchParams }: SearchPageProps) {
  return (
    <Suspense fallback={<SearchSkeleton />}>
      <SearchContent searchParams={searchParams} />
    </Suspense>
  );
}
