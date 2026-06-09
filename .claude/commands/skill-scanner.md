# Skill Scanner

Scan all skill files in `.claude/commands/` for security and quality issues.

## What to scan for

1. **Prompt injection risks** — does the skill accept and execute arbitrary user-supplied instructions without guardrails?
2. **Credential leakage** — does the skill log, print, or expose API keys, tokens, or secrets?
3. **Destructive operations** — does the skill allow deleting, overwriting, or publishing without confirmation?
4. **Scope creep** — does the skill do more than its name implies (e.g., a "summarize" skill that also sends emails)?
5. **Missing guardrails** — skills that call external APIs or write files should confirm before acting
6. **Hardcoded values** — API endpoints, paths, or credentials baked into the skill

## Steps

1. List all files in `.claude/commands/`
2. Read each `.md` file
3. Evaluate each against the checklist above
4. Produce a report table: Skill | Issue | Severity | Recommendation

## Output format

```
| Skill | Issue | Severity | Fix |
|-------|-------|----------|-----|
```

Finish with a count of clean vs. flagged skills.
