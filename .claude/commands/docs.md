# Docs — 自动整理项目文档

自动生成和更新 README、API 文档、变更日志和多语言文档。使用 `$ARGUMENTS` 指定类型。

## 命令格式

| 命令 | 说明 |
|------|------|
| `readme` | 生成/更新 README.md（项目概览+安装+使用+API） |
| `api <file\|dir>` | 从代码注释生成 API 文档 |
| `changelog` | 从 git log 生成 CHANGELOG.md |
| `jsdoc <file>` | 为 JS/TS 函数添加 JSDoc 注释 |
| `pydoc <file>` | 为 Python 函数添加 docstring |
| `translate <file> <lang>` | 翻译文档到指定语言 |
| `audit` | 扫描文档质量：缺失文档、过时信息、断链 |

## README 生成规范

自动包含：
- 项目名 + 一句话描述
- Badges（CI 状态、版本、License）
- 快速开始（3 步以内能运行）
- 功能特性
- API 参考（自动从代码提取）
- 贡献指南
- License

## API 文档格式

```markdown
## functionName(param1, param2)
**描述**: 做什么
**参数**:
- `param1` (string): 说明
**返回**: 类型 — 说明
**示例**: 代码片段
```

## Changelog 格式（Keep a Changelog 规范）

```markdown
## [1.2.0] - 2026-06-09
### Added / Changed / Fixed / Removed
```
