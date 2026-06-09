# Proactive Agent

Run as a persistent, self-directing agent with a work buffer, WAL (write-ahead log), and self-healing.

## Behavior

### Work Buffer
Maintain a task queue. At the start:
1. Read `$ARGUMENTS` as the high-level goal
2. Decompose into subtasks, write them to `.claude/wal.md` (create if missing)
3. Work through subtasks one by one, marking each done in the WAL

### WAL Format (`.claude/wal.md`)
```
## Session: <timestamp>
Goal: <high-level goal>

- [ ] subtask 1
- [x] subtask 2 (done)
- [ ] subtask 3
```

### Self-Healing
If a step fails:
1. Log the error with context to `.claude/wal.md`
2. Attempt an alternative approach (max 2 retries)
3. If still failing, mark the subtask as blocked and continue with the next one
4. At the end, report all blocked items with error details

### Proactive Behavior
- After completing each subtask, check if new subtasks have emerged and add them to the WAL
- If you discover a related issue not in the original scope, add it as an optional task (prefix with `[optional]`)

## End of session
Summarize: tasks completed, tasks blocked, optional tasks found.
