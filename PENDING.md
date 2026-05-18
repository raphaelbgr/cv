# CV Pending Work — 2026-05-17

## Project Purpose
Role-targeted CV system for Raphael Bernardo — Senior Android / Streaming Engineer.
Four HTML+Markdown variant pairs (default, streaming, faang, architect) served via GitHub Pages
at `raphaelbgr.github.io/cv`. A PowerShell script generates pre-built PDFs via headless Chrome.

## Current State
- All four variants are live and well-structured (HTML + Markdown + pre-built PDF).
- Skill taxonomy was updated 2026-05-05 with JD-coverage audit keywords: MediaCodec, CMAF, LL-HLS,
  MVI, UDF, Paparazzi, Turbine, QoE, TTFF, WCAG 2.2, Compose for TV.
- Variant-specific skill ordering is implemented in HTML (streaming leads with Streaming group,
  architect leads with Architecture group).
- The four `.md` ATS files share the same generic Summary paragraph; variant-specific summaries
  exist only in the HTML files.

## Prioritised Pending Items

### P1 — Align `.md` summaries to variant positioning (high ROI, low effort)
Each `cv.md` ATS file has a generic summary identical to `default/`. Streaming/FAANG/Architect
variants should carry their variant-specific summary so ATS-submitted text matches the targeted
positioning. Streaming summary should lead with OTT/CTV signal; FAANG with Ex-Uber/native;
architect with multi-platform framework design.

### P2 — Strengthen default Summary per JD-audit recommendation #9 and #10
JD-audit recommends replacing the current summary opening with language that adds "multi-tenant",
"QoE", "observability", and "led architecture reviews and build-vs-buy decisions across 5
Media3 player implementations". This mirrors Disney/Netflix/Apple Senior+ phrasing and directly
improves ATS rank on top-frequency terms.

### P3 — Pre-built PDFs regeneration
The `.pdf` files in each variant are pre-built binaries committed to git. After any HTML change
they should be regenerated via `build-pdfs.ps1` (requires Chrome). This is a manual step;
document it in README.

### P4 — Add `<meta name="robots" content="noindex">` to all variant pages
The variant HTML pages at `raphaelbgr.github.io/cv/default/` etc. are discoverable by search
engines. If the intent is that only the index page is indexed, add noindex to the four variant
pages (not the index).

### P5 — Streaming variant: add RTSP / WebRTC keyword to HTML skills grid
FreeCast GStreamer + HDHomeRun work covers RTSP ingest. The JD audit flagged WebRTC/RTSP as
appearing in 3+ JDs (Verkada, Spectrio, FuboTV). The streaming `index.html` skills grid does
not yet surface it.

### P6 — FAANG variant: add A/B testing & experimentation to skills grid
JD audit ranked A/B testing / experimentation frameworks at #9 (Netflix Platform, Patreon,
Apple TV). The FAANG-mobile variant is most likely to be submitted to those companies but
the skill is not surfaced in any variant.

### P7 — Consider adding GraphQL (Apollo) to Cloud & Backend if accurate
JD audit recommendation #7: GraphQL (Apollo) appears in Netflix/Apple/Patreon JDs. Only include
if Raphael has genuinely touched it.

### P8 — "Vol. X" eyebrow placeholder in all HTML files
All variant HTML pages use `Vol. X` in the eyebrow line. This is either intentional style
(Roman numeral 10 = 10+ years experience) or an unfilled placeholder. If intentional, document it;
if not, decide on a concrete value.
