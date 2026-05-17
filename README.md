# CV — Raphael Bernardo

Role-targeted curriculum vitae system for **Raphael Bernardo Gonzalez Nunes da Rocha**,
Senior Android / Streaming Engineer. Served via GitHub Pages at
`https://raphaelbgr.github.io/cv`.

## Structure

```
cv/
├── index.html              # Variant picker (public entry point)
├── jd-coverage-audit.md    # 2026 keyword-gap analysis against live JDs
├── build-pdfs.ps1          # Headless Chrome PDF build script
├── default/
│   ├── index.html          # Balanced variant — HTML (designed A4 layout)
│   ├── cv.md               # Balanced variant — Markdown (ATS plain text)
│   └── cv.pdf              # Pre-built PDF (regenerated via build-pdfs.ps1)
├── streaming/              # OTT/CTV specialist variant
├── faang/                  # FAANG-mobile / Ex-Uber variant
└── architect/              # Staff/Principal / platform architect variant
```

## Variants

| Variant | Target Archetype | Lead Signal |
|---------|-----------------|-------------|
| **default** | Balanced / recruiter intro | Senior Android · Ex-Uber · Streaming |
| **streaming** | OTT · CTV · Android TV companies | OTT framework · multi-DRM · QoE |
| **faang** | FAANG-mobile · brand-led | Ex-Uber · JNI/C++ · RIBs |
| **architect** | Staff / Principal IC roles | Clean Architecture · KMP · multi-platform |

## Usage

### Human reviewers — PDF
Open the appropriate `index.html` in Chrome, then `Ctrl+P` → Save as PDF, margins set to
**None** (the page has its own A4 margins). Or use the pre-built `cv.pdf` download link
already in each variant page.

### ATS submission — Markdown
Paste `cv.md` content into Workday, Greenhouse, LinkedIn Easy Apply, or similar text fields.
Plain text; no styling that confuses embedding-based ranking.

### Rebuild all PDFs after HTML changes
```powershell
cd path\to\cv
.\build-pdfs.ps1
```
Requires Google Chrome at the standard install path. Internet access is needed to fetch
Google Fonts (Fraunces, IBM Plex Sans, JetBrains Mono) referenced in each `index.html`.
Commit the regenerated `cv.pdf` files after rebuilding.

## Keyword Coverage
The skill taxonomy was audited against live 2026 Senior Streaming/CTV JDs (9 primary sources:
Disney, Amazon FireTV, Pluto TV, Netflix, Verkada, Spectrio, Yoto, plus secondary signals
from Apple TV, FuboTV, Patreon). See `jd-coverage-audit.md` for the full analysis.

Key surface areas covered: MediaCodec, CMAF, LL-HLS, HEVC/H.265, hardware-accelerated
decoding, HDR10+, MVI, Unidirectional Data Flow, Compose for TV, QoE, TTFF, rebuffering rate,
Systrace, Perfetto, Paparazzi, Turbine, WCAG 2.2, TalkBack, d-pad focus order.
