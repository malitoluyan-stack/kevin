# Jupyter Notebook Manager

创建、读取、运行和管理 Jupyter Notebook (.ipynb) 文件。使用 `$ARGUMENTS` 指定操作。

## 依赖

```bash
pip install nbformat nbconvert jupyter
```

## 命令格式

| 命令 | 说明 |
|------|------|
| `read <file>` | 读取 notebook，显示所有 cell 和输出 |
| `create <file> <topic>` | 新建数据分析 notebook 模板 |
| `run <file>` | 执行所有 cell（使用 nbconvert） |
| `add-cell <file> <type> <code>` | 追加 code 或 markdown cell |
| `export <file> <format>` | 导出为 html / pdf / py / md |
| `analyze <data-file>` | 对 CSV/Excel 数据文件生成探索性分析 notebook |

## 行为

**创建数据分析模板**（`analyze` 模式）：
自动生成包含以下 cell 的 notebook：
1. 导入库（pandas, matplotlib, seaborn）
2. 加载数据
3. 基本统计（shape, dtypes, describe, missing values）
4. 数据分布可视化
5. 相关性热力图
6. 结论 markdown cell

## 示例代码

```python
import nbformat as nbf
nb = nbf.v4.new_notebook()
nb.cells = [
    nbf.v4.new_code_cell('import pandas as pd\ndf = pd.read_csv("data.csv")'),
    nbf.v4.new_code_cell('df.describe()'),
]
with open('analysis.ipynb', 'w') as f:
    nbf.write(nb, f)
```
