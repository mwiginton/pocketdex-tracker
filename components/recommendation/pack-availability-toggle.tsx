"use client";

import { useRouter } from "next/navigation";
import { useTransition } from "react";

import { Checkbox } from "@/components/ui/checkbox";
import { Label } from "@/components/ui/label";
import { setIncludeUnavailablePacksPreference } from "@/app/(app)/recommend/actions";

type PackAvailabilityToggleProps = {
  includeUnavailablePacks: boolean;
};

export function PackAvailabilityToggle({
  includeUnavailablePacks,
}: PackAvailabilityToggleProps) {
  const router = useRouter();
  const [isPending, startTransition] = useTransition();

  return (
    <section
      aria-label="Pack availability"
      className="mb-6 rounded-xl border bg-card p-4 shadow-sm"
    >
      <div className="flex items-start gap-3">
        <Checkbox
          id="include-unavailable-packs"
          checked={includeUnavailablePacks}
          disabled={isPending}
          onCheckedChange={(checked) => {
            startTransition(async () => {
              await setIncludeUnavailablePacksPreference(checked === true);
              router.refresh();
            });
          }}
        />
        <div className="min-w-0 flex-1">
          <Label
            htmlFor="include-unavailable-packs"
            className="cursor-pointer text-sm font-semibold"
          >
            Include unavailable limited-time packs
          </Label>
          <p className="mt-1 text-sm text-muted-foreground">
            Off by default so the top pick is a pack you can open right now.
          </p>
        </div>
      </div>
    </section>
  );
}
