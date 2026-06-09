# Session Logs — 会话日志搜索分析

搜索、分析和提取 Claude Code 会话历史记录。使用 `$ARGUMENTS` 指定查询。

## 配置

Claude Code 会话日志默认存储在：
- macOS/Linux: `~/.claude/projects/<project-hash>/`
- 格式: JSONL 文件，每行一条消息

```bash
export CLAUDE_LOGS_PATH=~/.claude/projects   # 覆盖默认路径
```

## 命令

| 命令 | 说明 |
|------|------|
| `search <keyword>` | 全文搜索所有会话 |
| `recent [n]` | 最近 n 次会话摘要（默认 10） |
| `session <id>` | 查看指定会话完整内容 |
| `errors` | 提取所有报错和失败操作 |
| `decisions` | 提取关键决策和方案选择 |
| `files-changed` | 统计各文件的修改频率 |
| `stats` | 总体统计（会话数、平均长度、工具调用频率） |

## 行为

1. 扫描日志目录中的 JSONL 文件
2. 解析消息结构（role: user/assistant, tool_use, tool_result）
3. 按命令过滤和提取

## 输出示例（`recent`）

```
最近 5 次会话：
1. 2026-06-09 20:52  [47 轮] 安装37个技能  ✅
2. 2026-06-09 19:10  [12 轮] 修复登录 bug  ✅
3. 2026-06-08 15:33  [8 轮]  数据库迁移     ⚠️ 部分完成
```

## 隐私说明

日志分析在本地进行，不上传任何内容。
