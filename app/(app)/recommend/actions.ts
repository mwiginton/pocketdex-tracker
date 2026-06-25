"use server";

import { cookies } from "next/headers";

import { INCLUDE_UNAVAILABLE_PACKS_COOKIE } from "@/lib/recommendation/preferences";

export async function setIncludeUnavailablePacksPreference(
  includeUnavailablePacks: boolean,
) {
  const cookieStore = await cookies();

  cookieStore.set(INCLUDE_UNAVAILABLE_PACKS_COOKIE, String(includeUnavailablePacks), {
    httpOnly: true,
    maxAge: 60 * 60 * 24 * 365,
    path: "/",
    sameSite: "lax",
  });
}
