import vortiquoConfig from '@vortiquo/eslint-config/node-library-js';

export default [
  ...vortiquoConfig,
  {
    files: ['*.config.mjs', '*.config.js', '.lintstagedrc.mjs'],
    languageOptions: {
      parserOptions: {
        project: null,
        projectService: false,
      },
    },
  },
];
