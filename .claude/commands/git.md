# Git — PR/提交说明/版本日志自动化

自动处理 git 工作流：生成提交信息、PR 描述、CHANGELOG、Release Note。

## 命令格式

| 命令 | 说明 |
|------|------|
| `commit` | 分析 staged 变更，生成规范提交信息 |
| `pr` | 生成 PR 标题 + 描述（Summary/Test plan） |
| `changelog [range]` | 从 git log 生成 CHANGELOG（默认上次 tag 至今） |
| `release <version>` | 生成完整 Release Note |
| `squash <n>` | 将最近 n 个提交整理为一条规范提交 |
| `branch <feature>` | 根据功能描述生成规范分支名 |
| `status` | 友好展示 git 状态（比 git status 更易读） |

## 提交信息规范（Conventional Commits）

```
<type>(<scope>): <description>

feat:     新功能
fix:      Bug 修复
docs:     文档变更
refactor: 重构（无功能变化）
test:     测试
chore:    构建/工具链
perf:     性能优化
```

## PR 描述模板

```markdown
## Summary
- [变更要点1]
- [变更要点2]

## Test Plan
- [ ] 单元测试通过
- [ ] 手动验证 [场景]

## Breaking Changes
无 / [具体说明]
```

## Release Note 模板

```markdown
## v1.2.0 (2026-06-09)
### ✨ New Features / 🐛 Bug Fixes / ⚠️ Breaking Changes
```
