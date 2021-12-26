/** @type {import('ts-jest/dist/types').InitialOptionsTsJest} */
module.exports = {
  preset: "ts-jest",
  testEnvironment: "node",
  coverageDirectory: "__tests__/coverage",
  modulePathIgnorePatterns: ["__tests__/coverage"],
};
