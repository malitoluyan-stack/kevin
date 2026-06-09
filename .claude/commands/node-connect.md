# Node Connect — 节点连接诊断

诊断网络连接、API 端点可达性和服务健康状态。使用 `$ARGUMENTS` 指定目标。

## 命令格式

| 命令 | 说明 |
|------|------|
| `ping <host>` | 测试主机可达性（ICMP） |
| `http <url>` | HTTP/HTTPS 端点检测（状态码、延迟、证书） |
| `port <host> <port>` | TCP 端口连通性测试 |
| `dns <domain>` | DNS 解析诊断（A/AAAA/CNAME/MX 记录） |
| `trace <host>` | 路由追踪（traceroute） |
| `scan <host> <port-range>` | 端口扫描（仅用于自有主机） |
| `mcp` | 检测所有已配置 MCP 服务连接状态 |
| `services` | 检测常用服务端点（GitHub/OpenAI/Anthropic 等） |

## 行为

1. 解析 `$ARGUMENTS` 获取检测类型和目标
2. 使用 Bash 工具执行诊断命令（`curl`、`nc`、`nslookup`、`ping`）
3. 汇总结果：✅ 正常 / ⚠️ 延迟高 / ❌ 不可达

## 输出格式

```
目标: example.com
协议: HTTPS
状态: ✅ 200 OK
延迟: 142ms
证书: 有效至 2026-03-01
DNS: 93.184.216.34 (TTL: 300s)
```

## MCP 诊断模式

读取 `.mcp.json`，逐一测试每个 MCP 服务器的进程启动和响应，报告连接状态。
