# Find Skills

Search installed skills by name or keyword. Use `$ARGUMENTS` as the search term.

## Behavior

1. List all `.md` files in `.claude/commands/`
2. If `$ARGUMENTS` is empty, show all skills with their first-line description
3. If `$ARGUMENTS` is provided:
   - Match against filenames (fuzzy)
   - Search inside file contents for the keyword
   - Rank by relevance (filename match > title match > content match)
4. Show matched skills with: name, one-line description, usage hint

## Output Format

**Skills matching "$ARGUMENTS":**

| Skill | Description | Usage |
|-------|-------------|-------|
| `/skill-name` | What it does | `/skill-name <args>` |

If no matches: suggest similar skill names and offer to create a new skill via `/skill-creator`.
