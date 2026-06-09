# GOG — Google Workspace CLI

Interact with Google Workspace (Docs, Sheets, Drive, Gmail, Calendar) from the command line.

## Setup Required

Authenticate via OAuth2 or a service account:
1. Create a project at https://console.cloud.google.com
2. Enable APIs: Drive, Docs, Sheets, Gmail, Calendar
3. Download `credentials.json` to the project root
4. Set `GOOGLE_APPLICATION_CREDENTIALS=./credentials.json` in your environment

Or configure via the Google Workspace MCP server if available.

## Commands (via `$ARGUMENTS`)

| Command | Action |
|---------|--------|
| `docs read <file-id>` | Read a Google Doc |
| `docs write <file-id> <content>` | Append to a Google Doc |
| `sheets read <sheet-id> <range>` | Read cells (e.g., `Sheet1!A1:D10`) |
| `sheets write <sheet-id> <range> <data>` | Write cells |
| `drive list <folder-id>` | List files in a Drive folder |
| `drive download <file-id>` | Download a file |
| `gmail send <to> <subject> <body>` | Send an email |
| `calendar list` | List upcoming events |

## Behavior

Parse `$ARGUMENTS`, call the appropriate Google API via the configured credentials, and return the result in a clean, readable format.
