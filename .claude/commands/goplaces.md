# GoPlaces — Google Places API

Search for places, get details, reviews, and nearby recommendations.

## Setup Required

Set `GOOGLE_PLACES_API_KEY` environment variable.
Get a key at https://console.cloud.google.com (enable Places API).

## Commands (via `$ARGUMENTS`)

| Command | Example |
|---------|---------|
| `search <query> [location]` | `search "coffee shops" "Shanghai"` |
| `details <place_id>` | `details ChIJN1t_tDeuEmsRUcIaWtf4M` |
| `nearby <lat,lng> <radius_m> <type>` | `nearby 31.2304,121.4737 1000 restaurant` |
| `reviews <place_id>` | Show top reviews |
| `photo <place_id>` | Get photo URLs |

## Behavior

1. Parse `$ARGUMENTS`
2. Call the Google Places API endpoint via WebFetch with the configured key
3. Format results cleanly

## Output

**Place Search Results:**
1. **[Name]** — [address] — ⭐ [rating] ([review_count] reviews) — [open/closed]
   Types: [categories] | Place ID: [id]
