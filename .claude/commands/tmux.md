# Tmux — 远程控制 tmux 会话

管理、查看和控制 tmux 会话、窗口和面板。使用 `$ARGUMENTS` 指定操作。

## 命令

### 会话管理
| 命令 | 说明 |
|------|------|
| `list` | 列出所有 tmux 会话 |
| `new <name>` | 创建新会话 |
| `attach <name>` | 附加到会话 |
| `kill <name>` | 关闭会话 |
| `rename <old> <new>` | 重命名会话 |

### 窗口/面板
| 命令 | 说明 |
|------|------|
| `windows <session>` | 列出会话中的窗口 |
| `split <session> [h\|v]` | 水平或垂直分割面板 |
| `send <session> <cmd>` | 向指定会话发送命令 |
| `capture <session>` | 捕获当前面板输出 |

### 工作区模板
| 命令 | 说明 |
|------|------|
| `workspace dev` | 创建开发工作区（editor + terminal + logs 三面板） |
| `workspace monitor` | 创建监控工作区（htop + logs + shell） |

## 行为

1. 解析 `$ARGUMENTS`
2. 执行对应 `tmux` 命令（使用 Bash 工具）
3. `send` 命令执行前显示将发送的内容并确认

## 注意

`send` 和 `kill` 为危险操作，执行前必须确认。
`capture` 只读取输出，不发送任何命令。
