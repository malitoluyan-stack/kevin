# ClawHub — CLI（搜索/安装/发布技能）

ClawHub 是 Claude Code Skills 的社区市场。使用 `$ARGUMENTS` 搜索、安装或发布技能。

## 配置

```bash
# 设置 ClawHub registry（默认公开注册表或自建）
export CLAWHUB_REGISTRY=https://clawhub.example.com
export CLAWHUB_TOKEN=<your-api-token>   # 发布时需要
```

或在 `.claude/settings.json` 中配置：
```json
{
  "env": {
    "CLAWHUB_REGISTRY": "https://clawhub.example.com",
    "CLAWHUB_TOKEN": "<token>"
  }
}
```

## 命令

| 命令 | 说明 |
|------|------|
| `search <keyword>` | 搜索技能市场 |
| `info <skill-name>` | 查看技能详情（作者/版本/依赖） |
| `install <skill-name>` | 下载并安装到 `.claude/commands/` |
| `install <skill-name>@<version>` | 安装指定版本 |
| `update [skill-name\|all]` | 更新技能到最新版本 |
| `uninstall <skill-name>` | 删除技能文件 |
| `publish <skill-name>` | 发布本地技能到注册表 |
| `list` | 列出已安装技能及版本 |

## 行为

1. 解析 `$ARGUMENTS`
2. 通过 `curl`/WebFetch 访问注册表 API
3. `install` 前展示技能内容预览，等待确认
4. `publish` 前运行 `/skill-scanner` 安全检查

## 本地回退

若无网络访问，`search` 改为搜索 `.claude/commands/` 本地文件（等同 `/find-skills`）。
