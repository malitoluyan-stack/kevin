# GH Fix CI — 看报错/修 CI

自动读取 CI 失败日志，诊断问题并推送修复。使用 `$ARGUMENTS` 指定 PR 号或 run ID。

## 命令格式

| 命令 | 说明 |
|------|------|
| `<pr-number>` | 读取该 PR 最新 CI 失败，诊断并修复 |
| `run <run-id>` | 读取指定 workflow run 的日志 |
| `watch` | 监听当前分支 CI，失败时自动诊断 |
| `retry <run-id>` | 重新触发指定 workflow |

## 自动修复流程

1. 用 GitHub MCP 获取失败 job 的日志
2. 解析错误类型：
   - **测试失败** → 读取失败测试，定位代码，推送修复
   - **构建错误** → 分析编译/依赖错误，修复后推送
   - **Lint 错误** → 运行 autofix，推送格式化提交
   - **环境问题** → 诊断 CI 配置，建议修复方案
3. 修复后自动 commit + push（使用 `/git commit` 生成规范消息）
4. 等待新一轮 CI 结果

## 常见错误处理

| 错误模式 | 自动操作 |
|---------|---------|
| `npm test -- --ci` 失败 | 读取失败 test，运行本地复现，修复代码 |
| `ESLint` / `Prettier` 报错 | `npm run lint:fix && npm run format` |
| `TypeScript` 编译错误 | 修复类型错误 |
| 依赖安装失败 | 检查 lockfile，更新依赖 |
| 超时 | 优化慢测试，添加缓存 |

## 注意

多次修复（>3次）仍失败时，停止自动修复，输出完整诊断报告，等待人工介入。
