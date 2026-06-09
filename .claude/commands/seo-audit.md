# SEO Audit

Perform an SEO audit of `$ARGUMENTS` (URL, page content, or website).

## Audit Categories

### Technical SEO
- [ ] Page speed indicators (if measurable)
- [ ] Mobile-friendliness signals
- [ ] HTTPS / security
- [ ] Canonical tags
- [ ] Robots.txt / sitemap presence
- [ ] Structured data (schema.org)

### On-Page SEO
- [ ] Title tag: length (50–60 chars), keyword placement
- [ ] Meta description: length (150–160 chars), compelling copy
- [ ] H1 tag: present, keyword-relevant, one per page
- [ ] H2–H6 structure: logical hierarchy
- [ ] Keyword density and placement (intro, headers, body)
- [ ] Internal linking
- [ ] Image alt text
- [ ] URL structure (short, descriptive, keyword-rich)

### Content Quality
- [ ] Content length vs. SERP competitors
- [ ] E-E-A-T signals (expertise, experience, authoritativeness, trust)
- [ ] Readability score
- [ ] Duplicate content risk

### Competitive Gap
- [ ] Top 3 ranking pages for target keyword
- [ ] Content gaps vs. competitors

## Behavior

Fetch the URL with WebFetch (if a URL), then audit against the checklist. Score each category: ✅ Pass / ⚠️ Improve / ❌ Fix.

## Output

Checklist results + Priority fixes (ranked by SEO impact) + Quick wins vs. long-term tasks.
