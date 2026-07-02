import { Search as SearchIcon, SlidersHorizontal, X } from "lucide-react";
import Link from "next/link";
import { redirect } from "next/navigation";
import { Suspense } from "react";

import {
  SearchResultsList,
  type SearchOwnershipFilter,
  type SearchResultCard,
} from "@/components/search-results-list";
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

type SearchFilters = {
  owned: SearchOwnershipFilter;
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

type ActiveFilterChip = {
  label: string;
  value: string;
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

  const resultCards: SearchResultCard[] = cards.map(
    ({ user_cards, ...card }) => ({
      ...card,
      isOwned: user_cards.length > 0,
    }),
  );
  const activeFilterChips = getActiveFilterChips(filters, filterOptions);
  const structuredFilterCount = getStructuredFilterCount(filters);

  return (
    <div className="py-6 sm:py-8">
      <header className="mb-6">
        <p className="text-sm font-medium text-muted-foreground">Search</p>
        <h1 className="mt-1 text-3xl font-bold tracking-tight">
          Card search
        </h1>
      </header>

      <form action="/search" method="get" className="mb-5 space-y-3">
        <input
          type="checkbox"
          id="search-filters-toggle"
          className="peer sr-only"
          defaultChecked={structuredFilterCount > 0}
          aria-controls="search-filter-fields"
        />

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
        </div>

        <div className="flex flex-wrap items-center gap-2">
          <label
            htmlFor="search-filters-toggle"
            className="inline-flex h-9 cursor-pointer items-center justify-center gap-2 rounded-md border border-input bg-background px-3 text-sm font-medium shadow-sm transition-colors hover:bg-accent hover:text-accent-foreground focus-within:outline-none focus-within:ring-1 focus-within:ring-ring sm:hidden"
          >
            <SlidersHorizontal className="h-4 w-4" aria-hidden="true" />
            Filters
            {structuredFilterCount > 0 ? (
              <span className="text-muted-foreground">
                ({structuredFilterCount})
              </span>
            ) : null}
          </label>

          {activeFilterChips.map((chip) => (
            <span
              key={chip.label}
              className="inline-flex min-h-8 max-w-full items-center rounded-full border bg-secondary px-3 py-1 text-xs font-medium text-secondary-foreground"
            >
              <span className="mr-1 text-muted-foreground">{chip.label}:</span>
              <span className="truncate">{chip.value}</span>
            </span>
          ))}

          {hasActiveFilters(filters) ? (
            <Button
              asChild
              type="button"
              variant="outline"
              size="sm"
              className="h-9"
            >
              <Link href="/search" aria-label="Clear search and filters">
                <X className="h-4 w-4" aria-hidden="true" />
                Clear
              </Link>
            </Button>
          ) : null}
        </div>

        <section
          id="search-filter-fields"
          aria-label="Search filters"
          className="hidden gap-3 rounded-xl border bg-card p-3 shadow-sm peer-checked:grid sm:grid sm:grid-cols-2 lg:grid-cols-4"
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

      <SearchResultsList
        cards={resultCards}
        filters={filters}
        resultLimit={RESULT_LIMIT}
        userId={authData.user.id}
      />
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
): SearchOwnershipFilter {
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

function getActiveFilterChips(
  filters: SearchFilters,
  options: FilterOptions,
): ActiveFilterChip[] {
  const chips: ActiveFilterChip[] = [];

  if (filters.setId) {
    chips.push({
      label: "Set",
      value:
        options.sets.find((set) => set.id === filters.setId)?.name ??
        filters.setId,
    });
  }

  if (filters.rarity) {
    chips.push({ label: "Rarity", value: formatToken(filters.rarity) });
  }

  if (filters.type) {
    chips.push({ label: "Type", value: formatToken(filters.type) });
  }

  if (filters.owned) {
    chips.push({ label: "Status", value: formatToken(filters.owned) });
  }

  return chips;
}

function getStructuredFilterCount(filters: SearchFilters) {
  return [filters.setId, filters.rarity, filters.type, filters.owned].filter(
    Boolean,
  ).length;
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
