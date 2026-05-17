# Raphael Bernardo

**Streaming Platform Architect · Multi-platform · Kotlin Multiplatform**
Designs broadcast-grade frameworks powering 50+ TV brands across Android TV, Fire OS, webOS & Tizen — Clean Architecture, multi-DRM, native C++.

Rio de Janeiro, Brazil (GMT-3) · Brazilian + Portuguese (EU) dual citizen
Languages: Portuguese (native), English (fluent)
+55 (21) 98885-6697 · raphaelbgr@gmail.com
github.com/raphaelbgr · linkedin.com/in/raphaelbgr

---

## Summary

Streaming platform architect with ten-plus years designing broadcast-grade frameworks across Android TV, Fire OS, webOS and Tizen. Architect of a multi-tenant OTT streaming framework powering 50+ broadcast brands — owns Clean Architecture, multi-module design, Kotlin Multiplatform shared data layer, multi-DRM (Widevine, PlayReady, FairPlay), SSAI/CSAI, QoE observability, and plugin-based third-party integration. Led architecture reviews and build-vs-buy decisions across five Media3 / ExoPlayer implementations; JNI/C++ native layer experience from Uber Maps SDK (RIBs, 10K+ engineer codebase).

As an independent contractor I run multiple client engagements in parallel — at any given time only one is full-time, with the rest as part-time concurrent contracts (each engagement is explicitly labelled below as full-time, long-term part-time, or concurrent part-time).

---

## Professional Experience

### Nexstar Media Group, Inc. — Senior Fire OS / Android TV Engineer
**Aug 2025 – Present · Full-time contract via Nimble.LA · Full Remote**

OTT streaming platform framework powering 50+ TV station brands for Nexstar Digital across Fire TV and Android TV.

- Architected an enterprise OTT streaming framework with MVVM + Clean Architecture and a plugin-based integration system for third-party services.
- Developed 5 specialised Media3 / ExoPlayer implementations for VOD, live streaming, and audio with HLS adaptive bitrate.
- Implemented DRM-protected content streaming (Widevine, PlayReady, FairPlay) with both server-side and client-side ad insertion.
- Integrated 12+ analytics platforms (Adobe Analytics, mParticle, Nielsen DCR, ComScore, Permutive, BlueConic) with GDPR / CCPA compliance.
- Built device-based passwordless, magic-link, and QR-code authentication flows optimised for TV.
- Implemented subscription management with entitlement checking and flexible paywall integration.
- Developed a remote configuration system enabling zero-downtime feature rollouts across 50+ product flavors.
- Created TV-optimised UI using the Android Leanback framework with d-pad / remote-control navigation.
- Refactored callback patterns to reactive event-driven architecture using Kotlin SharedFlow; resolved background-audio playback issues during navigation transitions and lifecycle-aware leaks in fragment navigation.
- Integrated Firebase Crashlytics and New Relic for crash reporting and performance monitoring.
- Wrote unit and UI tests using JUnit, Mockk, Robolectric, and Espresso.

**Stack:** Kotlin, Kotlin Coroutines / Flow, Media3 / ExoPlayer, Dagger 2, Retrofit2, Moshi, Glide, Android Leanback, Jetpack (Navigation, ViewModel, LiveData, StateFlow, SharedFlow, Room), Firebase (Analytics, Crashlytics, FCM), Google IMA SDK, Adobe Marketing SDK, mParticle, Nielsen DCR, ComScore, New Relic, Mux Analytics, JUnit, Mockk, Espresso.

---

### FreeCast, Inc. — Android / Android TV / Fire OS Engineer
**Mar 2021 – Jul 2025 (4 yrs 5 mo) · Long-term part-time contract · Full Remote**

- Led the full migration of the legacy Java codebase to Kotlin; introduced Use-Case + Clean Architecture and improved end-user UX.
- Implemented HLS / DASH playback for live linear TV and VOD with Widevine DRM-protected streaming.
- Maintained and developed companion apps on webOS and Tizen alongside Android TV / Fire OS.
- Enabled Google Cast and integrated a paid subscription gateway.
- Integrated OTA tuner platforms (HDHomeRun, AirTV, Alticast, PDAQ) with GStreamer-based media pipelines for secure live broadcast over HLS / DASH.
- Owned DRM, EPG, tuner orchestration, transcoding, and multi-device streaming end-to-end.
- Shipped on Google Play (Select TV Android, FreeCast Watch) and Amazon Appstore (FreeCast Watch Fire OS).

**Stack:** Kotlin, Jetpack Compose, Hilt, Coroutines / Flow, Media3, Room, DataStore, Retrofit2, Picasso, Firebase Analytics, Firebase Crashlytics, Firebase Cloud Messaging, Mixpanel, webOS, Tizen, HDHomeRun, AirTV, Alticast, PDAQ, GStreamer, Widevine DRM, JUnit, Espresso.

---

### Claro TV+ — Android TV / Fire OS Engineer
**Apr 2024 – Dec 2024 (9 mo) · Concurrent part-time contract · Full Remote**

- Greenfield Android TV / Fire OS app for one of Brazil's largest pay-TV operators.
- Implemented 4K streaming via DASH / HLS protocols with multi-DRM.
- Architected the data layer as a shared Kotlin Multiplatform (KMP) submodule consumed by Android, webOS and Tizen clients.
- Multi-module MVVM architecture; Media3 playback; analytics across Firebase + Google Analytics 4.

**Stack:** Kotlin Multiplatform (KMP), Kotlin, Jetpack (Navigation, ViewModel, LiveData, StateFlow, SharedFlow, Room, DataStore), Hilt, Media3, Coroutines / Flow, Firebase (Analytics, Crashlytics, FCM), Google Analytics 4, Picasso, Retrofit2, webOS, Tizen, JUnit, Espresso.

---

### Uber Technologies — Android Engineer, Maps SDK team
**May 2021 – May 2022 (1 yr) · Concurrent part-time contract via Matchpoint Solutions · Full Remote**

- Worked on the Maps team SDK module developed with JNI / C++.
- Contributed to Uber's open-source Android architecture framework (RIBs).
- Collaborated on global-scale projects across a 10K+ engineer codebase.
- Shipped to Uber Rider, Uber Eats and Uber Driver apps.

**Stack:** Java, Kotlin, Groovy, C++, Python, SQL, Android SDK, NDK, JNI, RIBs, Buck, CMake, Flipper, Firebase, custom logger / analytics / crash reporter, JUnit, Espresso.

---

### Invillia — Android Engineer (Full Remote)
**Apr 2020 – Aug 2020 · Part-time contract**

- Re-modelled the Casas Bahia and Pontofrio home pages — converted a static product shelf into a fully dynamic, backend-driven shelf system.
- Implemented end-to-end analytics tracking for product clicks and shelf scroll-depth via Firebase Analytics and custom API calls.

**Stack:** Kotlin, MVVM, Dagger 2, LiveData, Retrofit2, Picasso, Firebase (Analytics, FCM, Remote Config, Crashlytics), Jenkins CI/CD, JUnit, Espresso.

---

### Super Revendedores — Android Engineer (Full Remote)
**Oct 2018 – Feb 2021**

- Migrated the full codebase from Java to Kotlin.
- Implemented online sales via payment gateway, virtual magazine showcases, and SSO link from the Android app to a partner web ordering portal for cosmetic-factory restocking.
- Built scalable asynchronous order processing on AWS SQS / SNS for reliable message queuing and notification delivery.

**Stack:** Kotlin, AWS SQS, AWS SNS, AWS Storage SDK, Firebase (Analytics, Cloud Messaging, Crashlytics, Remote Config, Firestore, In-App Messaging, Auth), Facebook OAuth, DbFlow, Dagger 2, MVP, Picasso, Retrofit2, JUnit, Espresso.

---

### Concrete (an Accenture Company) — Jr. Android Engineer
**Dec 2016 – Oct 2018**

- Built the Minha CVC travel app from scratch — reached 1M+ downloads on Google Play.
- Implemented shop geolocation and store-locator guidance, increasing in-store visit volume.
- Implemented a travel-package itinerary feature, reducing customer-service phone-call volume.
- Implemented a travel-package virtual showcase, increasing customer flow to physical stores.
- Worked on the Getnet payments app; migrated MVP to MVVM; introduced RxJava2 and LiveData.

**Stack:** Java 8, Kotlin, RxJava2, LiveData, MVP → MVVM, Dagger 2, Google Maps API, Retrofit2, Picasso, Firebase (Analytics, FCM, Crashlytics, Remote Config), Jenkins CI/CD, JUnit, Espresso.

---

### PraPagar (fintech) — Jr. Android Engineer
**Jun 2015 – Dec 2016**

- Built the PraPagar mobile-payments app collaborating with a US-based team (MaxxPotential).
- Implemented online payments via QR code and geolocation.
- Backend REST work in PHP / Laravel 5.

**Stack:** Android SDK, PHP, Laravel 5, REST APIs, OOP, Design Patterns, Git, Agile.

---

### FASOLTI · Fábrica de Soluções em TI — Test Developer (Internship)
**Sep 2014 – Jan 2015 (5 mo)**

- Documented and implemented automated test cases in Selenium with TestNG.

**Stack:** Selenium, TestNG, REST APIs, Git, OOP, Agile.

---

### IBM Brasil — Software Engineering Intern
**Jun 2014 – Dec 2014 (6 mo) · Rio de Janeiro · while pursuing B.S. at Instituto Infnet**

- Wrote SQL queries against IBM DB2 in support of contract and sales teams; produced reporting spreadsheets and Hyperion-based BI artefacts.
- Documented internal processes via SharePoint; first professional exposure to enterprise databases, REST APIs, and Agile workflows.

**Stack:** IBM DB2, SQL, IBM Hyperion, SharePoint, Python, REST APIs, Git, OOP, Agile Methodologies.

---

## Selected Personal Projects

### Arquive — github.com/raphaelbgr/arquive
Self-hosted personal media archive and streaming server. In-browser HLS playback with GPU-accelerated transcoding cache, IPTV (M3U + XMLTV EPG + recording), DLNA/UPnP for smart TVs, distributed GPU-fleet transcoding, FAISS-backed face recognition, local-AI captions via Ollama, plus a native Apple TV (SwiftUI) client.
**Stack:** Python, React, HLS, GPU Transcoding, FAISS, InsightFace, Ollama (Qwen2.5-VL), DLNA, M3U/XMLTV, SwiftUI tvOS, JWT.

### DynamicMusicApp — github.com/raphaelbgr/dynamic-music-app-showcase
Android music player with three pluggable design systems users switch at runtime — Material You (Google), Neon Wave (synthwave), and Organic Flow (botanical). One Compose codebase, three radically different visual identities — design-system theming treated as a first-class architectural concern.
**Stack:** Kotlin, Jetpack Compose, Material 3, MVI, Coroutines / Flow, Hilt.

### Socials Automator — github.com/raphaelbgr/Socials-Automator
End-to-end Instagram carousel generator — AI writes the captions, AI generates the images, then auto-posts. Live at @ai.for.mortals. Runs on 100% local AI (LM Studio + ComfyUI) at zero cost, with cloud fallback (Z.AI, OpenAI, Groq, Gemini, fal.ai). Smart slide-count selection, post-history awareness, scheduled loop mode.
**Stack:** Python, LM Studio, ComfyUI, Stable Diffusion, Z.AI / OpenAI / Groq / Gemini APIs, Instagram Graph API, Cloudinary.

### Infinite Research — github.com/raphaelbgr/IntiniteResearch
Autonomous AI research system that refines documents through infinite self-learning iterations. Agno agents orchestrate 1–10 parallel DuckDuckGo searches per iteration; each pass evolves search terms and patches identified gaps. Local LLMs via LMStudio, vector-DB RAG over prior refinements, SQLite versioning, graceful shutdown.
**Stack:** Python, Agno Agents, LMStudio (local LLM), RAG / Vector DB, DuckDuckGo Search, SQLite.

---

## Education

**Instituto Infnet — Rio de Janeiro · 2013 – 2018**
B.S. in Computer Engineering. Software development, mathematical modelling for software, operating-systems and computer-hardware architecture.

**Chiswick House School — Malta · 1997 – 2005**
K-12 Primary and Secondary Education (High School Diploma).

**Orion Consulting — Rio de Janeiro · 2010**
Java fundamentals: object-oriented programming, software design, code patterns and logic.

---

## Technical Skills

**Languages:** Kotlin, Java, C++, TypeScript, JavaScript, Python, Groovy, SQL, PHP (Laravel).

**Mobile / TV Platforms:** Android SDK, Android TV, Fire OS, webOS, Tizen, Android Leanback, Jetpack Compose, Compose for TV, Kotlin Multiplatform (KMP), NDK, JNI.

**Streaming & Media:** OTT, CTV (Connected TV), Linear TV, VOD, Live Streaming, Media3 / ExoPlayer, MediaCodec, HLS, LL-HLS, DASH, CMAF, H.264 / AVC, HEVC / H.265, HDR10+, AAC, Hardware-accelerated decoding, Widevine DRM, PlayReady, FairPlay, Google IMA SDK, Server-Side Ad Insertion (SSAI), Client-Side Ad Insertion (CSAI), GStreamer, HDHomeRun, AirTV, Alticast, PDAQ.

**Architecture:** MVVM, MVI, Unidirectional Data Flow (UDF), Clean Architecture, Use Case, Multi-module, Plugin-based integration, RIBs, MVP.

**Jetpack & Reactive:** Coroutines, Flow, SharedFlow, StateFlow, LiveData, ViewModel, Navigation, Room, DataStore, Hilt, Dagger 2, RxJava2.

**Cloud & Backend:** Firebase (Analytics, Crashlytics, FCM, Auth, Firestore, Remote Config, In-App Messaging), AWS (SQS, SNS, Storage), Supabase, PostgreSQL, REST APIs, Retrofit2, Moshi.

**Analytics:** Adobe Analytics, Adobe Marketing SDK, mParticle, Nielsen DCR, ComScore, Permutive, BlueConic, New Relic, Mux Analytics, Mixpanel, Google Analytics 4.

**Testing & Build:** JUnit, Mockk, Robolectric, Espresso, Paparazzi (screenshot testing), Turbine (Flow testing), Selenium, TestNG, Buck, Gradle, CMake, Jenkins CI/CD, Flipper.

**Performance & Observability:** Quality of Experience (QoE), Time-to-First-Frame (TTFF), Rebuffering rate, Startup-time optimisation, Systrace, Perfetto, Android Profiler.

**Compliance, Security & Accessibility:** GDPR, CCPA, WCAG 2.2, TalkBack, d-pad focus order, DRM, Content Security, OAuth, SSO.

**Spoken Languages:** Portuguese (native), English (fluent).
