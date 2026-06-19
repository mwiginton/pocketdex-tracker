import { PagePlaceholder } from "@/components/page-placeholder";
import { Suspense } from "react";

type SetPageProps = {
  params: Promise<{
    setId: string;
  }>;
};

async function SetDetails({ params }: SetPageProps) {
  const { setId } = await params;

  return (
    <PagePlaceholder
      title="Set Detail"
      description={`Collection editor placeholder for set: ${setId}`}
    />
  );
}

export default function SetPage({ params }: SetPageProps) {
  return (
    <Suspense
      fallback={
        <PagePlaceholder
          title="Set Detail"
          description="Loading set placeholder"
        />
      }
    >
      <SetDetails params={params} />
    </Suspense>
  );
}
