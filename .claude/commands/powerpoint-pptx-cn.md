# PowerPoint PPTX-CN — PPT 读取/制作

读取、创建或编辑 PowerPoint (.pptx) 文件。使用 `$ARGUMENTS` 指定操作。

## 依赖

```bash
pip install python-pptx
```

## 命令格式

| 命令 | 说明 |
|------|------|
| `read <file>` | 读取每页标题和内容 |
| `create <file>` | 从 Markdown 大纲创建 PPT |
| `add-slide <file> <layout> <content>` | 追加幻灯片 |
| `theme <file> <color>` | 应用主题色（blue/dark/minimal） |
| `export-outline <file>` | 导出为 Markdown 大纲 |

## 行为

1. **读取**：逐页提取标题、正文、备注，以 Markdown 格式显示
2. **创建**：将 Markdown 大纲（`#` = 标题页，`##` = 章节，`-` = 要点）转换为 PPTX
3. **主题**：自动设置背景色、字体、强调色
4. 中文字体默认：标题用微软雅黑，正文用宋体

## 从咨询 Slide 生成 PPT

与 `/consulting-slide-generator` 联动：
1. 先用 `/consulting-slide-generator` 生成大纲
2. 再用 `/powerpoint-pptx-cn create output.pptx` 生成文件

## 示例代码

```python
from pptx import Presentation
from pptx.util import Inches, Pt
prs = Presentation()
slide = prs.slides.add_slide(prs.slide_layouts[1])
slide.shapes.title.text = '标题'
prs.save('output.pptx')
```
