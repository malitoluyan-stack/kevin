# Blog Watcher

Monitor blogs and RSS feeds for new content. Use `$ARGUMENTS` as a feed URL or keyword.

## Setup Required

Provide one or more RSS/Atom feed URLs, or edit `.claude/blogwatcher-feeds.txt` to add permanent subscriptions (one URL per line).

Example feeds file:
```
https://example.com/feed.xml
https://blog.example.org/rss
```

## Behavior

### Check mode (default)
1. Read feed URLs from `$ARGUMENTS` or `.claude/blogwatcher-feeds.txt`
2. Fetch each feed using WebFetch
3. Parse the XML/JSON for entries newer than last check (stored in `.claude/blogwatcher-state.json`)
4. Summarize new posts: title, date, URL, 1-sentence summary

### Subscribe mode (`$ARGUMENTS` = `add <url>`)
Append the URL to `.claude/blogwatcher-feeds.txt`

### List mode (`$ARGUMENTS` = `list`)
Show all subscribed feeds and last-checked timestamps

## Output

**New posts since last check:**
- [Feed Name] — "[Post Title]" (date) — [url]
  > [1-sentence summary]
