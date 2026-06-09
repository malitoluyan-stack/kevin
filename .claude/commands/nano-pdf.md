# Nano PDF — 自然语言编辑 PDF

用自然语言指令编辑 PDF 文件内容。使用 `$ARGUMENTS` 指定文件和编辑指令。

## 配置

```bash
# 方案1：使用 markitdown MCP（已配置）
# 方案2：安装 PDF 编辑工具
pip install pdfplumber pypdf reportlab
# 方案3：使用 LibreOffice（支持 PDF 转 DOCX 再编辑）
apt-get install libreoffice
```

## 命令格式

```
$ARGUMENTS: <file.pdf> "<自然语言编辑指令>"
```

## 支持的编辑操作

| 操作 | 示例指令 |
|------|---------|
| 替换文本 | `"将所有'2024'替换为'2025'"` |
| 删除内容 | `"删除第3页的页眉"` |
| 修改格式 | `"将标题字体改为加粗"` |
| 提取并重写 | `"重写第2节，使其更简洁"` |
| 添加内容 | `"在结尾添加一段免责声明"` |
| 合并/拆分 | `"拆分为按章节独立的PDF文件"` |

## 工作流

1. 用 `markitdown` MCP 或 `pdfplumber` 提取 PDF 文本
2. 用 AI 理解并应用自然语言编辑指令
3. 用 `reportlab` 或 LibreOffice 重新生成 PDF
4. 保存为 `<原文件名>_edited.pdf`

## 限制

- 无法修改扫描版（图片）PDF 的文本（需 OCR）
- 复杂排版（多列、浮动图片）可能影响还原精度
- 加密 PDF 需先提供密码：`$ARGUMENTS: file.pdf --password <pwd> "<指令>"`
