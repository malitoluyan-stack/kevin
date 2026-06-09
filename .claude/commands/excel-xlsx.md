# Excel XLSX — Excel 文件处理

读取、创建、编辑 Excel (.xlsx) 文件。使用 `$ARGUMENTS` 指定操作。

## 依赖

```bash
pip install openpyxl pandas
```

## 命令格式

| 命令 | 说明 |
|------|------|
| `read <file> [sheet]` | 读取工作表内容 |
| `create <file>` | 新建 Excel 文件 |
| `write <file> <sheet> <data>` | 写入数据（JSON 或 CSV 格式） |
| `analyze <file>` | 统计分析（行数、列类型、缺失值、基本统计量） |
| `chart <file> <type>` | 描述图表结构（bar/line/pie） |
| `formula <file> <cell> <formula>` | 写入公式 |

## 行为

1. 解析 `$ARGUMENTS` 获取操作类型和文件路径
2. 使用 `openpyxl` 执行文件操作，`pandas` 进行数据分析
3. 数据读取后以 Markdown 表格显示（最多 50 行）
4. 超过 50 行时显示摘要统计

## 示例代码

```python
import openpyxl, pandas as pd
# 读取
df = pd.read_excel('data.xlsx', sheet_name='Sheet1')
print(df.describe())
# 写入
wb = openpyxl.Workbook()
ws = wb.active
ws['A1'] = '标题'
wb.save('output.xlsx')
```
