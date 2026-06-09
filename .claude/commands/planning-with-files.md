# Planning with Files — Markdown 外挂记忆库

用 Markdown 文件给 coding agent 当外挂记忆和任务规划库，解决长对话遗忘问题。

## 核心思想

Agent 的上下文有限且会被清空。将规划、决策、进度写入文件，让 agent 随时可以重新加载状态继续工作。

## 文件结构

```
.claude/
├── PLAN.md          # 当前任务总体规划
├── CONTEXT.md       # 项目背景和关键决策
├── TODO.md          # 待办事项（带优先级）
├── DONE.md          # 已完成事项归档
└── NOTES.md         # 临时笔记和发现
```

## 命令格式

| 命令 | 说明 |
|------|------|
| `init <goal>` | 初始化规划文件集 |
| `plan <task>` | 将任务分解写入 PLAN.md |
| `status` | 读取所有文件，汇报当前进度 |
| `next` | 读取 TODO.md，返回下一步行动 |
| `done <item>` | 标记完成，移入 DONE.md |
| `note <text>` | 快速追加到 NOTES.md |
| `load` | 加载所有规划文件到当前上下文（新会话开始时使用） |
| `checkpoint` | 将当前对话状态写入文件（防止遗忘） |

## PLAN.md 模板

```markdown
# 任务：[目标]
创建时间：[date]
状态：进行中

## 目标
[一句话描述]

## 验收标准
- [ ] 标准1
- [ ] 标准2

## 实现步骤
1. [步骤] — 状态: todo/doing/done

## 关键决策
- [决策] — 原因: [why]
```

## 新会话开始时

运行 `/planning-with-files load` 恢复上次进度。
