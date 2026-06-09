# Spreadsheets — Excel/CSV 数据处理

处理表格数据：清洗、分析、转换、可视化建议。使用 `$ARGUMENTS` 指定文件和操作。

## 命令格式

| 命令 | 说明 |
|------|------|
| `read <file>` | 读取并预览数据（前10行+统计摘要） |
| `clean <file>` | 清洗数据（去重、处理空值、标准化格式） |
| `analyze <file> <question>` | 用自然语言分析数据 |
| `pivot <file> <rows> <cols> <values>` | 生成透视表 |
| `chart <file> <type> <cols>` | 推荐图表类型并生成绘图代码 |
| `merge <file1> <file2> <key>` | 按关键列合并两个表 |
| `export <file> <format>` | 转换格式（xlsx↔csv↔json↔md） |
| `formula <question>` | 生成 Excel/Google Sheets 公式 |

## 自然语言分析示例

```
/spreadsheets analyze sales.csv "哪个地区销售额最高？增长趋势如何？"
/spreadsheets analyze users.xlsx "找出过去30天新增用户中流失率最高的渠道"
```

## 数据清洗流程

1. 检测并报告：缺失值、重复行、格式异常
2. 询问处理策略（删除/填充/标记）
3. 执行清洗，输出清洗报告（变更记录）

## 公式生成示例

```
/spreadsheets formula "计算B列与A列的环比增长率"
→ =(B2-A2)/A2  （格式化为百分比）
```

使用 `/excel-xlsx` 执行具体文件操作。
