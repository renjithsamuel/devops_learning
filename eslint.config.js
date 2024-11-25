// eslint.config.js
export default [
  {
    files: ["**/*.js"], // Adjust for your file types (e.g., ts for TypeScript)
    languageOptions: {
      ecmaVersion: "latest",
    },
    rules: {
      "no-unused-vars": "warn",
      semi: ["warn", "always"],
    },
  },
];
