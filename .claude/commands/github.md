# GitHub — GitHub CLI（issues/PRs/CI）

通过 GitHub MCP 或 `gh` CLI 管理 issues、Pull Requests 和 CI 流程。使用 `$ARGUMENTS` 指定操作。

## 命令格式

### Issues
| 命令 | 说明 |
|------|------|
| `issue list [--state open\|closed]` | 列出 issues |
| `issue view <number>` | 查看 issue 详情 |
| `issue create <title> <body>` | 创建 issue |
| `issue close <number>` | 关闭 issue |
| `issue comment <number> <text>` | 添加评论 |

### Pull Requests
| 命令 | 说明 |
|------|------|
| `pr list` | 列出 PRs |
| `pr view <number>` | 查看 PR 详情和 review |
| `pr create <title>` | 从当前分支创建 PR |
| `pr merge <number>` | 合并 PR |
| `pr checks <number>` | 查看 CI 状态 |

### CI / Actions
| 命令 | 说明 |
|------|------|
| `ci status` | 当前分支 CI 状态 |
| `ci run <workflow>` | 手动触发 workflow |
| `ci logs <run-id>` | 查看运行日志 |

## 行为

优先使用 GitHub MCP 工具（`mcp__github__*`），不可用时回退到 `gh` CLI 命令。操作前显示将执行的命令并等待确认（destructive 操作如 close/merge）。
