# Superpowers — Skills Framework（TDD + 代码审查）

强制 coding agent 走 TDD + 代码审查流程，不让 agent 偷懒跳步骤。这是一个元框架，为所有编码任务注入纪律。

## 核心原则

> "强制走流程，不走捷径。"

1. **需求先行**：执行前必须有明确的验收标准
2. **测试先写**：先写失败测试，再写实现
3. **审查必做**：每次提交前运行代码审查
4. **小步提交**：每完成一个原子任务就提交

## 工作流（每个编码任务强制走完）

```
Step 1: CLARIFY
  → 用 /using-superpowers 确认目标/边界/验收标准
  → 不清晰则拒绝开始

Step 2: TEST FIRST
  → 用 /testing tdd <feature> 写失败测试
  → 运行测试，确认红色

Step 3: IMPLEMENT
  → 写最小实现让测试通过
  → 不允许跳过测试直接写实现

Step 4: REVIEW
  → 用 /refactor review 做自我代码审查
  → 修复 High 优先级问题

Step 5: COMMIT
  → 用 /git commit 生成规范提交信息
  → 推送前再次运行测试
```

## 使用方式

```
/superpowers <任务描述>
```

Agent 将严格按照上述 5 步执行，每步完成后报告状态，不允许跳步骤。

## 跳过某步骤

加 `--skip <step>` 参数（需要明确理由）：
```
/superpowers 修复拼写错误 --skip test-first
```
