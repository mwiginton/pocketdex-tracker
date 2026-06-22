import { existsSync, readFileSync, renameSync, unlinkSync, writeFileSync } from "node:fs";
import { dirname, join, resolve } from "node:path";
import { fileURLToPath } from "node:url";
import { spawnSync } from "node:child_process";

const root = resolve(dirname(fileURLToPath(import.meta.url)), "..");
const envPath = join(root, ".env.local");
const outputPath = join(root, "lib", "database.types.ts");
const temporaryPath = `${outputPath}.tmp`;

function readEnvFile(path) {
  if (!existsSync(path)) return {};

  return Object.fromEntries(
    readFileSync(path, "utf8")
      .split(/\r?\n/)
      .map((line) => line.trim())
      .filter((line) => line && !line.startsWith("#") && line.includes("="))
      .map((line) => {
        const separator = line.indexOf("=");
        const key = line.slice(0, separator).trim();
        const value = line
          .slice(separator + 1)
          .trim()
          .replace(/^(['"])(.*)\1$/, "$2");
        return [key, value];
      }),
  );
}

const localEnv = readEnvFile(envPath);
const supabaseUrl =
  process.env.NEXT_PUBLIC_SUPABASE_URL ?? localEnv.NEXT_PUBLIC_SUPABASE_URL;

if (!supabaseUrl) {
  console.error(
    "NEXT_PUBLIC_SUPABASE_URL was not found in the environment or .env.local.",
  );
  process.exit(1);
}

let projectRef;
try {
  projectRef = new URL(supabaseUrl).hostname.split(".")[0];
} catch {
  console.error("NEXT_PUBLIC_SUPABASE_URL is not a valid URL.");
  process.exit(1);
}

const cliScript = join(root, "node_modules", "supabase", "dist", "supabase.js");

const result = spawnSync(
  process.execPath,
  [
    cliScript,
    "gen",
    "types",
    "typescript",
    "--project-id",
    projectRef,
    "--schema",
    "public",
  ],
  {
    cwd: root,
    encoding: "utf8",
    env: process.env,
    maxBuffer: 10 * 1024 * 1024,
    windowsHide: true,
  },
);

if (result.status !== 0) {
  const details = [result.error?.message, result.stderr, result.stdout]
    .filter(Boolean)
    .join("\n")
    .trim();
  console.error(details || "Supabase type generation failed.");
  console.error(
    "Authenticate with `npx supabase login` or set SUPABASE_ACCESS_TOKEN, then retry.",
  );
  process.exit(result.status ?? 1);
}

if (!result.stdout.includes("export type Database")) {
  console.error("The Supabase CLI returned an unexpected response; no file was changed.");
  process.exit(1);
}

try {
  writeFileSync(temporaryPath, result.stdout, "utf8");
  renameSync(temporaryPath, outputPath);
} finally {
  if (existsSync(temporaryPath)) unlinkSync(temporaryPath);
}

console.log("Generated lib/database.types.ts from the hosted Supabase schema.");
