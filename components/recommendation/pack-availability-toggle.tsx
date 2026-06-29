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
      className="mb-6 rounded-xl border border-[hsl(var(--app-blue)/0.22)] bg-card bg-[linear-gradient(90deg,hsl(var(--app-blue)/0.06),transparent_55%)] p-4 shadow-sm"
    >
      <div className="flex items-start gap-3">
        <Checkbox
          id="include-unavailable-packs"
          className="border-[hsl(var(--app-blue)/0.65)] data-[state=checked]:bg-[hsl(var(--app-blue))] data-[state=checked]:text-[hsl(var(--app-yellow))]"
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
