# Content Research Writer

Research a topic and write a well-sourced article or report. Use `$ARGUMENTS` as the topic and optional format.

## Format: `<topic> [--type article|report|essay|listicle] [--length short|medium|long] [--audience <target>]`

Defaults: type=article, length=medium, audience=general

## Behavior

### Research Phase
1. Use WebSearch to find 5–8 authoritative sources on the topic
2. Fetch key pages with WebFetch
3. Extract: key facts, statistics, expert quotes, counterarguments
4. Identify knowledge gaps or disputed claims

### Writing Phase
1. Draft an outline (intro, 3–5 body sections, conclusion)
2. Write with inline citations: [Source Name, Year]
3. Lead with the most important insight (inverted pyramid for articles)
4. Include at least one data point per major section
5. End with a clear takeaway or call to action

### Output Format
- Title (SEO-optimized if article)
- Word count target: short=500, medium=1000, long=2000
- Body with H2 section headers
- References list at the end

## Quality checks
- No unsourced claims about specific statistics
- No fabricated quotes — only paraphrase unless source confirms verbatim
- Flag any claims that couldn't be verified with `[unverified]`
