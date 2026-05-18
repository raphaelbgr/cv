# Product Requirements Document
## CV System — Raphael Bernardo

**Version:** 1.0  
**Date:** 2026-05-17  
**Status:** Active

---

## 1. Product Overview

### 1.1 Problem Statement

A senior engineer applying to multiple role archetypes (streaming specialist, FAANG-mobile,
platform architect, balanced) needs a CV that:
- Accurately surfaces role-relevant skills at the top of ATS keyword-match ranking
- Presents a designed, print-ready document that impresses human reviewers
- Is maintainable as a single source of truth without a complex build pipeline
- Stays current with evolving JD keyword trends (2026: QoE, TTFF, MVI, LL-HLS, MediaCodec)

### 1.2 Solution

Four role-targeted CV variants — each pairing a designed HTML/CSS page (for PDF/print) with
a plain Markdown file (for ATS paste). All variants share the same factual employment record;
differentiation is in positioning, summary, and skill-grid ordering. Served on GitHub Pages
with a variant-picker index page.

### 1.3 Success Criteria

1. Each variant's ATS (`.md`) version scores in the top keyword tier for its target JD class
   when measured against the 2026 keyword-gap audit.
2. The HTML version renders as a clean two-page A4 PDF at zero-margin print from Chrome with
   no content overflow or orphaned section headings.
3. The index page loads and navigates correctly on GitHub Pages at `raphaelbgr.github.io/cv`.
4. The skill taxonomy matches the current JD-coverage audit (updated 2026-05-05).

---

## 2. User Personas

### 2.1 Primary — Raphael (engineer / author)
Maintains and updates the CV. Needs a workflow where updating one variant does not break others,
regenerating PDFs is deterministic (single PowerShell script), and adding new JD keywords is
a targeted edit to the appropriate skill group, not a full rewrite.

### 2.2 Secondary — Recruiter / Hiring Manager (human reviewer)
Opens the variant-specific URL or receives the PDF. Expects a clean, legible two-page document
with name, role, experience bullets, and a skills grid that mirrors the job description language.

### 2.3 Tertiary — ATS Parser (automated reviewer)
Processes the `.md` plain-text file uploaded or pasted into an application form. Expects keyword
density, consistent term usage, and no table/styling artefacts that confuse embedding-based scoring.

---

## 3. Functional Requirements

### 3.1 Variant System
- FR-01: The system shall maintain four distinct variants: `default`, `streaming`, `faang`,
  `architect`.
- FR-02: Each variant shall consist of an `index.html` (designed layout) and `cv.md` (plain text).
- FR-03: Each variant shall have a pre-built `cv.pdf` generated from its `index.html`.
- FR-04: All variants shall share identical factual employment records. Positioning only may differ.

### 3.2 HTML Layout
- FR-05: Each `index.html` shall render as a two-page A4 document when printed with zero margins
  in Chrome.
- FR-06: The Download PDF button shall link directly to `cv.pdf` as a file download
  (`download` attribute), not trigger browser print.
- FR-07: Variant pages shall carry `<meta name="robots" content="noindex, follow">` to prevent
  direct indexing of variant URLs.

### 3.3 ATS Markdown
- FR-08: Each `cv.md` shall contain variant-specific Summary text that matches the HTML variant
  positioning (not a generic copy of default).
- FR-09: The `cv.md` Technical Skills section shall surface all keywords from the current
  JD-coverage audit that are applicable to the variant's target archetype.

### 3.4 Index Page
- FR-10: The root `index.html` shall link to all four variant HTML pages and their `cv.md`
  source files.
- FR-11: The root `index.html` shall include a "How to Use" section explaining the
  HTML-to-PDF workflow and the ATS-paste workflow.
- FR-12: The root `index.html` shall link to `jd-coverage-audit.md` for transparency.

### 3.5 PDF Build
- FR-13: `build-pdfs.ps1` shall auto-detect the Chrome executable path from standard locations.
- FR-14: `build-pdfs.ps1` shall regenerate all four PDFs in a single invocation.
- FR-15: `build-pdfs.ps1` shall print file size confirmation per variant.

---

## 4. Non-Functional Requirements

- NFR-01 **No build toolchain**: No npm, no webpack, no Jekyll. Static HTML/CSS only.
- NFR-02 **No JavaScript runtime**: HTML and CSS only in the CV pages. No client-side JS.
- NFR-03 **Single dependency**: Only Chrome is required (for PDF generation). Not a runtime dep.
- NFR-04 **Font loading**: Google Fonts (Fraunces, IBM Plex Sans, JetBrains Mono) loaded from
  CDN; PDFs require internet access at build time.
- NFR-05 **Version control**: All source files (HTML, MD, PS1, PDFs) committed to git.
- NFR-06 **Honesty constraint**: No skills or keywords added that Raphael cannot substantiate
  from his actual work history.

---

## 5. Scope Boundaries

**In scope:**
- Four CV variants (HTML + MD + PDF)
- Index/picker page
- PDF build script
- JD keyword audit maintenance

**Out of scope:**
- Dynamic generation / templating system
- CMS or database backend
- Mobile-responsive layout (CV is designed for A4 print; small screens scale down)
- Automated JD scraping pipeline
- Cover letter variants
