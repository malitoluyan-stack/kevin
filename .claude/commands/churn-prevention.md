# Churn Prevention

Diagnose churn and build a prevention strategy for `$ARGUMENTS` (product, segment, or churn data).

## Diagnosis Framework

### Churn Reasons Taxonomy
- **Value not realized**: onboarding failure, feature not discovered
- **Better alternative**: competitor poaching, switching
- **Budget cut**: economic downturn, internal repriorization
- **End of use case**: seasonal, project-based usage
- **Poor experience**: bugs, support failures, UX friction

## Analysis Steps

1. **Segment the churn**: which cohorts, channels, or plans churn most?
2. **Identify leading indicators** (signals before cancellation):
   - Drop in login frequency
   - Declining feature usage
   - Support tickets
   - NPS decrease
3. **Root cause** (pick top 1–2 from taxonomy above)
4. **Intervention playbook**:

| Signal | Intervention | Owner | Timing |
|--------|-------------|-------|--------|
| No login 7 days | Re-engagement email | Marketing | Day 8 |
| Feature unused | In-app tooltip / CSM call | Product/CS | Day 14 |

5. **Save vs. let go**: criteria for high-touch save vs. graceful offboarding

## Output

Churn diagnosis + segmented intervention playbook + success metrics (save rate target).
