# SaaS Metrics Coach

Analyze SaaS metrics, diagnose health, and recommend improvements. Use `$ARGUMENTS` to provide metrics or ask a question.

## Key Metrics Covered

| Metric | Healthy Benchmark |
|--------|-------------------|
| MRR / ARR | Growth rate > 10% MoM (early stage) |
| Churn Rate | < 2% monthly (B2B), < 5% (B2C) |
| NRR (Net Revenue Retention) | > 100% = expansion revenue |
| CAC | < 1/3 of LTV |
| LTV | > 3× CAC |
| LTV:CAC Ratio | > 3:1 |
| Payback Period | < 12 months (B2B), < 6 months (B2C) |
| DAU/MAU | > 40% = strong engagement |
| Quick Ratio | (New MRR + Expansion MRR) / (Churned + Contraction MRR) > 4 |

## Behavior

1. Parse provided metrics from `$ARGUMENTS`
2. Compare each metric to benchmarks
3. Identify the top 1–2 problem areas (red flags)
4. Diagnose root causes (e.g., high churn → poor onboarding? wrong ICP?)
5. Recommend 3 specific actions with expected impact

## Output

Traffic-light status for each metric (🟢 / 🟡 / 🔴) + diagnosis + action plan.
