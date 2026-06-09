# PDF — PDF 读取/导出/处理

读取、提取、合并或导出 PDF 文件。使用 `$ARGUMENTS` 指定操作和文件路径。

## 依赖

```bash
pip install pdfplumber pypdf reportlab
# 或使用 markitdown MCP（已配置）
```

## 命令格式

| 命令 | 说明 |
|------|------|
| `read <file> [pages]` | 提取文本内容（pages 如 "1-5" 或 "all"） |
| `extract-tables <file>` | 提取所有表格为 CSV |
| `merge <file1> <file2> <output>` | 合并两个 PDF |
| `split <file> <page-range> <output>` | 拆分指定页码 |
| `to-text <file>` | 转为纯文本 |
| `summary <file>` | 读取后生成摘要（调用 summarize 逻辑） |

## 行为

1. 优先使用 `markitdown` MCP（如已配置）
2. 回退到 `pdfplumber`（文本+表格提取）或 `pypdf`（合并/拆分）
3. 提取内容以 Markdown 格式返回

## 示例代码

```python
import pdfplumber
with pdfplumber.open('document.pdf') as pdf:
    for page in pdf.pages:
        print(page.extract_text())
        tables = page.extract_tables()
```
