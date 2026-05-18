# Architecture Document
## CV System — Raphael Bernardo

**Version:** 1.0  
**Date:** 2026-05-17  
**Status:** Active

---

## 1. System Overview

The CV system is a zero-dependency static document system. No build pipeline beyond an
optional PDF-generation step. No runtime server. No JavaScript. Source of truth is the
set of HTML and Markdown files committed to the `raphaelbgr/cv` GitHub repository,
served directly via GitHub Pages.

---

## 2. Component Map

```
┌─────────────────────────────────────────────────────────┐
│                   GitHub Pages CDN                      │
│                                                         │
│  raphaelbgr.github.io/cv/                               │
│  └── index.html (root picker)                           │
│       ├── /default/index.html  ──► /default/cv.pdf     │
│       │   /default/cv.md       (ATS plain text)         │
│       ├── /streaming/index.html ──► /streaming/cv.pdf  │
│       │   /streaming/cv.md                              │
│       ├── /faang/index.html    ──► /faang/cv.pdf        │
│       │   /faang/cv.md                                  │
│       └── /architect/index.html ──► /architect/cv.pdf  │
│           /architect/cv.md                              │
└─────────────────────────────────────────────────────────┘

┌─────────────────────────┐
│  Local Build (optional) │
│  build-pdfs.ps1         │
│    → Chrome headless    │
│    → writes cv.pdf x4   │
│    → git commit PDFs    │
└─────────────────────────┘
```

---

## 3. Design System

All pages share a single inline CSS design system. Tokens are defined in `:root` on every page
(duplicated, not imported, to keep each file self-contained):

### 3.1 Color Palette

| Token | Value | Usage |
|-------|-------|-------|
| `--paper` | `#FAF7F1` | Page surface |
| `--paper-2` | `#F2EDE3` | Outer background / note boxes |
| `--ink` | `#16130E` | Primary text, borders |
| `--ink-2` | `#3B362E` | Secondary text |
| `--mute` | `#7A7367` | Labels, metadata |
| `--rule` | `#D9D1C2` | Divider lines |
| `--accent` | `#A8261C` | Section numbers, rule accents, hover states |
| `--accent-soft` | `#F2DCD7` | Badge backgrounds |

### 3.2 Typography

| Token | Stack | Used for |
|-------|-------|---------|
| `--display` | Fraunces (variable) → Georgia → serif | Name, headings, summary |
| `--body` | IBM Plex Sans → system-ui → Helvetica | Body bullets, descriptions |
| `--mono` | JetBrains Mono → ui-monospace → Consolas | Labels, tags, dates, stack pills |

Fraunces is a variable font using `font-variation-settings` for weight (`wght 400–900`)
and optical size (`opsz 9–144`). This gives editorial weight contrast with a single font file.

### 3.3 Paper Grain

All `.page` elements use an SVG `feTurbulence` filter applied via `background-image` +
`background-blend-mode: multiply` to add a subtle paper grain texture — keeps the design
editorial rather than flat digital.

---

## 4. Page Structure (variant pages)

Each variant `index.html` has two `<article class="page">` blocks — printed as two A4 pages:

### Page 1
- **Masthead**: name (Fraunces display), role line, contact strip, Download PDF button
- **§ 01 Summary**: variant-specific positioning paragraph
- **§ 02 Experience**: chronological roles; recent in detail, prior terser

### Page 2
- **§ 03 Selected Personal Work**: 4 projects in a 2-column grid
- **§ 04 Education**: 3 rows (Infnet B.S., Chiswick K-12, Orion Java)
- **§ 05 Technical Stack**: skills grid (category label + tag pills)

### Print CSS
```css
@page { size: A4; margin: 0; }
@media print {
  .page { page-break-after: always; }
  .page:last-child { page-break-after: auto; }
  .print-btn { display: none !important; }
}
```

---

## 5. Variant Differentiation Model

All variants are structurally identical. Differentiation is confined to:

| Element | Varies per variant? |
|---------|-------------------|
| `<title>` | Yes — variant-specific tagline |
| `<meta name="description">` | Yes |
| `<meta name="robots">` | No — all variant pages are `noindex` |
| Masthead role line | Yes — one-sentence archetype positioning |
| Summary paragraph | Yes — variant-specific text |
| Skills grid **ordering** | Yes — lead category matches target archetype |
| Skills grid **content** | Mostly shared; streaming adds RTSP |
| Experience bullets | No — identical across all variants |
| Projects section | No — identical across all variants |
| PDF download filename | Yes — `cv-<variant>.pdf` |

---

## 6. Skills Grid Ordering by Variant

| Variant | Lead Category | Rationale |
|---------|--------------|-----------|
| `default` | Languages | Balanced breadth signal |
| `streaming` | Streaming · Media | OTT/CTV JDs keyword-scan top section |
| `faang` | Languages → Mobile/TV → Streaming | Breadth first; native depth visible early |
| `architect` | Architecture | Staff/Principal JDs scan for architectural patterns |

---

## 7. PDF Build Pipeline

`build-pdfs.ps1` (PowerShell):

1. Locates Chrome at standard paths (`Program Files`, `LocalAppData`).
2. For each variant (`default`, `streaming`, `faang`, `architect`):
   a. Constructs a `file:///` URL from the absolute path of `<variant>/index.html`.
   b. Invokes `chrome --headless=new --no-pdf-header-footer --virtual-time-budget=15000
      --run-all-compositor-stages-before-draw --print-to-pdf=<variant>/cv.pdf <url>`.
   c. Prints the output file path and size.
3. Prints completion message with instruction to commit the PDFs.

**Key flags:**
- `--virtual-time-budget=15000`: allows 15 s of simulated time for Google Fonts CDN to load
  before Chrome captures the page for PDF.
- `--no-pdf-header-footer`: prevents Chrome from injecting page-number / URL headers.
- `--run-all-compositor-stages-before-draw`: ensures layered compositing (paper grain SVG,
  CSS gradients) is fully rendered before PDF capture.

---

## 8. GitHub Pages Deployment

- Repository: `raphaelbgr/cv` (public)
- Branch: `main` (root publish)
- `.nojekyll` file: prevents GitHub Pages from running Jekyll on `.md` files
- No `_config.yml` required — simple static file serving

---

## 9. Keyword Coverage Architecture

The `jd-coverage-audit.md` is the external input document that drives skill taxonomy updates.
It is structured as:
- **(a) Frequency table** — terms in 3+ JDs not yet in CV
- **(b) Phrasing patterns** — JD language to mirror
- **(c) Ranked recommendations** — additions by ROI

The `cv.md` files and `index.html` skill grids are updated manually from this document.
No automated diffing or templating exists; the audit drives intentional editorial decisions.

---

## 10. Constraints and Trade-offs

| Decision | Trade-off |
|----------|-----------|
| Inline CSS (no external stylesheet) | Each file is self-contained and deployable standalone; duplication is intentional |
| PDFs committed to git | Binary bloat in history; benefit is direct download link works on GitHub Pages without a build step at serve time |
| No JavaScript | Eliminates print-mode JS bugs; simplifies CSP; no runtime dependencies |
| Google Fonts via CDN | Internet required at PDF build time; fonts not available offline |
| `file:///` URL for PDF build | Requires local Chrome; cannot use CI without Chrome action |
