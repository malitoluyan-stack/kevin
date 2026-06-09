# Legal Risk Assessment

Assess legal risks in `$ARGUMENTS` (contract, business model, product feature, or situation).

> **Disclaimer**: This is an AI-assisted analysis for informational purposes only. It does not constitute legal advice. Consult a qualified attorney for decisions with legal consequences.

## Risk Categories

- **Contract risks**: ambiguous terms, missing clauses, one-sided obligations
- **IP risks**: copyright, trademark, patent infringement; ownership of work product
- **Data & privacy**: GDPR, CCPA, PIPL compliance; data collection, retention, sharing
- **Employment**: contractor vs. employee misclassification, NDAs, non-competes
- **Regulatory**: industry-specific regulations (fintech, healthcare, AI, etc.)
- **Liability**: indemnification, limitation of liability, warranty disclaimers
- **Cross-border**: jurisdiction conflicts, export controls, local law requirements

## Behavior

1. Identify the legal context from `$ARGUMENTS`
2. Screen for risks across the relevant categories
3. Rate each risk: Critical / High / Medium / Low
4. For each High/Critical risk, suggest a specific mitigation

## Output

| Risk | Category | Severity | Mitigation |
|------|----------|----------|------------|

Summary: overall risk level + top 3 priority actions.
