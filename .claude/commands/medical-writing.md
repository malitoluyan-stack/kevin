# Medical Writing — 医学文献写作

撰写医学和药学专业文档。使用 `$ARGUMENTS` 指定文档类型和主题。

## 支持文档类型

| 类型 | 说明 |
|------|------|
| `case-report` | 病例报告（背景/病史/诊治/讨论） |
| `drug-analysis` | 药学分析报告（疗效/安全性/经济性） |
| `literature-review` | 文献综述（系统综述框架） |
| `hospital-protocol` | 院内用药规范/操作规程 |
| `patient-education` | 患者用药教育材料（去专业化） |
| `adverse-event` | 不良事件报告（CIOMS/MedDRA格式） |
| `formulary-justification` | 药品目录收录论证报告 |
| `pharmacovigilance` | 药物警戒分析报告 |

## 写作规范

### 结构要求
- 病例报告：CARE指南格式
- 系统综述：PRISMA声明
- 临床研究：CONSORT/STROBE checklist

### 语言规范
- 使用 INN（国际非专利名称）作为主称，首次出现标注商品名
- 剂量单位：mg/kg、mg/m²（儿童）、μg（注意μ符号）
- 统计描述：均值±标准差 或 中位数(IQR)，明确n值

### 引用格式
- 中文期刊：GB/T 7714 格式
- 英文期刊：Vancouver格式（ICMJE推荐）

## 质量检查（自动执行）
- 药物名称是否规范（通用名+商品名）
- 数据是否有来源
- 是否包含利益冲突声明位置
