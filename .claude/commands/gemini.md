# Gemini — Gemini CLI 问答与生成

通过命令行调用 Google Gemini API 进行问答、代码生成和多模态任务。使用 `$ARGUMENTS` 作为输入。

## 前置条件

```bash
# 安装 Gemini CLI
npm install -g @google/gemini-cli
# 或直接使用 API（设置环境变量）
export GOOGLE_API_KEY=<your-key>
```

## 命令格式

| 命令 | 说明 |
|------|------|
| `ask <question>` | 单轮问答 |
| `code <task>` | 代码生成（指定语言：`code python <task>`） |
| `image <file> <question>` | 图片理解/分析 |
| `compare <prompt>` | 与当前 Claude 响应对比（A/B 评估） |
| `models` | 列出可用 Gemini 模型 |

## 行为

1. 解析 `$ARGUMENTS`
2. 构造 API 请求（默认模型：`gemini-2.0-flash`，大任务用 `gemini-2.0-pro`）
3. 使用 Bash 工具调用 `gemini` CLI 或 `curl` 调用 REST API
4. 格式化并返回结果

## API 调用示例

```bash
curl -s "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=$GOOGLE_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{"contents":[{"parts":[{"text":"$ARGUMENTS"}]}]}'
```

## 注意

对比模式下，并排展示 Gemini 与 Claude 的回答，不做主观评判。
