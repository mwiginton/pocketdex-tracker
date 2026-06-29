import Link from "next/link";
import { Suspense } from "react";

import {
  DesktopNavigation,
  MobileNavigation,
} from "@/components/app-navigation";
import { LogoutButton } from "@/components/logout-button";

type AppShellProps = {
  children: React.ReactNode;
};

export function AppShell({ children }: AppShellProps) {
  return (
    <div className="min-h-dvh bg-background bg-[linear-gradient(180deg,hsl(var(--app-blue)/0.08),transparent_17rem)] text-foreground">
      <header className="sticky top-0 z-40 border-b bg-background/95 backdrop-blur">
        <div
          aria-hidden="true"
          className="absolute inset-x-0 bottom-0 h-px bg-[linear-gradient(90deg,hsl(var(--app-blue)/0.75),hsl(var(--app-yellow)/0.85),hsl(var(--app-red)/0.75))]"
        />
        <div className="mx-auto flex h-14 w-full max-w-5xl items-center justify-between px-4">
          <Link href="/" className="flex items-baseline gap-1">
            <span className="text-base font-bold">
              Pocket<span className="text-[hsl(var(--app-yellow))]">Dex</span>
            </span>
            <span className="text-sm text-muted-foreground">Tracker</span>
          </Link>
          <div className="flex items-center gap-2">
            <Suspense fallback={<div className="hidden h-9 md:block" />}>
              <DesktopNavigation />
            </Suspense>
            <LogoutButton className="shrink-0" />
          </div>
        </div>
      </header>

      <main className="mx-auto w-full max-w-5xl px-4 pb-[calc(5rem+env(safe-area-inset-bottom))] md:pb-12">
        {children}
      </main>

      <Suspense fallback={<div className="h-16 md:hidden" />}>
        <MobileNavigation />
      </Suspense>
    </div>
  );
}
