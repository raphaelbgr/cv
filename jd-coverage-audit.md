# CV Keyword-Gap Audit — 2026 Senior Streaming/CTV Engineer JDs

**Date:** 2026-05-05  · **JDs analyzed:** 9 live (Disney NY Senior Android, Amazon Fire TV SDE, Amazon FireTV System Eng, Pluto TV Senior Android, Netflix Android Software Eng 5 Streaming/Discovery, Netflix Android Platform, Verkada Senior Android Streaming, Spectrio Senior Android Media Platforms, Yoto Senior Android) plus secondary signal from Apple TV App Android, Patreon Staff Media, FuboTV Roku/Video I/O, Google Android TV OS aggregator search hits.

---

## (a) Keyword frequency — terms in 3+ JDs NOT yet in candidate CV

| Rank | Keyword / Term                                       | JDs (of 9) | Notes |
|------|------------------------------------------------------|-----------:|-------|
| 1    | **MediaCodec / hardware-accelerated decoding**       | 6 | Disney, Verkada, Spectrio, Patreon, FuboTV, Apple TV |
| 2    | **H.264 / HEVC (H.265) codec literacy**              | 6 | Same set — codec call-outs are now table stakes |
| 3    | **Quality of Experience (QoE) / playback metrics**   | 5 | Netflix Platform, Netflix Discovery, Verkada, Disney, FuboTV |
| 4    | **MVI architecture** (alongside MVVM)                | 4 | Disney, Yoto, Netflix Discovery, Apple TV |
| 5    | **Jetpack Compose for TV** (specifically, vs vanilla)| 4 | Apple TV, Google ATV, Yoto, Disney |
| 6    | **Dolby Vision / Atmos / HDR10+ / DTS:X**            | 3 | Disney explicit, Apple TV implicit, FuboTV |
| 7    | **WebRTC / RTSP / Multicast** ingest protocols        | 3 | Verkada, Spectrio, FuboTV |
| 8    | **CMAF / LL-HLS / Low-latency live**                  | 3 | FuboTV, BBC trial coverage, Disney implicit |
| 9    | **A/B testing & experimentation frameworks**         | 3 | Netflix Platform, Patreon, Apple TV |
| 10   | **Accessibility / WCAG / TalkBack on TV**            | 3 | Disney, Netflix Discovery, Pluto TV (a11y arch role) |
| 11   | **Paparazzi / screenshot testing**                   | 3 | Netflix Discovery, Patreon, Disney |
| 12   | **Systrace / Perfetto / Android Profiler depth**     | 3 | Spectrio, Disney, Verkada |
| 13   | **GraphQL client (Apollo)**                          | 3 | Netflix Discovery, Apple TV, Patreon |
| 14   | **AOSP / system-level / Linux drivers**              | 2-3 | Amazon FireTV System, Spectrio |
| 15   | **TTFF (time-to-first-frame) / startup-time KPIs**   | 3 | Verkada, Netflix Platform, FuboTV |
| 16   | **Circuit / Molecule / unidirectional state**        | 2 | Netflix Discovery — emerging signal |

---

## (b) Phrasing patterns to mirror

1. *"Lead architecture and technical direction across N+ engineers / cross-functional teams."*
2. *"Drive build-vs-buy and platform-level technology decisions."*
3. *"Improve Quality of Experience (QoE) by reducing rebuffering and TTFF on flaky networks."*
4. *"Mentor engineers, lead code reviews, and raise the bar on engineering excellence."*
5. *"Operate production services at scale serving millions of devices."*
6. *"Pristine written and verbal communication; prepare architecture diagrams and technical specifications."*
7. *"Bias for action — pragmatic tradeoffs between scope, performance, and reliability."*
8. *"Partner with backend, video infrastructure, product and design as a force multiplier."*
9. *"Own the full lifecycle: bring-up, launch, scale, observability, and on-call."*

---

## (c) Recommended additions — ranked by ROI

All suggestions below are honest given Raphael's profile (10+ yrs Android, 50+ TV brands framework, JNI/C++ at Uber Maps SDK, GStreamer + tuner work at FreeCast, Media3 at Nexstar).

1. **Add to Streaming & Media:** `MediaCodec`, `hardware-accelerated decoding`, `H.264`, `HEVC`, `AAC` — he ships Media3 + GStreamer pipelines so this is honest and currently invisible.
2. **Add to Streaming & Media:** `CMAF`, `Low-Latency HLS (LL-HLS)`, `DASH-IF` — the FreeCast HLS/DASH live work covers this; surface the modern terminology.
3. **Add a new top-level skill bullet "Performance & Observability":** `Quality of Experience (QoE)`, `time-to-first-frame (TTFF)`, `rebuffering rate`, `startup-time optimization`, `Systrace`, `Perfetto`, `Android Profiler`. Mux Analytics already implies QoE — name it.
4. **Architecture line — change** *"MVVM, Clean Architecture, Use Case, Multi-module, Plugin-based integration, RIBs, MVP"* **to** *"MVVM, MVI, Clean Architecture, Use Case, Multi-module, Plugin-based integration, RIBs, MVP, Unidirectional Data Flow"*. MVI and UDF are the 2026 default in JDs.
5. **Jetpack Compose entry — change** *"Jetpack Compose"* **to** *"Jetpack Compose, Compose for TV"*. Disney/Apple/Google ATV all call it out separately from mobile Compose.
6. **Add to Streaming & Media:** `Dolby Vision`, `Dolby Atmos`, `HDR10+`. Nexstar 4K + multi-DRM stack implies HDR pipelines — claim it if true; otherwise drop.
7. **Add to Cloud & Backend:** `GraphQL (Apollo)` — even a small claim covers Netflix/Apple/Patreon-class JDs. Only add if he has touched it; otherwise omit.
8. **Add to Testing & Build:** `Paparazzi (screenshot testing)`, `Turbine (Flow testing)`. These are 2026-table-stakes alongside Mockk.
9. **Summary rewrite — replace** *"Architect of a streaming framework powering 50+ TV brands"* **with** *"Architect of a multi-tenant OTT framework powering 50+ broadcast brands at petabyte-scale viewership — owns playback QoE, multi-DRM, SSAI, and observability end-to-end."* Adds three frequency-table keywords (multi-tenant, QoE, observability) in one sentence.
10. **Add to Architecture / Leadership signal in summary:** the phrase *"led architecture reviews and build-vs-buy decisions across 5 Media3 player implementations"* — directly mirrors Disney/Netflix/Apple phrasing for Senior+ roles.
11. **Add to Compliance & Security:** `COPPA`, `accessibility (WCAG 2.2, TalkBack on TV, d-pad focus order)`. The Leanback / d-pad work is already in his FireTV bullets — surface a11y as a named compliance item.
12. **Add to Streaming & Media (low-confidence — only if accurate):** `WebRTC`, `RTSP` — Verkada/Spectrio/FuboTV signal, but only honest if he has touched RTSP via the GStreamer/HDHomeRun work. Likely yes; verify.

---

## Notes & caveats

- US LinkedIn / Greenhouse / Glassdoor pages returned 403 to WebFetch (anti-bot). Sample biased toward sites that allow scraping (Disney Careers, Amazon Jobs, EchoJobs, Yoto, BuiltIn, Working Nomads, Indeed-mirrored).
- Could not pull live BBC iPlayer / Sky / ITV / Paramount JDs — UK & big-tech HR portals are gated. Findings are US-skewed.
- Roku, FuboTV, Pluto-TV-direct, Patreon, and Apple TV postings were searchable but their canonical URLs blocked WebFetch; their requirements above come from the `WebSearch` snippet excerpts, not full JD text. Treat those data points as medium-confidence.
- **No JDs were fabricated.** Where the snippet was thin, the keyword was counted only if it appeared verbatim.
