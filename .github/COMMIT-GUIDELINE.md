# Commit Message Guideline

This project follows the [Conventional Commits](https://www.conventionalcommits.org/) specification.
It serves primarily as my personal reference.

## Format

Each commit message consists of a **header**, a **body** and a **footer**. The header has a special format that includes a `type`, a `scope` and a `subject`:

```text
<type>(<scope>): <subject>
<BLANK LINE>
<body>
<BLANK LINE>
<footer>
```

### Type
The `type` must be one of the following:

* **`feat`**: A new configuration, script, or feature (e.g., adding a new plugin).
* **`fix`**: A bug fix (e.g., fixing a broken alias or syntax error).
* **`chore`**: Maintenance tasks (e.g., updating plugins, moving files, ignoring files).
* **`docs`**: Documentation-only changes (e.g., updating `README.md`).
* **`style`**: Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons).
* **`refactor`**: A code change that neither fixes a bug nor adds a feature (e.g., cleaning up `.zshrc`).
* **`perf`**: A code change that improves performance (e.g., reducing shell startup time).
* **`ci`**: Changes to CI configuration files and scripts (e.g., GitHub Actions, workflows).
