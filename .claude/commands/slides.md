# Slides — 快速制作/修改 PPT

用自然语言快速创建或修改演示文稿。使用 `$ARGUMENTS` 描述需求。

## 命令格式

| 命令 | 说明 |
|------|------|
| `new <主题> [slides数量]` | 从主题生成完整 PPT 大纲+内容 |
| `from <file>` | 从 Markdown/文档生成 PPT |
| `edit <file> <指令>` | 用自然语言修改现有 PPT |
| `template <type>` | 使用模板：pitch/report/tutorial/proposal |
| `outline <topic>` | 只生成大纲，不生成文件 |

## 快速创建流程

1. 解析主题和需求
2. 生成 5–10 页大纲（标题+要点）
3. 用 `/powerpoint-pptx-cn` 导出为 `.pptx` 文件

## 幻灯片类型

| 类型 | 布局 |
|------|------|
| `pitch` | 封面→问题→解决方案→市场→团队→融资需求 |
| `report` | 封面→执行摘要→数据分析→结论→附录 |
| `tutorial` | 封面→目标→概念→步骤→练习→总结 |
| `proposal` | 封面→背景→方案→时间线→预算→下一步 |

## 设计原则

- 每页一个核心观点（标题即结论）
- 正文 ≤ 5 个要点，每点 ≤ 10 字
- 数据用图表而非文字表达
- 首页和结尾页视觉冲击力最大

## 示例

```
/slides new "AI产品2026年战略规划" 10
/slides template pitch
/slides edit deck.pptx "把第3页的数据改成柱状图，删除第7页"
```
