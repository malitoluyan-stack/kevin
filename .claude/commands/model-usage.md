# Model Usage — 模型使用成本统计

统计和分析 Claude/GPT/Gemini 等模型的 token 使用量和成本。使用 `$ARGUMENTS` 指定范围。

## 配置

设置 API 密钥以拉取官方用量数据：
```bash
export ANTHROPIC_API_KEY=<key>    # Claude 用量
export OPENAI_API_KEY=<key>       # OpenAI 用量
export GOOGLE_API_KEY=<key>       # Gemini 用量
```

或手动提供 token 数据进行估算。

## 命令

| 命令 | 说明 |
|------|------|
| `today` | 今日用量和成本 |
| `week` | 本周用量趋势 |
| `month` | 本月汇总（按模型分类） |
| `estimate <tokens> <model>` | 估算指定 token 量的成本 |
| `compare <model-a> <model-b> <task>` | 对比两个模型的性价比 |
| `budget <amount>` | 设置月预算并计算剩余 |

## 价格参考（自动查询最新价格）

| 模型 | 输入 | 输出 |
|------|------|------|
| claude-sonnet-4-6 | $3/M tokens | $15/M tokens |
| claude-haiku-4-5 | $0.8/M tokens | $4/M tokens |
| gpt-4o | $2.5/M tokens | $10/M tokens |
| gemini-2.0-flash | $0.075/M tokens | $0.3/M tokens |

## 输出

```
本月用量统计（2026年6月）
总成本: $12.40

claude-sonnet-4-6  [████████░░] 2.1M tokens  $8.20
claude-haiku-4-5   [███░░░░░░░] 0.8M tokens  $0.96
gpt-4o             [██░░░░░░░░] 0.3M tokens  $3.24
```

> 注：无 API 访问时，根据会话日志估算 token 用量。
