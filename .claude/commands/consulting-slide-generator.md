# Consulting Slide Generator

Generate McKinsey/BCG-style slide content from `$ARGUMENTS` (topic or data).

## Slide Types

- **Title slide**: headline + subtitle + date
- **Situation slide**: context, what changed, why it matters
- **Insight slide**: one big idea + supporting evidence (3 bullets)
- **Data slide**: chart recommendation + key callout + interpretation
- **Recommendation slide**: action + rationale + expected outcome
- **Next steps slide**: owner, action, deadline table

## Behavior

1. Parse `$ARGUMENTS` for topic, audience, and purpose
2. Propose a 5–8 slide deck outline
3. For each slide, generate:
   - **Headline** (action-oriented, 10 words max — the "so what")
   - **Body** (3 bullets or a structured table)
   - **Chart/visual recommendation** if data is involved
4. Use pyramid principle: conclusion first, then evidence

## Output Format

```
## Slide N: [Headline]
**Type**: [slide type]
**Body**:
- bullet 1
- bullet 2
- bullet 3
**Visual**: [chart type and what to plot]
```

Optionally export to PowerPoint using `/powerpoint-pptx-cn`.
