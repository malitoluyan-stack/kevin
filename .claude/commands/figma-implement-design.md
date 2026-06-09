# Figma Implement Design — Figma 转前端代码

将 Figma 设计稿转换为可运行的前端代码。使用 `$ARGUMENTS` 指定 Figma 链接或设计描述。

## 配置（Figma API）

```bash
export FIGMA_ACCESS_TOKEN=<your-personal-access-token>
# 在 Figma → Settings → Account → Personal Access Tokens 生成
```

## 命令格式

| 命令 | 说明 |
|------|------|
| `export <figma-url>` | 从 Figma URL 提取设计数据并生成代码 |
| `component <description>` | 根据组件描述生成代码（无 Figma 时） |
| `tokens <figma-url>` | 提取设计 Token（颜色/字体/间距） |
| `inspect <figma-url> <element>` | 检查特定元素的 CSS 属性 |

## 代码生成框架

在 `$ARGUMENTS` 中指定框架，默认自动检测项目框架：

| 框架 | 输出 |
|------|------|
| React | `.tsx` 组件 + Tailwind CSS |
| Vue | `.vue` 单文件组件 |
| HTML/CSS | 原生 HTML + CSS 变量 |
| React Native | 移动端组件 |

## 转换原则

1. 提取颜色、字体、间距作为 CSS 变量
2. 响应式断点自动处理（移动优先）
3. 图片资源列出链接，不内联 Base64
4. 交互状态（hover/active/disabled）根据设计规范推断

## 无 Figma 访问时

根据 `$ARGUMENTS` 中的视觉描述生成代码，可配合截图（通过 `/agent-browser` 截图）辅助还原。
