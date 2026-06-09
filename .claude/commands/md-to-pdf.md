# MD to PDF — Markdown 转 PDF

将 Markdown 文件转换为高质量 PDF。使用 `$ARGUMENTS` 指定输入文件（和可选样式）。

## 依赖（按优先级尝试）

```bash
# 方案1：pandoc（推荐）
apt-get install pandoc texlive-xetex

# 方案2：weasyprint（纯 Python）
pip install weasyprint markdown

# 方案3：md-to-pdf npm（支持中文）
npm install -g md-to-pdf
```

## 命令格式

```
$ARGUMENTS: <input.md> [output.pdf] [--style minimal|academic|report|dark]
```

## 行为

1. 检测可用工具（pandoc → weasyprint → md-to-pdf）
2. 转换时自动：
   - 处理中文字体（设置 CJK 字体）
   - 生成目录（如文档有 H2+ 标题）
   - 嵌入图片
   - 添加页眉页脚（文件名 + 页码）
3. 输出文件与输入同名，扩展名改为 `.pdf`

## 样式说明

| 样式 | 适用场景 |
|------|---------|
| `minimal` | 简洁文档、笔记 |
| `academic` | 论文、报告（含引用格式） |
| `report` | 商业报告（带封面） |
| `dark` | 暗色主题演示 |

## 示例

```bash
# pandoc 中文 PDF
pandoc input.md -o output.pdf --pdf-engine=xelatex -V mainfont="Noto Serif CJK SC"
```
