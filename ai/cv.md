# Raphael Bernardo

**Senior Software Engineer · AI Systems & Agentic Architecture · Ex-Uber**
Builds multi-provider LLM orchestration meshes and production streaming platforms — ten-plus years shipping, now architecting agent fleets end to end.

Rio de Janeiro, Brazil (GMT-3) · Brazilian + Portuguese (EU) dual citizen
Languages: Portuguese (native), English (fluent), Spanish (intermediate)
+55 (21) 98885-6697 · raphaelbgr@gmail.com
github.com/raphaelbgr · linkedin.com/in/raphaelbgr

---

## Summary

Senior engineer who designs and operates AI systems, not just calls to them. Architect of a multi-provider LLM orchestration mesh that routes work across 5 providers and 16 models on cost/capability tiers, with automatic escalation, rate-limit protection and full job telemetry — running unattended across a seven-machine heterogeneous fleet (CUDA, Apple Metal, Linux, Windows, macOS).

That AI work sits on ten-plus years of production engineering: an OTT streaming framework powering 50+ broadcast brands with 4K multi-DRM playback, Uber's Maps SDK in JNI/C++ inside a 10,000-engineer codebase, and greenfield platforms for Brazil's largest pay-TV operator. The through-line is architecture under real constraints — plugin systems, multi-module boundaries, observability, and shipping to devices and users that do not forgive.

Independent contractor: at any time one engagement is full-time and the rest are concurrent part-time, each labelled explicitly below.

---

## AI & Agentic Systems

### claude-dispatch — multi-provider LLM orchestration mesh
Python, ~14,000 LOC · asyncio · HTTP + WebSocket · MCP

- Designed a **fleet-mesh dispatch daemon** — one process per machine that auto-discovers peers (mDNS/Bonjour, DNS, config, peer exchange), gossips heartbeats every 30s for liveness, accepts RSA-encrypted job payloads over REST, and streams live worker output over WebSocket.
- Built a **cost-aware model router**: 5 providers, 16 models, tiers T0–T3, with automatic escalation on failure or quota exhaustion (free tier → flat-rate → subscription → paid API), so routine work never touches an expensive model.
- Implemented **rate-limit resilience** — exponential backoff on 429, per-provider cooldowns, and serial-only protection that prevents parallel fan-out from burning subscription quotas.
- Wrote **automatic task-type inference**: the router scans the prompt and derives the required model capabilities, removing manual configuration from the caller.
- Exposed the whole system as **15 MCP tools** to the orchestrating agent — fleet routing by free slots/GPU/RAM, parallel fan-out, iterative and tournament dispatch loops, job status and kill, provider rate-limit state, and cache pre-flight checks.
- Parses worker output to extract provider, model, token usage and cost, producing per-job and fleet-wide spend telemetry.

### Agent architecture with a quality gate
- Structured the agent system as **planner → executor → evaluator → monitor**: the planner decomposes a goal into a task tree with tier assignments and parallel groups; the executor dispatches, sandboxes and collects; the **evaluator scores output against the original brief** and triggers retry-with-feedback, tier escalation, or rejection.
- Hard rule enforced in the architecture: no worker output is accepted without review, and workers never push. Failures escalate through cheaper-to-stronger model tiers rather than silently degrading.

### Retrieval, knowledge graphs and grounding
- Built a **knowledge graph over a private corpus** — 441 nodes / 536 edges with community detection and hub ranking — used for multi-hop queries ("what rules apply to X", "how does Y connect to Z") before falling back to full-text search.
- Built **SQLite FTS5 retrieval corpora over 27,000+ documents** for grounded question answering, plus vector-DB RAG in the research agents.
- Designed the extraction pipeline to label every edge as EXTRACTED vs INFERRED with a confidence score, so downstream answers can be traced to evidence rather than asserted.

### Local + hosted inference across a heterogeneous GPU fleet
- Load-balances inference across **CUDA (RTX 3080 Ti, RTX 3050, GTX 1060) and Apple Metal/MPS**, choosing the target by measured free VRAM rather than assumption.
- Designed a **VRAM claim registry**: every job registers its measured allocation, model, purpose and expected release before allocating, and must verify reclaimed memory after unloading — turning "resident memory with no running job" from invisible waste into a detectable defect.
- Ran **GPU-accelerated speech-to-text at scale** (faster-whisper / CTranslate2 on RTX 3080 Ti) — 8,000+ audio files transcribed in a single batch pass, with NFD-filename and driver-DLL edge cases handled.
- Multi-engine research fan-out: 3 search engines queried in parallel with URL de-duplication and rank-plus-agreement scoring, served to workers as an MCP tool.

### AI-assisted delivery in production work
- Claude Code, Cursor and GitHub Copilot are part of the daily delivery loop on client code: code generation, large-scale refactors, test authoring, and agentic build/release tooling — with a review gate on every generated line.

---

## Selected AI Projects (public)

### Arquive — github.com/raphaelbgr/arquive
Self-hosted media archive and streaming server that keeps AI off the cloud: **FAISS-backed face embeddings (InsightFace)** for offline people search, **local Ollama (Qwen2.5-VL) captioning** for semantic media search, distributed **GPU-fleet transcoding** across LAN machines, in-browser HLS playback, IPTV (M3U + XMLTV EPG + recording), DLNA/UPnP, and a native tvOS SwiftUI client. Indexes terabytes across local drives, SMB/CIFS, FTP and SSH remotes as one chronological timeline.
**Stack:** Python, React, FAISS, InsightFace, Ollama, HLS, GPU transcoding, SwiftUI (tvOS), JWT.

### Infinite Research — github.com/raphaelbgr/IntiniteResearch
Autonomous research system that refines a document through unbounded self-learning iterations. Agno agents orchestrate 1–10 parallel searches per pass; each iteration evolves its own search terms and patches the gaps it identified in the previous draft. Local LLMs via LMStudio, vector-DB RAG over prior refinements, SQLite versioning, graceful shutdown.
**Stack:** Python, Agno Agents, LMStudio, RAG / Vector DB, SQLite.

### Socials Automator — github.com/raphaelbgr/Socials-Automator
End-to-end content pipeline: AI writes the copy, AI generates the images, the system posts them. Runs at **zero marginal cost on 100% local inference** (LM Studio + ComfyUI/Stable Diffusion) with cloud fallback across five providers. Smart slide-count selection, post-history awareness, scheduled loop mode. Live at @ai.for.mortals.
**Stack:** Python, LM Studio, ComfyUI, Stable Diffusion, Z.AI / OpenAI / Groq / Gemini / fal.ai APIs, Instagram Graph API.

### iSpeakPDF — ispeakpdf.com
Production SaaS converting PDFs to audio entirely in the browser — no document ever leaves the user's machine. Payment integration live.
**Stack:** Next.js, TypeScript, WebAssembly, Supabase, Stripe.

### DynamicMusicApp — github.com/raphaelbgr/dynamic-music-app-showcase
Android music player with three pluggable design systems users switch at runtime — one Compose codebase, three visual identities, design-system theming treated as a first-class architectural concern.
**Stack:** Kotlin, Jetpack Compose, Material 3, MVI, Coroutines / Flow, Hilt.

---

## Professional Experience

### Nexstar Media Group, Inc. — Senior Fire OS / Android TV Engineer
**Aug 2025 – Present · Full-time contract via Nimble.LA · Full Remote**

OTT streaming platform framework powering 50+ TV station brands for Nexstar Digital across Fire TV and Android TV.

- Architected an enterprise OTT streaming framework with MVVM + Clean Architecture and a plugin-based integration system for third-party services.
- Developed 5 specialised Media3 / ExoPlayer implementations for VOD, live streaming, and audio with HLS adaptive bitrate.
- Implemented DRM-protected content streaming (Widevine, PlayReady, FairPlay) with both server-side and client-side ad insertion.
- Integrated 12+ analytics platforms (Adobe Analytics, mParticle, Nielsen DCR, ComScore, Permutive, BlueConic) with GDPR / CCPA compliance.
- Developed a remote configuration system enabling zero-downtime feature rollouts across 50+ product flavors.
- Built device-based passwordless, magic-link, and QR-code authentication flows optimised for TV; subscription management with entitlement checking and flexible paywall integration.
- Refactored callback patterns to reactive event-driven architecture using Kotlin SharedFlow; resolved background-audio playback issues and lifecycle-aware leaks in fragment navigation.
- Integrated Firebase Crashlytics and New Relic; wrote unit and UI tests with JUnit, Mockk, Robolectric and Espresso.

**Stack:** Kotlin, Coroutines / Flow, Media3 / ExoPlayer, Dagger 2, Retrofit2, Moshi, Glide, Android Leanback, Jetpack, Firebase, Google IMA SDK, Adobe Marketing SDK, mParticle, Nielsen DCR, ComScore, New Relic, Mux Analytics.

---

### FreeCast, Inc. — Android / Android TV / Fire OS Engineer
**Mar 2021 – Jul 2025 (4 yrs 5 mo) · Long-term part-time contract · Full Remote**

- Led the full migration of the legacy Java codebase to Kotlin; introduced Use-Case + Clean Architecture.
- Implemented HLS / DASH playback for live linear TV and VOD with Widevine DRM-protected streaming.
- Integrated OTA tuner platforms (HDHomeRun, AirTV, Alticast, PDAQ) with GStreamer-based media pipelines for secure live broadcast over HLS / DASH.
- Maintained companion apps on webOS and Tizen; enabled Google Cast and a paid subscription gateway.
- Owned DRM, EPG, tuner orchestration, transcoding and multi-device streaming end-to-end.

**Stack:** Kotlin, Jetpack Compose, Hilt, Coroutines / Flow, Media3, Room, DataStore, Retrofit2, Firebase, Mixpanel, webOS, Tizen, GStreamer, Widevine DRM.

---

### Claro TV+ — Android TV / Fire OS Engineer
**Apr 2024 – Dec 2024 (9 mo) · Concurrent part-time contract · Full Remote**

- Greenfield Android TV / Fire OS app for one of Brazil's largest pay-TV operators.
- Architected the data layer as a shared **Kotlin Multiplatform (KMP)** submodule consumed by Android, webOS and Tizen clients.
- Implemented 4K streaming via DASH / HLS with multi-DRM; multi-module MVVM; Media3 playback; analytics across Firebase + GA4.

**Stack:** Kotlin Multiplatform, Kotlin, Jetpack, Hilt, Media3, Coroutines / Flow, Firebase, Google Analytics 4, webOS, Tizen.

---

### Uber Technologies — Android Engineer, Maps SDK team
**May 2021 – May 2022 (1 yr) · Concurrent part-time contract via Matchpoint Solutions · Full Remote**

- Worked on the Maps team SDK module developed with JNI / C++.
- Contributed to Uber's open-source Android architecture framework (RIBs).
- Collaborated on global-scale projects across a 10K+ engineer codebase; shipped to Uber Rider, Uber Eats and Uber Driver.

**Stack:** Java, Kotlin, Groovy, C++, Python, SQL, Android SDK, NDK, JNI, RIBs, Buck, CMake, Flipper.

---

### Invillia — Android Engineer (Full Remote)
**Apr 2020 – Aug 2020 · Part-time contract**

- Re-modelled the Casas Bahia and Pontofrio home pages — converted a static product shelf into a fully dynamic, backend-driven shelf system.
- Implemented end-to-end analytics tracking for product clicks and shelf scroll-depth.

**Stack:** Kotlin, MVVM, Dagger 2, LiveData, Retrofit2, Firebase, Jenkins CI/CD.

---

### Super Revendedores — Android Engineer (Full Remote)
**Oct 2018 – Feb 2021**

- Migrated the full codebase from Java to Kotlin.
- Implemented online sales via payment gateway, virtual magazine showcases, and an SSO link to a partner web ordering portal.
- Built scalable asynchronous order processing on AWS SQS / SNS.

**Stack:** Kotlin, AWS SQS/SNS/Storage, Firebase, Facebook OAuth, DbFlow, Dagger 2, MVP, Retrofit2.

---

### Concrete (an Accenture Company) — Jr. Android Engineer
**Dec 2016 – Oct 2018**

- Built the Minha CVC travel app from scratch — reached 1M+ downloads on Google Play.
- Implemented shop geolocation, itinerary and virtual-showcase features that measurably increased in-store visits and cut support call volume.
- Worked on the Getnet payments app; migrated MVP to MVVM; introduced RxJava2 and LiveData.

**Stack:** Java 8, Kotlin, RxJava2, LiveData, MVP → MVVM, Dagger 2, Google Maps API, Retrofit2, Firebase, Jenkins CI/CD.

---

### PraPagar (fintech) — Jr. Android Engineer
**Jun 2015 – Dec 2016**

- Built the PraPagar mobile-payments app collaborating with a US-based team (MaxxPotential).
- Implemented online payments via QR code and geolocation; backend REST work in PHP / Laravel 5.

**Stack:** Android SDK, PHP, Laravel 5, REST APIs, Git, Agile.

---

### FASOLTI · Fábrica de Soluções em TI — Test Developer (Internship)
**Sep 2014 – Jan 2015 (5 mo)**

- Documented and implemented automated test cases in Selenium with TestNG.

---

### IBM Brasil — Software Engineering Intern
**Jun 2014 – Dec 2014 (6 mo) · Rio de Janeiro · while pursuing B.S. at Instituto Infnet**

- Wrote SQL queries against IBM DB2 in support of contract and sales teams; produced reporting spreadsheets and Hyperion-based BI artefacts.
- Documented internal processes via SharePoint; first professional exposure to enterprise databases, REST APIs and Agile workflows.

---

## Education

**Instituto Infnet — Rio de Janeiro · 2013 – 2018**
B.S. in Computer Engineering. Software development, mathematical modelling for software, operating-systems and computer-hardware architecture.

**Chiswick House School — Malta · 1997 – 2005**
K-12 Primary and Secondary Education (High School Diploma).

---

## Technical Skills

**AI & Agentic Systems:** LLM orchestration, multi-provider model routing and tier escalation, agent architectures (planner / executor / evaluator / monitor), MCP (Model Context Protocol) server and tool design, Retrieval-Augmented Generation (RAG), vector databases, knowledge graphs with community detection, prompt engineering, evaluation and scoring loops, local inference (Ollama, LM Studio, Qwen2.5-VL), faster-whisper / CTranslate2 speech-to-text, FAISS, InsightFace, Stable Diffusion / ComfyUI, Agno agents, GPU fleet scheduling and VRAM accounting (CUDA + Apple Metal).

**AI-Assisted Development:** Claude Code, Cursor, GitHub Copilot — daily use in production delivery: code generation, large-scale refactors, test authoring, and agentic workflows across build and release tooling.

**Languages:** Kotlin, Java, Python, C++, TypeScript, JavaScript, Groovy, SQL, PHP (Laravel).

**Distributed Systems & Backend:** asyncio, HTTP/WebSocket services, service discovery (mDNS/Bonjour, Tailscale), gossip heartbeats and liveness detection, rate limiting and backoff, RSA-encrypted payloads, job telemetry and cost accounting, systemd / launchd / Task Scheduler daemons, PostgreSQL, SQLite (FTS5), Supabase, REST APIs, Retrofit2, Moshi.

**Mobile / TV Platforms:** Android SDK, Android TV, Fire OS, webOS, Tizen, Android Leanback, Jetpack Compose, Compose for TV, Kotlin Multiplatform (KMP), NDK, JNI.

**Streaming & Media:** OTT, CTV, Linear TV, VOD, Live Streaming, Media3 / ExoPlayer, MediaCodec, HLS, LL-HLS, DASH, CMAF, H.264 / AVC, HEVC / H.265, HDR10+, AAC, hardware-accelerated decoding, Widevine, PlayReady, FairPlay, Google IMA SDK, SSAI / CSAI, GStreamer, HDHomeRun, AirTV, Alticast, PDAQ.

**Architecture:** MVVM, MVI, Unidirectional Data Flow, Clean Architecture, Use Case, Multi-module, Plugin-based integration, RIBs, MVP.

**Jetpack & Reactive:** Coroutines, Flow, SharedFlow, StateFlow, LiveData, ViewModel, Navigation, Room, DataStore, Hilt, Dagger 2, RxJava2.

**Cloud & Analytics:** Firebase (Analytics, Crashlytics, FCM, Auth, Firestore, Remote Config), AWS (SQS, SNS, Storage), Adobe Analytics, mParticle, Nielsen DCR, ComScore, Permutive, BlueConic, New Relic, Mux Analytics, Mixpanel, Google Analytics 4.

**Testing & Build:** JUnit, Mockk, Robolectric, Espresso, Paparazzi, Turbine, Selenium, TestNG, Buck, Gradle, CMake, Jenkins CI/CD, Flipper.

**Performance & Observability:** Quality of Experience (QoE), Time-to-First-Frame (TTFF), rebuffering rate, startup-time optimisation, Systrace, Perfetto, Android Profiler.
