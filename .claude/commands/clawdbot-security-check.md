# Clawdbot Security Check

Security audit tailored for Claude Code / ClawdBot workflow configurations.

## Scope

Check the following for security issues:
- `.claude/settings.json` and `.claude/settings.local.json`
- `.mcp.json` and any MCP server configurations
- `.claude/commands/*.md` skill files
- `CLAUDE.md` and any agent instruction files
- Hooks (PreToolUse, PostToolUse, Stop, etc.)

## Checks

### MCP Server Security
- Are MCP servers pinned to specific versions (not `@latest` in production)?
- Do any MCP servers have broad filesystem or shell access?
- Are MCP server credentials stored securely (env vars, not hardcoded)?

### Hook Security
- Do hooks execute shell commands with user-controlled input?
- Do hooks have unbounded permissions (e.g., `bash *`)?

### Skill Security
- Do skills instruct Claude to skip confirmations for destructive actions?
- Do skills expose or log sensitive data?

### Permission Scope
- Are `allow` rules in settings as narrow as possible?
- Are there wildcard permissions (`*`) that could be tightened?

## Output

Report each finding with: Location | Issue | Risk | Recommended Fix
