```markdown
# cv Development Patterns

> Auto-generated skill from repository analysis

## Overview
This skill documents the development patterns and conventions used in the `cv` TypeScript codebase. It covers file naming, import/export styles, commit message conventions, and testing patterns. While no formal frameworks or automated workflows are detected, this guide ensures consistency and clarity for contributors.

## Coding Conventions

### File Naming
- Use **camelCase** for file names.
  - Example: `userProfile.ts`, `contactInfo.test.ts`

### Imports
- Use **relative imports** for all modules.
  - Example:
    ```typescript
    import { getUserData } from './userData';
    ```

### Exports
- Use **named exports** exclusively.
  - Example:
    ```typescript
    // userData.ts
    export function getUserData() { /* ... */ }
    ```

### Commit Messages
- Follow the **Conventional Commits** standard.
- Allowed prefixes: `feat`, `docs`
- Example commit:
  ```
  feat: add user profile section to CV
  docs: update README with usage instructions
  ```

## Workflows

### Adding a New Feature
**Trigger:** When implementing a new functionality.
**Command:** `/add-feature`

1. Create a new TypeScript file using camelCase naming.
2. Implement the feature using named exports.
3. Import dependencies using relative paths.
4. Write or update relevant test files (`*.test.ts`).
5. Commit changes with a `feat:` prefix.
   - Example: `feat: implement education section`

### Updating Documentation
**Trigger:** When updating or adding documentation.
**Command:** `/update-docs`

1. Edit or create documentation files as needed.
2. Commit changes with a `docs:` prefix.
   - Example: `docs: add API usage instructions`

## Testing Patterns

- Test files follow the pattern: `*.test.ts`
- Testing framework is **unknown**; check existing test files for structure.
- Example test file name: `userProfile.test.ts`
- Place test files alongside the code they test or in a dedicated test directory.

## Commands
| Command         | Purpose                              |
|-----------------|--------------------------------------|
| /add-feature    | Start the workflow for new features   |
| /update-docs    | Start the workflow for documentation  |
```
