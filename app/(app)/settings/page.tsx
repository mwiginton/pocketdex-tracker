import { Download, Upload } from "lucide-react";
import { redirect } from "next/navigation";
import { Suspense } from "react";

import { Button } from "@/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import { createClient } from "@/lib/supabase/server";
import { cn } from "@/lib/utils";

type SettingsPageProps = {
  searchParams: Promise<{
    duplicates?: string | string[];
    import?: string | string[];
    imported?: string | string[];
    message?: string | string[];
    skipped?: string | string[];
  }>;
};

async function SettingsContent({ searchParams }: SettingsPageProps) {
  const importFeedback = getImportFeedback(await searchParams);
  const supabase = await createClient();
  const { data: authData, error: authError } = await supabase.auth.getUser();

  if (authError || !authData.user) {
    redirect("/auth/login");
  }

  const { count, error } = await supabase
    .from("user_cards")
    .select("card_id", { count: "exact", head: true })
    .eq("user_id", authData.user.id);

  if (error) {
    throw new Error(error.message);
  }

  const ownedCardCount = count ?? 0;

  return (
    <div className="py-6 sm:py-8">
      <header className="mb-6">
        <p className="text-sm font-medium text-muted-foreground">Settings</p>
        <h1 className="mt-1 text-3xl font-bold tracking-tight">
          Data safety
        </h1>
      </header>

      <div className="grid gap-4">
        <Card>
          <CardHeader>
            <CardTitle>Export collection</CardTitle>
            <CardDescription>
              Download a copy of your owned-card list for backup or portability.
            </CardDescription>
          </CardHeader>
          <CardContent>
            <div className="mb-4 rounded-lg border bg-muted/40 px-4 py-3">
              <p className="text-sm font-medium">
                {ownedCardCount.toLocaleString()}{" "}
                {ownedCardCount === 1 ? "owned card" : "owned cards"}
              </p>
              <p className="mt-1 text-sm text-muted-foreground">
                Exports include card IDs, owned dates, and card metadata.
              </p>
            </div>

            <div className="flex flex-col gap-2 sm:flex-row">
              <Button asChild className="h-11 sm:w-auto">
                <a href="/settings/export?format=json">
                  <Download aria-hidden="true" />
                  Download JSON
                </a>
              </Button>
              <Button asChild variant="outline" className="h-11 sm:w-auto">
                <a href="/settings/export?format=csv">
                  <Download aria-hidden="true" />
                  Download CSV
                </a>
              </Button>
            </div>
          </CardContent>
        </Card>

        <Card>
          <CardHeader>
            <CardTitle>Import collection</CardTitle>
            <CardDescription>
              Upload a PocketDex JSON or CSV export to add owned cards to this
              account.
            </CardDescription>
          </CardHeader>
          <CardContent>
            {importFeedback ? (
              <div
                className={cn(
                  "mb-4 rounded-lg border px-4 py-3 text-sm",
                  importFeedback.status === "success"
                    ? "border-emerald-500/30 bg-emerald-500/10 text-emerald-950 dark:text-emerald-100"
                    : "border-destructive/30 bg-destructive/10 text-destructive",
                )}
                role={importFeedback.status === "success" ? "status" : "alert"}
              >
                <p className="font-medium">{importFeedback.title}</p>
                {importFeedback.description ? (
                  <p className="mt-1">{importFeedback.description}</p>
                ) : null}
              </div>
            ) : null}

            <form
              action="/settings/import"
              method="post"
              encType="multipart/form-data"
              className="space-y-3"
            >
              <input
                type="file"
                name="collectionFile"
                accept=".json,.csv,application/json,text/csv"
                className="block w-full rounded-md border border-input bg-background text-sm shadow-sm file:mr-3 file:h-11 file:border-0 file:bg-secondary file:px-4 file:text-sm file:font-medium file:text-secondary-foreground focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring"
                required
              />
              <Button type="submit" className="h-11 w-full sm:w-auto">
                <Upload aria-hidden="true" />
                Import collection
              </Button>
            </form>
          </CardContent>
        </Card>
      </div>
    </div>
  );
}

function SettingsSkeleton() {
  return (
    <div className="animate-pulse py-6 sm:py-8" aria-label="Loading settings">
      <div className="h-4 w-16 rounded bg-muted" />
      <div className="mt-2 h-9 w-44 rounded bg-muted" />
      <div className="mt-6 grid gap-4">
        {Array.from({ length: 2 }, (_, index) => (
          <div key={index} className="rounded-xl border p-6">
            <div className="h-5 w-40 rounded bg-muted" />
            <div className="mt-2 h-4 w-full max-w-sm rounded bg-muted" />
            <div className="mt-6 grid gap-3 sm:grid-cols-3">
              <div className="h-20 rounded-lg bg-muted" />
              <div className="h-20 rounded-lg bg-muted" />
              <div className="h-20 rounded-lg bg-muted" />
            </div>
          </div>
        ))}
      </div>
    </div>
  );
}

export default function SettingsPage({ searchParams }: SettingsPageProps) {
  return (
    <Suspense fallback={<SettingsSkeleton />}>
      <SettingsContent searchParams={searchParams} />
    </Suspense>
  );
}

function getImportFeedback(
  searchParams: Awaited<SettingsPageProps["searchParams"]>,
) {
  const status = getSingleSearchParam(searchParams.import);

  if (status === "success") {
    const imported = getPositiveInteger(searchParams.imported);
    const skipped = getPositiveInteger(searchParams.skipped);
    const duplicates = getPositiveInteger(searchParams.duplicates);
    const details = [
      skipped > 0
        ? `${skipped.toLocaleString()} unknown or empty ${skipped === 1 ? "row was" : "rows were"} skipped`
        : null,
      duplicates > 0
        ? `${duplicates.toLocaleString()} duplicate ${duplicates === 1 ? "row was" : "rows were"} ignored`
        : null,
    ].filter(Boolean);

    return {
      status,
      title: `${imported.toLocaleString()} ${imported === 1 ? "card" : "cards"} imported.`,
      description: details.length > 0 ? `${details.join("; ")}.` : null,
    };
  }

  if (status === "error") {
    return {
      status,
      title: "Import failed.",
      description:
        getSingleSearchParam(searchParams.message) ??
        "Check the file and try again.",
    };
  }

  return null;
}

function getPositiveInteger(value: string | string[] | undefined) {
  const numberValue = Number.parseInt(getSingleSearchParam(value) ?? "0", 10);

  return Number.isFinite(numberValue) && numberValue > 0 ? numberValue : 0;
}

function getSingleSearchParam(value: string | string[] | undefined) {
  return Array.isArray(value) ? value[0] : value;
}
