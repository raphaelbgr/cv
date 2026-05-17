# Changelog

## 2026-05-17

### Added
- `PENDING.md` — prioritised backlog of CV maintenance items.
- `README.md` — project overview, usage guide, variant decision matrix, keyword-coverage
  summary.
- `ARCHITECTURE.md` — design tokens, variant differentiation model, PDF build pipeline,
  GitHub Pages configuration.
- `CHANGELOG.md` — this file.
- `docs/bmad/prd.md` and `docs/bmad/architecture.md` — BMAD v6 product and architecture
  documents authored from the real codebase.
- `<meta name="robots" content="noindex, follow">` added to all four variant `index.html`
  pages so only the root picker is indexed by search engines.
- `RTSP` surfaced in `streaming/index.html` skills grid (Streaming · Media group) and
  `streaming/cv.md` — honest given the GStreamer / HDHomeRun OTA-tuner work at FreeCast.

### Changed
- `default/cv.md` Summary updated with JD-audit-recommended language: "multi-tenant OTT
  streaming framework powering 50+ broadcast brands at petabyte-scale viewership, owning
  playback QoE, multi-DRM, SSAI, and observability end-to-end. Led architecture reviews and
  build-vs-buy decisions across five Media3 / ExoPlayer player implementations."
- `default/index.html` Summary paragraph updated to match the stronger language above.
- `streaming/cv.md` Summary rewritten to be streaming-specific: leads with OTT/CTV
  specialist positioning, surfaces QoE, SSAI/CSAI, GStreamer/tuner pipelines, KMP.
- `faang/cv.md` Summary rewritten to be FAANG-specific: leads with Ex-Uber / JNI/C++
  native depth, broad platform reach, scale signal.
- `architect/cv.md` Summary rewritten to be architect-specific: leads with platform
  architecture, multi-tenant framework ownership, multi-DRM, KMP, QoE observability.

## 2026-05-05

### Added
- JD keyword-gap audit (`jd-coverage-audit.md`) against 9 live Senior Streaming/CTV JDs.
- Skills taxonomy expanded: MediaCodec, hardware-accelerated decoding, H.264/AVC, HEVC/H.265,
  CMAF, LL-HLS, HDR10+, AAC, MVI, Unidirectional Data Flow, Compose for TV, Quality of
  Experience (QoE), Time-to-First-Frame (TTFF), Rebuffering rate, Systrace, Perfetto, Android
  Profiler, Paparazzi (screenshot testing), Turbine (Flow testing), WCAG 2.2, TalkBack,
  d-pad focus order.

## 2026-04-xx

### Added
- Pre-built `cv.pdf` per variant; Download PDF direct file link in each variant page.
- Dual-citizenship and English fluency in masthead.
- `build-pdfs.ps1` — headless Chrome PDF build script.

## 2026-04-xx (initial)

### Added
- Initial CV — four role-targeted variants (default, streaming, faang, architect).
- JD audit structure (pre-keyword-gap iteration).
- GitHub Pages serving from `main` branch root.
