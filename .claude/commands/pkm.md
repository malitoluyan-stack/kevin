# PKM — 个人知识管理系统

构建和维护个人知识管理体系，整合 Obsidian、NotebookLM 和 Claude Desktop。

## 知识架构（PARA + Zettelkasten 混合）

### PARA 文件夹结构
```
Obsidian Vault/
├── Projects/        # 有截止日期的活跃项目（如：青啤AI战略）
├── Areas/           # 持续维护的责任域（咨询/临床药学/投资）
├── Resources/       # 参考资料库（按主题归类）
└── Archive/         # 完成/不活跃的内容
```

### Zettelkasten 笔记类型
| 类型 | 说明 | 命名 |
|------|------|------|
| 闪念笔记 | 即时想法，待处理 | `inbox/` |
| 永久笔记 | 一个概念一张卡片 | `ZK-[概念]` |
| 文献笔记 | 来源于书/论文 | `LIT-[作者年份]` |
| 项目笔记 | 项目相关 | `PRJ-[项目名]` |

## 命令格式

| 命令 | 说明 |
|------|------|
| `capture <想法>` | 快速捕获到 inbox |
| `process` | 处理 inbox，分配到 PARA 合适位置 |
| `connect <概念A> <概念B>` | 发现两个概念的关联，生成连接笔记 |
| `review` | 每周回顾：检查 inbox、更新项目状态 |
| `gap-analysis` | 识别知识体系空白（哪些领域笔记稀疏） |
| `export <主题>` | 将相关笔记聚合导出（用于项目准备） |

## NotebookLM 协作

将 Obsidian 中的项目笔记导出，上传至 NotebookLM 创建项目知识库，然后用 `/summarize` 或 `/research` 调用。

## 每周维护清单（5分钟）
- [ ] 处理 inbox（归档或删除）
- [ ] 更新活跃项目进度
- [ ] 添加本周阅读笔记
- [ ] 标记需要深化的概念
