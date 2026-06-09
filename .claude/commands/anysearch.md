# AnySearch

Real-time web search. Use `$ARGUMENTS` as the search query.

## Behavior

1. Parse `$ARGUMENTS` as the search query
2. Use available search tools (WebSearch, Brave Search MCP, Tavily MCP, or DuckDuckGo) — try in that order based on what's configured
3. Retrieve top 5–10 results
4. For each result, fetch the page content if needed to answer the query
5. Synthesize findings into a direct answer with sources

## Output Format

**Answer**: [direct answer in 2-3 sentences]

**Sources**:
1. [title] — [url] — [key fact from this source]
2. ...

**Search performed**: [timestamp]

## Fallback

If no search MCP is available, use the WebFetch tool with a search engine URL, or instruct the user to configure a search MCP (Tavily, Brave, or Exa).
