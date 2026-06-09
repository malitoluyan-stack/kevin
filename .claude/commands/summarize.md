# Summarize

Summarize URLs, local files, podcasts, or PDFs. Use `$ARGUMENTS` as the source.

## Setup

For podcast transcription: set `OPENAI_API_KEY` (Whisper) or use a local Whisper install.
For PDFs: requires `markitdown` MCP or `pdfplumber` Python package.

## Behavior by input type

### URL (`$ARGUMENTS` starts with `http`)
1. Fetch the page with WebFetch
2. Extract main content (strip nav, ads, footers)
3. Summarize in structured format

### Local file (`$ARGUMENTS` is a file path)
- `.pdf` → extract text via markitdown MCP or `pdfplumber`
- `.docx` / `.pptx` → extract via markitdown MCP or python-docx/python-pptx
- `.mp3` / `.m4a` / `.wav` → transcribe with Whisper, then summarize
- `.md` / `.txt` → read directly

### YouTube URL
Fetch transcript via `yt-dlp --write-auto-sub` if available, then summarize.

## Output Format

**Source**: [title or filename]
**Type**: [article / PDF / podcast / video]
**Length**: [word count or duration]

**Summary** (3–5 bullets):
- [key point]

**Key Quotes / Data**:
> "[notable quote or statistic]"

**Takeaway**: [one-sentence conclusion]
