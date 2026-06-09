# Agent Browser — 浏览器自动化操作

让 Claude Code 真实操作网页：点击按钮、填表、截图、抓取数据、回归测试 UI。
依赖 Playwright MCP（已在 `.mcp.json` 配置）。

## 命令格式

```
$ARGUMENTS: <任务描述> 或 <url> <操作指令>
```

## 常用场景

### 自动化测试网站流程
```
/agent-browser https://example.com 完成注册流程：填写姓名/邮箱/密码，点击提交，截图确认成功
```

### 填写表单
```
/agent-browser https://form.example.com 填写联系表单：名字=张三，邮箱=test@test.com，消息=测试内容，提交
```

### 抓取数据
```
/agent-browser https://example.com/pricing 抓取所有套餐名称和价格，输出为 JSON
```

### UI 操作验证
```
/agent-browser https://app.example.com 验证登录后导航菜单显示正确，截图保存
```

## 执行步骤

1. 用 `mcp__playwright__browser_navigate` 打开页面
2. 用 `mcp__playwright__browser_snapshot` 获取页面结构
3. 按指令依次执行：click / fill / select / press_key
4. 用 `mcp__playwright__browser_take_screenshot` 截图记录关键步骤
5. 返回执行结果摘要 + 截图路径

## 注意

- 涉及提交/支付/删除等不可逆操作前，显示确认提示
- 默认无头模式（headless），加 `--visible` 可显示浏览器窗口
