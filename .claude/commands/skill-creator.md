# Skill Creator

Turn a repeated workflow into a reusable Claude Code skill (slash command).

## Steps

1. **Understand the workflow** — Ask the user to describe or demonstrate the process they repeat. What do they always explain? What do they always ask Claude to do?

2. **Extract the pattern** — Identify: trigger (what kicks it off), inputs (what varies each time), steps (what Claude always does), output format (what the result looks like).

3. **Draft the skill file** — Write a `.md` file for `.claude/commands/<skill-name>.md` with:
   - A title
   - Clear instructions Claude should follow every time
   - Placeholders like `$ARGUMENTS` for variable parts

4. **Show the draft** — Present the skill file to the user and ask: "Does this capture the workflow? Any changes?"

5. **Save it** — Write the approved file to `.claude/commands/<skill-name>.md`

## Output format

Always produce a ready-to-use `.md` file. No filler, no meta-commentary inside the skill itself.
