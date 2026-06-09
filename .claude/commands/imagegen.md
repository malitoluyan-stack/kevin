# Imagegen — 做图/配图/封面生成

生成图片、封面、配图的 prompt，或通过 API 直接生成。使用 `$ARGUMENTS` 描述需求。

## 配置（选择一种）

```bash
# 方案1：DALL-E（OpenAI）
export OPENAI_API_KEY=<key>

# 方案2：Stable Diffusion（本地）
# 需先运行 SD WebUI：http://localhost:7860

# 方案3：Flux / Midjourney（通过 API）
export FLUX_API_KEY=<key>
```

## 命令格式

| 命令 | 说明 |
|------|------|
| `cover <title> <style>` | 生成文章/报告封面 |
| `blog <topic>` | 生成博客配图（横版 16:9） |
| `icon <description>` | 生成图标或 Logo 概念 |
| `social <platform> <topic>` | 生成社交媒体图（微信/小红书/Twitter） |
| `prompt <description>` | 只优化 prompt，不生成图片 |

## Prompt 优化原则

1. 主体 → 风格 → 光线 → 构图 → 质量词
2. 避免模糊词（"好看的"→"minimalist flat design"）
3. 加质量词：`high quality, 4K, detailed, professional`
4. 中文描述自动翻译为英文 prompt

## 输出

- 有 API Key：直接生成图片，保存到 `./images/` 目录
- 无 API Key：输出优化后的 prompt，可粘贴到 Midjourney/DALL-E 等工具

## 示例

```
/imagegen cover "AI时代的产品设计" "tech dark minimalist"
/imagegen social 小红书 "咖啡生活方式"
/imagegen prompt "一只在月光下弹吉他的猫"
```
