type PagePlaceholderProps = {
  title: string;
  description: string;
};

export function PagePlaceholder({
  title,
  description,
}: PagePlaceholderProps) {
  return (
    <main className="min-h-screen bg-background px-4 py-10 text-foreground">
      <div className="mx-auto flex w-full max-w-3xl flex-col gap-3">
        <p className="text-sm font-medium text-muted-foreground">
          PocketDex Tracker
        </p>
        <h1 className="text-3xl font-semibold">{title}</h1>
        <p className="text-muted-foreground">{description}</p>
      </div>
    </main>
  );
}
