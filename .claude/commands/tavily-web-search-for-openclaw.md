# Tavily Web Search

Real-time web search powered by Tavily. Use `$ARGUMENTS` as the query.

## Setup Required

Set the `TAVILY_API_KEY` environment variable. Get a key at https://tavily.com.

Configure in `.mcp.json`:
```json
{
  "mcpServers": {
    "tavily": {
      "command": "npx",
      "args": ["-y", "tavily-mcp@latest"],
      "env": {
        "TAVILY_API_KEY": "<your-key>"
      }
    }
  }
}
```

## Behavior

1. Use the Tavily MCP `tavily_search` tool with `$ARGUMENTS` as the query
2. Request `search_depth: "advanced"` for research queries, `"basic"` for quick facts
3. Include `include_answer: true` to get a direct AI-generated answer
4. Return top 5 results with titles, URLs, and snippets

## Output

**Direct Answer**: [Tavily's synthesized answer]

**Sources** (ranked by relevance):
1. [title] — [url]
   > [snippet]

**Query**: `$ARGUMENTS` | **Time**: [timestamp]
