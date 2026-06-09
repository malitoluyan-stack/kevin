# Testing — 编写与运行稳定的测试

为代码库生成、补全、运行和修复测试。使用 `$ARGUMENTS` 指定操作和目标。

## 命令格式

| 命令 | 说明 |
|------|------|
| `generate <file>` | 为指定文件生成单元测试 |
| `e2e <url\|feature>` | 生成 E2E 测试（Playwright） |
| `coverage` | 分析测试覆盖率，列出未覆盖路径 |
| `fix` | 读取失败的测试输出，诊断并修复 |
| `run [pattern]` | 运行测试并解析结果 |
| `tdd <feature>` | TDD 模式：先写测试，再实现功能 |

## 测试生成原则

- 每个公开函数至少 3 个 case：正常输入、边界值、异常输入
- Mock 外部依赖（网络、数据库、文件系统）
- 测试描述用 `should <行为>` 格式，不用 `test <函数名>`
- 保持测试独立，无共享可变状态

## TDD 流程

1. 根据 `$ARGUMENTS` 写出失败测试（Red）
2. 写最小实现让测试通过（Green）
3. 重构代码保持测试绿色（Refactor）

## 框架自动检测

检测项目中的测试框架：
- JS/TS: Jest / Vitest / Mocha / Playwright
- Python: pytest / unittest
- Go: testing 包
- Rust: 内置 `#[test]`

## 输出

生成的测试文件保存在与源文件相邻的 `__tests__/` 或 `*.test.*` 文件中。
