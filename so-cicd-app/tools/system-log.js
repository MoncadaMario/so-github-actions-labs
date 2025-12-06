/* eslint-env node */

import { writeFileSync, appendFileSync } from "node:fs";
import { join } from "node:path";

function main() {
  const logPath = join(process.cwd(), "system-log.txt");

  const header = `=== System Log ===
NODE_ENV: ${process.env.NODE_ENV || "not set"}
PLATFORM: ${process.platform}
TIMESTAMP: ${new Date().toISOString()}
`;

  writeFileSync(logPath, header, { encoding: "utf-8" });

  appendFileSync(
    logPath,
    "Log: aplicación final CI/CD ejecutó este script.\n",
    { encoding: "utf-8" }
  );

  console.log(`Log generado en: ${logPath}`);
}

main();
