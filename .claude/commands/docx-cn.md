# DOCX-CN — Word 文档创建/编辑

创建、读取或编辑 Word (.docx) 文件。使用 `$ARGUMENTS` 指定操作和文件路径。

## 依赖

```bash
pip install python-docx
```

## 命令格式

| 命令 | 示例 |
|------|------|
| `read <file>` | 读取并显示文档内容 |
| `create <file> <content>` | 新建 Word 文档 |
| `append <file> <content>` | 追加内容到现有文档 |
| `template <type> <file>` | 用模板创建（report/letter/contract/resume） |

## 行为

解析 `$ARGUMENTS`，使用 python-docx 执行以下操作：

**读取**：提取所有段落、表格和样式，以 Markdown 格式显示

**创建/追加**：
- 支持 Markdown 格式输入（# → Heading1，** → Bold 等）
- 自动设置中文字体（宋体/微软雅黑）
- 支持表格、列表、图片插入

**模板类型**：
- `report`：封面 + 目录 + 正文 + 附录
- `letter`：称谓 + 正文 + 签名
- `contract`：甲方乙方 + 条款 + 签署
- `resume`：个人信息 + 教育 + 经历 + 技能

## 示例脚本

```python
from docx import Document
doc = Document()
doc.add_heading('标题', 0)
doc.add_paragraph('正文内容')
doc.save('output.docx')
```
