import { LoginForm } from "@/components/login-form";
import { BarChart3, CheckCircle2, Sparkles } from "lucide-react";

export default function Page() {
  return (
    <div className="min-h-svh bg-background bg-[linear-gradient(180deg,hsl(var(--app-blue)/0.1),transparent_19rem)] px-6 py-8 text-foreground md:px-10">
      <main className="mx-auto flex min-h-[calc(100svh-4rem)] w-full max-w-5xl flex-col justify-center gap-10 lg:grid lg:grid-cols-[minmax(0,1fr)_minmax(20rem,24rem)] lg:items-center">
        <section aria-labelledby="login-heading" className="min-w-0 max-w-2xl">
          <div className="flex items-baseline gap-2">
            <span className="text-xl font-bold">
              Pocket<span className="text-[hsl(var(--app-yellow))]">Dex</span>
            </span>
            <span className="text-lg text-muted-foreground">Tracker</span>
            <span className="text-sm font-medium text-[hsl(var(--app-blue))]">
              Login
            </span>
          </div>
          <h1
            id="login-heading"
            className="mt-5 text-3xl font-bold tracking-tight sm:text-5xl"
          >
            Keep your Pokemon TCG Pocket collection moving.
          </h1>
          <p className="mt-4 max-w-xl text-base leading-7 text-muted-foreground sm:text-lg">
            PocketDex Tracker helps you record owned cards, spot what is
            missing by set, and choose the packs most likely to add something
            new to your collection.
          </p>

          <div className="mt-8 grid gap-3 sm:grid-cols-3">
            <Feature
              icon={<CheckCircle2 className="h-5 w-5" />}
              title="Track progress"
              description="See owned, missing, and completion totals."
            />
            <Feature
              icon={<BarChart3 className="h-5 w-5" />}
              title="Compare sets"
              description="Find the collections closest to done."
            />
            <Feature
              icon={<Sparkles className="h-5 w-5" />}
              title="Plan packs"
              description="Get recommendations based on your gaps."
            />
          </div>
        </section>

        <div className="w-full max-w-sm min-w-0 lg:justify-self-end">
          <LoginForm />
        </div>
      </main>
    </div>
  );
}

function Feature({
  description,
  icon,
  title,
}: {
  description: string;
  icon: React.ReactNode;
  title: string;
}) {
  return (
    <div className="rounded-lg border bg-card p-4 shadow-sm">
      <div className="flex h-9 w-9 items-center justify-center rounded-md bg-[hsl(var(--app-blue)/0.12)] text-[hsl(var(--app-blue))]">
        {icon}
      </div>
      <h2 className="mt-3 text-sm font-semibold">{title}</h2>
      <p className="mt-1 text-sm leading-6 text-muted-foreground">
        {description}
      </p>
    </div>
  );
}
