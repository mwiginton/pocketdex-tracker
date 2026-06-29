"use client";

import { useMemo, useState } from "react";
import { Check, ChevronDown, Search } from "lucide-react";
import Link from "next/link";

import { Button } from "@/components/ui/button";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuLabel,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu";
import { Input } from "@/components/ui/input";
import { cn } from "@/lib/utils";

type RecommendationSet = {
  id: string;
  name: string;
};

type ScopePickerProps = {
  selectedSet?: RecommendationSet;
  sets: RecommendationSet[];
};

export function ScopePicker({ selectedSet, sets }: ScopePickerProps) {
  const [query, setQuery] = useState("");
  const normalizedQuery = normalizeSearchText(query);
  const filteredSets = useMemo(() => {
    if (!normalizedQuery) return sets;

    return sets.filter((set) =>
      normalizeSearchText(`${set.name} ${set.id}`).includes(normalizedQuery),
    );
  }, [normalizedQuery, sets]);

  return (
    <section aria-label="Recommendation scope" className="mb-6 space-y-3">
      <p className="text-sm font-medium text-muted-foreground">Scope</p>
      <DropdownMenu onOpenChange={(open) => !open && setQuery("")}>
        <DropdownMenuTrigger asChild>
          <Button
            type="button"
            variant="outline"
            className="w-full justify-between border-[hsl(var(--app-blue)/0.3)] bg-[hsl(var(--app-blue)/0.04)] sm:w-80"
          >
            <span className="min-w-0 truncate text-left">
              {selectedSet ? selectedSet.name : "Whole collection"}
            </span>
            <ChevronDown className="h-4 w-4 shrink-0 text-muted-foreground" />
          </Button>
        </DropdownMenuTrigger>
        <DropdownMenuContent
          align="start"
          className="w-[calc(100vw-2rem)] max-w-96 p-0"
        >
          <DropdownMenuLabel className="px-3 pt-3 text-xs uppercase text-muted-foreground">
            Choose scope
          </DropdownMenuLabel>
          <div className="p-2" onKeyDown={(event) => event.stopPropagation()}>
            <div className="relative">
              <Search
                className="pointer-events-none absolute left-2.5 top-1/2 h-4 w-4 -translate-y-1/2 text-muted-foreground"
                aria-hidden="true"
              />
              <Input
                value={query}
                onChange={(event) => setQuery(event.target.value)}
                placeholder="Search sets"
                className="pl-8"
              />
            </div>
          </div>
          <DropdownMenuSeparator className="m-0" />
          <div className="max-h-80 overflow-y-auto p-1">
            <ScopePickerItem
              href="/recommend"
              isSelected={!selectedSet}
              label="Whole collection"
            />
            {filteredSets.map((set) => (
              <ScopePickerItem
                key={set.id}
                href={`/recommend?setId=${encodeURIComponent(set.id)}`}
                isSelected={selectedSet?.id === set.id}
                label={set.name}
              />
            ))}
            {filteredSets.length === 0 ? (
              <p className="px-2 py-6 text-center text-sm text-muted-foreground">
                No sets found.
              </p>
            ) : null}
          </div>
        </DropdownMenuContent>
      </DropdownMenu>
    </section>
  );
}

function ScopePickerItem({
  href,
  isSelected,
  label,
}: {
  href: string;
  isSelected: boolean;
  label: string;
}) {
  return (
    <DropdownMenuItem asChild>
      <Link
        href={href}
        aria-current={isSelected ? "page" : undefined}
        className="flex w-full items-center"
      >
        <Check
          className={cn(
            "h-4 w-4 shrink-0",
            isSelected ? "opacity-100" : "opacity-0",
          )}
          aria-hidden="true"
        />
        <span className="min-w-0 truncate">{label}</span>
      </Link>
    </DropdownMenuItem>
  );
}

function normalizeSearchText(value: string) {
  return value.trim().toLocaleLowerCase();
}
