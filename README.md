# PocketDex Tracker

PocketDex Tracker is a Next.js app for tracking a Pokemon TCG Pocket card
collection and deciding which packs are worth opening next. It uses Supabase for
authentication, card metadata, per-user ownership state, and SQL helpers that
feed the pack recommendation engine.

## Features

- Email/password authentication through Supabase Auth.
- Signed-in collection dashboard with overall completion and set-level progress.
- Set detail pages with card grids, owned/missing filters, and bulk mark/unmark
  actions.
- Card search with filters for set, rarity, type, and ownership status.
- Pack recommendations ranked by expected new cards per pack, with optional
  set-specific scoping.
- Seed SQL for multiple TCG Pocket sets, packs, cards, and pull odds.
- Focused recommendation tests for expected-value and database-row shaping logic.

## Tech stack

- [Next.js](https://nextjs.org/) App Router
- [React](https://react.dev/) 19
- [Supabase](https://supabase.com/) Auth, Postgres, RLS, and generated types
- [Tailwind CSS](https://tailwindcss.com/)
- [shadcn/ui](https://ui.shadcn.com/) style components
- [Lucide React](https://lucide.dev/) icons

## Getting started

Install dependencies:

```bash
npm install
```

Create a local environment file:

```bash
cp .env.example .env.local
```

Update `.env.local` with your Supabase project values:

```env
NEXT_PUBLIC_SUPABASE_URL=your-project-url
NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY=your-publishable-or-anon-key
```

Run the development server:

```bash
npm run dev
```

Open [http://localhost:3000](http://localhost:3000). Signed-out users are sent
to `/auth/login`.

## Supabase setup

The project expects the tables, RLS policies, RPC functions, and seed data in
the `supabase/` directory.

Apply the base schema first:

1. `supabase/schema/tables.txt`
2. `supabase/schema/rls.txt`
3. `supabase/home-set-completion-rpc.sql`
4. `supabase/recommendation-rows-rpc.sql`

Then apply the set seed files you want to load. Most set directories contain
separate files for:

- `seed-sets-*.sql`
- `seed-packs-*.sql`
- `seed-*-cards.sql`
- `seed-*-odds.sql`

After changing the hosted Supabase schema, regenerate TypeScript database types:

```bash
npm run db:types
```

The type generation script reads `NEXT_PUBLIC_SUPABASE_URL` from the environment
or `.env.local`. It also requires Supabase CLI authentication through
`npx supabase login` or `SUPABASE_ACCESS_TOKEN`.

## Scripts

```bash
npm run dev
```

Starts the local Next.js development server.

```bash
npm run build
```

Builds the production app.

```bash
npm run start
```

Runs the production build.

```bash
npm run lint
```

Runs ESLint across the project.

```bash
npm run test:recommendations
```

Compiles and runs the recommendation unit tests with Node's built-in test
runner.

```bash
npm run db:types
```

Regenerates `lib/database.types.ts` from the configured Supabase project.

## Project structure

```text
app/                 Next.js routes, layouts, auth pages, and app pages
components/          Reusable UI, navigation, auth, collection, and search pieces
lib/                 Supabase clients, generated database types, and app logic
lib/recommendation/  Expected-value recommendation engine and tests
scripts/             Seed/type generation helpers
supabase/            Schema notes, RPC SQL, and set seed SQL
```

## Notes for maintainers

- `user_cards` is the only user-owned collection table. Card, pack, set, and
  odds tables are public read data guarded by RLS policies.
- Recommendations are based on missing cards with pull odds returned by
  `get_pack_recommendation_rows`.
- The home dashboard uses `get_home_set_completion_rows` to avoid fetching every
  card row just to calculate completion totals.
- `lib/recommendation/data.ts` contains the current list of unavailable packs
  that should be hidden from recommendations unless the user opts in.
