# Process Doc

Document a workflow or process as a clear, reusable SOP (Standard Operating Procedure). Use `$ARGUMENTS` as the process name or description.

## Behavior

1. If `$ARGUMENTS` describes a process, document it directly
2. If `$ARGUMENTS` is a process name only, ask 3–5 clarifying questions:
   - Who performs this process (role)?
   - What triggers it?
   - What are the steps?
   - What are the common failure modes?
   - What does success look like?
3. Generate the SOP document

## SOP Template

```markdown
# SOP: [Process Name]

**Owner**: [role]
**Trigger**: [what starts this process]
**Frequency**: [how often]
**Last Updated**: [date]

## Purpose
[One sentence: why this process exists]

## Prerequisites
- [tool/access/data needed]

## Steps
1. **[Step Name]** — [action] → [expected output]
2. ...

## Decision Points
- If [condition] → [action A]
- If [condition] → [action B]

## Common Errors & Fixes
| Error | Likely Cause | Fix |
|-------|-------------|-----|

## Success Criteria
- [ ] [measurable outcome]
```

Save output as a `.md` file if a filename is specified.
