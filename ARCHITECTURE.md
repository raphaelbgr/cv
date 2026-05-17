# Architecture — CV System

## Overview

The CV system is a static-site multi-variant document generator. No build toolchain,
no JavaScript framework, no package manager. Pure HTML/CSS/Markdown, served from
GitHub Pages.

## File Layout

```
cv/
├── index.html              # Root picker page — links to all four variants
├── jd-coverage-audit.md    # Input: JD keyword-gap analysis
├── build-pdfs.ps1          # Tooling: headless Chrome PDF generator (PowerShell)
├── .nojekyll               # Prevents GitHub Pages from running Jekyll
└── <variant>/
    ├── index.html          # Designed two-page A4 layout (print/PDF target)
    ├── cv.md               # Plain-text ATS version (same facts, no styling)
    └── cv.pdf              # Pre-built PDF binary (committed to git)
```

## Design Tokens

All pages share a consistent editorial design system defined via CSS custom properties:

| Token | Value | Role |
|-------|-------|------|
| `--paper` | `#FAF7F1` | Page background (warm white) |
| `--ink` | `#16130E` | Primary text |
| `--accent` | `#A8261C` | News-red — section numbers, rule accents |
| `--display` | Fraunces (variable serif) | Name, headings, summary |
| `--body` | IBM Plex Sans | Body text |
| `--mono` | JetBrains Mono | Labels, tags, dates |

## Variant Differentiation

Each variant shares the same CSS and layout structure; differentiation is in:

1. **`<title>` and `<meta name="description">`** — variant-specific tagline
2. **Masthead role line** — one sentence repositioning the engineer for the target archetype
3. **Summary paragraph** — variant-specific positioning text
4. **Skills grid ordering** — leading skill category matches the target archetype:
   - `streaming/`: Streaming · Media first
   - `architect/`: Architecture first
   - `faang/`: Languages → Mobile/TV → Streaming (breadth signal)
   - `default/`: Languages first (balanced)
5. **PDF filename** — `raphael-bernardo-cv-<variant>.pdf` in the download `href`

## Data Flow

```
jd-coverage-audit.md  ─(informs)─►  cv.md (all variants)
                                     └─► index.html (all variants)
                                              └─►  build-pdfs.ps1
                                                        └─►  cv.pdf
```

Content is maintained in `index.html` (canonical, styled) and kept in sync with
`cv.md` (ATS plain-text mirror). The PDF is a build artefact generated from the HTML.

## PDF Build

`build-pdfs.ps1` drives headless Chrome (`--headless=new`) with:
- `--no-pdf-header-footer` — suppresses browser-injected page headers/footers
- `--virtual-time-budget=15000` — allows Google Fonts to load before capture
- `--run-all-compositor-stages-before-draw` — ensures full render before print

Internet access is required at build time for Google Fonts CDN.

## GitHub Pages Configuration

- Repository: `raphaelbgr/cv`
- Served from: `main` branch root
- `.nojekyll` present to bypass Jekyll processing
- All variant paths (`/default/`, `/streaming/`, `/faang/`, `/architect/`) resolve to
  their `index.html` via standard directory indexing
- Variant `index.html` pages carry `<meta name="robots" content="noindex, follow">`
  so only the root picker page is indexed by search engines
