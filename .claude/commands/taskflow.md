# TaskFlow — 多任务流管理

管理并行/串行任务流，追踪进度，协调多步骤工程任务。使用 `$ARGUMENTS` 指定操作。

## 数据存储

任务状态保存在 `.claude/taskflow.json`，格式：
```json
{
  "flows": {
    "<flow-id>": {
      "name": "...",
      "tasks": [
        {"id": 1, "title": "...", "status": "todo|running|done|blocked", "depends_on": []}
      ]
    }
  }
}
```

## 命令

| 命令 | 说明 |
|------|------|
| `new <flow-name> <goal>` | 从目标分解创建任务流 |
| `list` | 列出所有任务流和进度 |
| `show <flow-id>` | 显示任务流详情（依赖图） |
| `start <flow-id> <task-id>` | 标记任务为进行中 |
| `done <flow-id> <task-id>` | 标记任务完成 |
| `block <flow-id> <task-id> <reason>` | 标记任务阻塞 |
| `next <flow-id>` | 返回下一个可执行任务（依赖已满足） |
| `run <flow-id>` | 自动执行整个任务流（Agent 模式） |

## `new` 行为

收到目标描述后：
1. 用 MECE 原则分解为 3–8 个子任务
2. 识别依赖关系（哪些必须先完成）
3. 生成任务流并保存

## 进度显示

```
Flow: 新功能开发 [3/6 完成 ████░░ 50%]
✅ 需求分析  ✅ 数据库设计  🔄 API开发  ⬜ 前端  ⬜ 测试  ⬜ 部署
```
