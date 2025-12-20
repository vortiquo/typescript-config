#!/bin/bash
set -e

echo "Validating tsconfig files..."

configs=(
  "test/tsconfig.base.json"
  "test/tsconfig.nextjs.json"
  "test/tsconfig.nestjs.json"
  "test/tsconfig.node-library.json"
  "test/tsconfig.react-library.json"
  "test/tsconfig.server.json"
)

for config in "${configs[@]}"; do
  echo "  ✓ Checking $config"
  tsc --noEmit -p "$config"
done

echo "All configs valid!"

