#!/bin/bash
# PostToolUse hook: detect skill file writes and mandate security audit

INPUT=$(cat)
FILE_PATH=$(echo "$INPUT" | python3 -c "
import json, sys
try:
    d = json.load(sys.stdin)
    print(d.get('tool_input', {}).get('file_path', ''))
except:
    print('')
" 2>/dev/null)

if echo "$FILE_PATH" | grep -qE '\.claude/commands/.+\.md$'; then
    SKILL=$(basename "$FILE_PATH" .md)
    echo "🔐 [安全钩子] 技能文件已写入: $SKILL"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "必须立即执行以下两项安全审计："
    echo "  1. /skill-scanner $SKILL   ← 检查Prompt注入/凭证泄露/危险操作"
    echo "  2. /clawdbot-security-check ← 检查MCP配置/Hooks/Settings整体安全"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
fi
