"use client";

import { House, Search, Settings, Sparkles, type LucideIcon } from "lucide-react";
import Link from "next/link";
import { usePathname } from "next/navigation";

import { cn } from "@/lib/utils";

type NavigationItem = {
  href: string;
  label: string;
  icon: LucideIcon;
  activePaths: string[];
};

const navigationItems: NavigationItem[] = [
  {
    href: "/",
    label: "Home",
    icon: House,
    activePaths: ["/", "/sets"],
  },
  {
    href: "/recommend",
    label: "Recommend",
    icon: Sparkles,
    activePaths: ["/recommend"],
  },
  {
    href: "/search",
    label: "Search",
    icon: Search,
    activePaths: ["/search"],
  },
  {
    href: "/settings",
    label: "Settings",
    icon: Settings,
    activePaths: ["/settings"],
  },
];

function isItemActive(pathname: string, activePaths: string[]) {
  return activePaths.some((path) =>
    path === "/" ? pathname === path : pathname.startsWith(path),
  );
}

export function DesktopNavigation() {
  const pathname = usePathname();

  return (
    <nav aria-label="Primary navigation" className="hidden md:block">
      <ul className="flex items-center gap-1">
        {navigationItems.map((item) => {
          const active = isItemActive(pathname, item.activePaths);
          const Icon = item.icon;

          return (
            <li key={item.href}>
              <Link
                href={item.href}
                aria-current={active ? "page" : undefined}
                className={cn(
                  "flex h-9 items-center gap-2 rounded-md px-3 text-sm font-medium text-muted-foreground transition-colors hover:bg-accent hover:text-foreground",
                  active && "bg-accent text-foreground",
                )}
              >
                <Icon aria-hidden="true" className="h-4 w-4" />
                {item.label}
              </Link>
            </li>
          );
        })}
      </ul>
    </nav>
  );
}

export function MobileNavigation() {
  const pathname = usePathname();

  return (
    <nav
      aria-label="Primary navigation"
      className="fixed inset-x-0 bottom-0 z-50 border-t bg-background/95 pb-[env(safe-area-inset-bottom)] backdrop-blur md:hidden"
    >
      <ul className="mx-auto grid h-16 w-full max-w-md grid-cols-4">
        {navigationItems.map((item) => {
          const active = isItemActive(pathname, item.activePaths);
          const Icon = item.icon;

          return (
            <li key={item.href} className="min-w-0">
              <Link
                href={item.href}
                aria-current={active ? "page" : undefined}
                className={cn(
                  "flex h-16 min-w-0 flex-col items-center justify-center gap-1 px-1 text-[11px] font-medium text-muted-foreground transition-colors",
                  active && "text-foreground",
                )}
              >
                <Icon
                  aria-hidden="true"
                  className={cn("h-5 w-5", active && "stroke-[2.5]")}
                />
                <span className="max-w-full truncate">{item.label}</span>
              </Link>
            </li>
          );
        })}
      </ul>
    </nav>
  );
}
