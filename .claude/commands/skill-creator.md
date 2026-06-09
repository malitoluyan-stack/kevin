# Skill Creator — 创建/审计/改进 Agent Skills

将重复工作流沉淀为可复用 Claude Code Skill，或审计/改进现有 Skills。

## 模式（通过 `$ARGUMENTS` 指定）

### create（默认）
将描述的流程转为 `.claude/commands/<name>.md` 文件：
1. 理解工作流：触发条件、可变输入、固定步骤、输出格式
2. 提炼关键指令，去除口语化描述
3. 生成标准 Skill 文件（含 `$ARGUMENTS` 占位符）
4. 展示草稿，等待确认后写入

### audit `[skill-name|all]`
审查指定 Skill 或全部 Skills：
- 指令是否清晰无歧义
- 是否缺少边界条件处理
- 是否有安全风险（见 `/skill-scanner`）
- 与其他 Skills 是否重复
输出：问题表 + 改进建议

### improve `<skill-name>`
对指定 Skill 进行增强：
- 添加缺失的输出格式规范
- 补充错误处理路径
- 提炼更精确的指令
展示改进前/后对比，确认后覆写

### list
列出所有已安装 Skills 及简介

## Skill 文件规范

```markdown
# Skill Name
[一句话说明用途]
## 命令格式 / 参数
## 行为（步骤）
## 输出格式
```
