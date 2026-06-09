# Healthcheck — 安全加固与风险评估

对项目、服务器或配置进行全面健康检查和安全风险评估。使用 `$ARGUMENTS` 指定范围。

## 检查范围

### 代码安全（`$ARGUMENTS` = `code` 或默认）
- 硬编码凭证/密钥（API keys、passwords、tokens）
- 已知危险函数（`eval`、`exec`、`shell=True`）
- 依赖漏洞（检查 package.json / requirements.txt）
- 敏感文件未被 .gitignore 忽略

### 配置安全（`$ARGUMENTS` = `config`）
- `.env` 文件是否暴露
- MCP 服务器权限范围（`.mcp.json`）
- Claude Code 权限设置（`.claude/settings.json`）
- SSH/TLS 配置

### 系统安全（`$ARGUMENTS` = `system`）
- 开放端口扫描
- 运行中的可疑进程
- 文件权限异常（世界可写文件）
- 最近修改的敏感文件

### 综合检查（`$ARGUMENTS` = `all`）
运行以上全部检查

## 评分

每个类别给出 0–100 分的安全得分，总分加权平均。

## 输出

```
健康检查报告 — [timestamp]
总体评分: 78/100 🟡

🔴 严重(2)  🟠 高危(1)  🟡 中危(3)  🟢 低危(4)

[详细问题列表 + 修复建议]
```
