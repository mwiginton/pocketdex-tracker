import { Search as SearchIcon, X } from "lucide-react";
import Image from "next/image";
import Link from "next/link";
import { redirect } from "next/navigation";
import { Suspense } from "react";

import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { createClient } from "@/lib/supabase/server";

type SearchPageProps = {
  searchParams: Promise<{
    owned?: string | string[];
    q?: string | string[];
    rarity?: string | string[];
    setId?: string | string[];
    type?: string | string[];
  }>;
};

type OwnershipFilter = "" | "missing" | "owned";

type SearchFilters = {
  owned: OwnershipFilter;
  q: string;
  rarity: string;
  setId: string;
  type: string;
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
  user_cards: {
    card_id: string;
  }[];
};

type SearchSet = {
  id: string;
  name: string;
};

type FilterCardMetadata = {
  category: string;
  energy_type: string | null;
  rarity: string;
};

type FilterOptions = {
  rarities: string[];
  sets: SearchSet[];
  types: string[];
};

const RESULT_LIMIT = 120;
const OPTION_ROW_LIMIT = 10000;
const selectClassName =
  "h-11 w-full rounded-md border border-input bg-background px-3 text-sm shadow-sm transition-colors focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring";

async function SearchContent({ searchParams }: SearchPageProps) {
  const rawSearchParams = await searchParams;
  const supabase = await createClient();
  const { data: authData, error: authError } = await supabase.auth.getUser();

  if (authError || !authData.user) {
    redirect("/auth/login");
  }

  const [
    { data: sets, error: setsError },
    { data: filterCardMetadata, error: filterCardMetadataError },
  ] = await Promise.all([
    supabase
      .from("sets")
      .select("id, name")
      .order("release_date", { ascending: false, nullsFirst: false })
      .order("id", { ascending: true }),
    supabase
      .from("cards")
      .select("rarity, category, energy_type")
      .range(0, OPTION_ROW_LIMIT - 1)
      .returns<FilterCardMetadata[]>(),
  ]);

  if (setsError || filterCardMetadataError) {
    throw new Error(
      setsError?.message ??
        filterCardMetadataError?.message ??
        "Unable to load search filters.",
    );
  }

  const filterOptions = getFilterOptions(sets, filterCardMetadata);
  const filters = getSearchFilters(rawSearchParams, filterOptions);
  const ownershipJoin =
    filters.owned === "owned"
      ? "user_cards!inner (card_id)"
      : "user_cards (card_id)";

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
        ),
        ${ownershipJoin}
      `,
    )
    .order("set_id", { ascending: true })
    .order("collector_number", { ascending: true })
    .limit(RESULT_LIMIT);

  if (filters.q) {
    cardsQuery = cardsQuery.ilike("name", `%${filters.q}%`);
  }

  if (filters.setId) {
    cardsQuery = cardsQuery.eq("set_id", filters.setId);
  }

  if (filters.rarity) {
    cardsQuery = cardsQuery.eq("rarity", filters.rarity);
  }

  if (filters.type) {
    const typeValue = formatPostgrestFilterValue(filters.type);

    cardsQuery = cardsQuery.or(
      `energy_type.eq.${typeValue},category.eq.${typeValue}`,
    );
  }

  if (filters.owned === "missing") {
    cardsQuery = cardsQuery.is("user_cards.card_id", null);
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

      <form action="/search" method="get" className="mb-5 space-y-3">
        <div className="flex gap-2">
          <div className="relative min-w-0 flex-1">
            <SearchIcon
              className="pointer-events-none absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-muted-foreground"
              aria-hidden="true"
            />
            <Input
              className="h-11 pl-9"
              defaultValue={filters.q}
              name="q"
              placeholder="Search card names"
              type="search"
            />
          </div>
          <Button type="submit" className="h-11 shrink-0">
            Search
          </Button>
          {hasActiveFilters(filters) ? (
            <Button
              asChild
              type="button"
              variant="outline"
              size="icon"
              className="h-11 w-11 shrink-0"
            >
              <Link href="/search" aria-label="Clear search and filters">
                <X className="h-4 w-4" aria-hidden="true" />
              </Link>
            </Button>
          ) : null}
        </div>

        <section
          aria-label="Search filters"
          className="grid gap-3 rounded-xl border bg-card p-3 shadow-sm sm:grid-cols-2 lg:grid-cols-4"
        >
          <div className="space-y-2">
            <Label htmlFor="search-set">Set</Label>
            <select
              id="search-set"
              name="setId"
              defaultValue={filters.setId}
              className={selectClassName}
            >
              <option value="">All sets</option>
              {filterOptions.sets.map((set) => (
                <option key={set.id} value={set.id}>
                  {set.name}
                </option>
              ))}
            </select>
          </div>

          <div className="space-y-2">
            <Label htmlFor="search-rarity">Rarity</Label>
            <select
              id="search-rarity"
              name="rarity"
              defaultValue={filters.rarity}
              className={selectClassName}
            >
              <option value="">All rarities</option>
              {filterOptions.rarities.map((rarity) => (
                <option key={rarity} value={rarity}>
                  {formatToken(rarity)}
                </option>
              ))}
            </select>
          </div>

          <div className="space-y-2">
            <Label htmlFor="search-type">Type</Label>
            <select
              id="search-type"
              name="type"
              defaultValue={filters.type}
              className={selectClassName}
            >
              <option value="">All types</option>
              {filterOptions.types.map((type) => (
                <option key={type} value={type}>
                  {formatToken(type)}
                </option>
              ))}
            </select>
          </div>

          <div className="space-y-2">
            <Label htmlFor="search-owned">Owned status</Label>
            <select
              id="search-owned"
              name="owned"
              defaultValue={filters.owned}
              className={selectClassName}
            >
              <option value="">All cards</option>
              <option value="owned">Owned</option>
              <option value="missing">Missing</option>
            </select>
          </div>
        </section>
      </form>

      <div className="mb-3 flex items-center justify-between gap-3">
        <p className="text-sm text-muted-foreground" aria-live="polite">
          {getResultSummary(cards.length, filters)}
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
                    <Badge
                      variant={isOwned(card) ? "default" : "outline"}
                      className="capitalize"
                    >
                      {isOwned(card) ? "Owned" : "Missing"}
                    </Badge>
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
          {hasActiveFilters(filters)
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

function getSearchFilters(
  searchParams: Awaited<SearchPageProps["searchParams"]>,
  options: FilterOptions,
): SearchFilters {
  const q = normalizeQuery(searchParams.q);
  const setId = normalizeFilterValue(
    searchParams.setId,
    options.sets.map((set) => set.id),
  );
  const rarity = normalizeFilterValue(searchParams.rarity, options.rarities);
  const type = normalizeFilterValue(searchParams.type, options.types);
  const owned = normalizeOwnershipFilter(searchParams.owned);

  return { owned, q, rarity, setId, type };
}

function getFilterOptions(
  sets: SearchSet[],
  cards: FilterCardMetadata[],
): FilterOptions {
  return {
    rarities: getSortedUniqueValues(cards.map((card) => card.rarity)),
    sets,
    types: getSortedUniqueValues(
      cards.map((card) => card.energy_type ?? card.category),
    ),
  };
}

function normalizeQuery(value: string | string[] | undefined) {
  const rawValue = Array.isArray(value) ? value[0] : value;

  return rawValue?.trim().replace(/\s+/g, " ").slice(0, 80) ?? "";
}

function normalizeFilterValue(
  value: string | string[] | undefined,
  allowedValues: string[],
) {
  const rawValue = getSingleSearchParam(value);

  return rawValue && allowedValues.includes(rawValue) ? rawValue : "";
}

function normalizeOwnershipFilter(
  value: string | string[] | undefined,
): OwnershipFilter {
  const rawValue = getSingleSearchParam(value);

  return rawValue === "owned" || rawValue === "missing" ? rawValue : "";
}

function getSingleSearchParam(value: string | string[] | undefined) {
  return Array.isArray(value) ? value[0] : value;
}

function getSortedUniqueValues(values: Array<string | null | undefined>) {
  return Array.from(
    new Set(values.filter((value): value is string => Boolean(value))),
  ).sort((a, b) => formatToken(a).localeCompare(formatToken(b)));
}

function formatPostgrestFilterValue(value: string) {
  if (/^[A-Za-z0-9_.~-]+$/.test(value)) {
    return value;
  }

  return `"${value.replaceAll("\\", "\\\\").replaceAll('"', '\\"')}"`;
}

function hasActiveFilters(filters: SearchFilters) {
  return Boolean(
    filters.q ||
      filters.setId ||
      filters.rarity ||
      filters.type ||
      filters.owned,
  );
}

function getResultSummary(count: number, filters: SearchFilters) {
  const resultText = `${count} ${count === 1 ? "card" : "cards"}`;

  if (filters.q) {
    return `${resultText} for "${filters.q}"${hasStructuredFilters(filters) ? " with filters" : ""}`;
  }

  return hasStructuredFilters(filters)
    ? `${resultText} matching filters`
    : `Showing ${resultText}`;
}

function hasStructuredFilters(filters: SearchFilters) {
  return Boolean(filters.setId || filters.rarity || filters.type || filters.owned);
}

function isOwned(card: SearchCard) {
  return card.user_cards.length > 0;
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
