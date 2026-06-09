# MCPorter — MCP 服务器配置与调用

管理 MCP（Model Context Protocol）服务器：添加、删除、测试和调用。使用 `$ARGUMENTS` 指定操作。

## 命令

### 配置管理
| 命令 | 说明 |
|------|------|
| `list` | 列出 `.mcp.json` 中所有服务器 |
| `add <name> <command> [args...]` | 添加新 MCP 服务器 |
| `add-env <name> <key> <value>` | 为服务器添加环境变量 |
| `remove <name>` | 删除服务器配置 |
| `test <name>` | 测试服务器是否可启动和响应 |
| `test all` | 测试所有已配置服务器 |

### 工具调用
| 命令 | 说明 |
|------|------|
| `tools <server>` | 列出服务器暴露的所有工具 |
| `call <server> <tool> <args-json>` | 直接调用指定工具 |

### 常用服务器快速安装
| 命令 | 安装内容 |
|------|---------|
| `install playwright` | `npx @playwright/mcp@latest` |
| `install tavily <key>` | `npx tavily-mcp@latest` |
| `install filesystem <path>` | `npx @modelcontextprotocol/server-filesystem` |
| `install github <token>` | GitHub MCP 服务器 |
| `install markitdown` | `uvx markitdown-mcp` |

## 行为

读写 `.mcp.json` 文件。`add` 和 `remove` 操作前显示变更内容等待确认。`test` 命令启动服务器进程并发送 `initialize` 请求验证响应。
