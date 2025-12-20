# @vortiquo/typescript-config

[![npm version](https://img.shields.io/npm/v/@vortiquo/typescript-config.svg)](https://www.npmjs.com/package/@vortiquo/typescript-config)
[![license](https://img.shields.io/npm/l/@vortiquo/typescript-config.svg)](https://github.com/vortiquo/typescript-config/blob/main/LICENSE)

Strict, modern TypeScript configurations for professional projects.

## Features

- 🔒 **Strict by default** - Catches bugs at compile time
- 🚀 **Modern** - ES2024 target, bundler module resolution
- 📦 **Ready-to-use presets** - Next.js, React, Node.js, NestJS
- 🎯 **Zero config** - Just extend and go

## Installation

```bash
npm install -D @vortiquo/typescript-config
# or
pnpm add -D @vortiquo/typescript-config
# or
yarn add -D @vortiquo/typescript-config
```

## Available Configs

| Config          | Use Case                              |
| --------------- | ------------------------------------- |
| `nextjs`        | Next.js applications                  |
| `server`        | Backend APIs (Fastify, Express, Hono) |
| `nestjs`        | NestJS applications                   |
| `react-library` | React/UI component libraries          |
| `node-library`  | Shared Node.js packages               |

## Usage

Create a `tsconfig.json` in your project:

### Next.js

```json
{
  "extends": "@vortiquo/typescript-config/nextjs",
  "compilerOptions": {
    "baseUrl": ".",
    "paths": {
      "@/*": ["./src/*"]
    }
  },
  "include": ["next-env.d.ts", "**/*.ts", "**/*.tsx", ".next/types/**/*.ts"],
  "exclude": ["node_modules"]
}
```

### Backend API (Fastify/Express/Hono)

```json
{
  "extends": "@vortiquo/typescript-config/server",
  "compilerOptions": {
    "outDir": "./dist",
    "rootDir": "./src"
  },
  "include": ["src"],
  "exclude": ["node_modules", "dist"]
}
```

### NestJS

```json
{
  "extends": "@vortiquo/typescript-config/nestjs",
  "compilerOptions": {
    "outDir": "./dist",
    "rootDir": "./src"
  },
  "include": ["src"],
  "exclude": ["node_modules", "dist"]
}
```

### React Component Library

```json
{
  "extends": "@vortiquo/typescript-config/react-library",
  "compilerOptions": {
    "outDir": "./dist"
  },
  "include": ["src"],
  "exclude": ["node_modules", "dist"]
}
```

### Node.js Library

```json
{
  "extends": "@vortiquo/typescript-config/node-library",
  "compilerOptions": {
    "outDir": "./dist",
    "rootDir": "./src"
  },
  "include": ["src"],
  "exclude": ["node_modules", "dist"]
}
```

## What's Included

All configs extend from a strict base with:

- **Strict type checking** - `strict`, `noUncheckedIndexedAccess`,
  `exactOptionalPropertyTypes`
- **Code quality** - `noUnusedLocals`, `noUnusedParameters`, `noImplicitReturns`
- **Modern output** - ES2024 target, bundler module resolution
- **Best practices** - `verbatimModuleSyntax`, `isolatedModules`,
  `forceConsistentCasingInFileNames`

## License

MIT © [Vortiquo](https://vortiquo.com)
