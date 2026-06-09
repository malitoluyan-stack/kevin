# Self Improvement

Track learnings and errors across sessions to improve future performance.

## Commands

Use `$ARGUMENTS` to specify the action:
- `log <lesson>` — record a lesson learned
- `error <description>` — log an error or mistake made
- `review` — show recent learnings and error patterns
- `suggest` — based on logs, suggest workflow improvements

## Storage

All records go to `.claude/learnings.md`:

```markdown
## Learnings Log

### <date> — Lesson
<what was learned and why it matters>

### <date> — Error
<what went wrong, root cause, how to avoid>
```

## Review Mode

When `$ARGUMENTS` is `review` or empty:
1. Read `.claude/learnings.md`
2. Group entries by type (lesson / error)
3. Identify the top 3 recurring patterns
4. Suggest one concrete change to skills, hooks, or workflow to address each pattern

## Suggest Mode

Propose specific changes: new skill files, hook additions, settings tweaks. Output them as ready-to-apply diffs or new file contents.
