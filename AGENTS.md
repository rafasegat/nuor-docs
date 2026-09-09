# AGENTS.md — NUOR Brand & Product Repository

This repo is the single source of truth for NUOR — an Australian performance
apparel brand (Sydney). It stores brand identity assets, tech packs,
manufacturing documentation, and business/legal reference material.

Any agent working in this repo should read this file first, understand the
folder structure below, and follow the conventions before creating, editing,
or renaming anything.

---

## What NUOR is

- Performance apparel brand, founded by Rafael Segat, based in Coogee, Sydney.
- Brand line: "Nature Under Open Rhythm — Go outside. Find yours."
- Core archetype: **The Explorer** — calm, grounded, self-discovery through
  movement. Not performance-elite, not podium-focused.
- Aesthetic: retro-futuristic, minimal branding, earthy/coastal palette.
- First collection: **Spring Classic 26** — shorts, tanks (in development),
  socks, launching Australian spring/summer (current target: Dec 2026,
  originally planned earlier — treat delivery dates in tech packs as the
  source of truth over any date mentioned in chat history).
- Manufacturing partners in active discussion: **D&J International**
  (DongGuan, China — Bandit/P.E Nation/KITH manufacturer) and **Kenby Sports**
  (Fujian, China — contact: Rice). Fabric reference: Eurojersey Sensitive®
  P BFR1, sourced locally by each factory due to import complexity.

---

## Folder structure

Use this structure. If a folder doesn't exist yet, create it rather than
dumping files in root.

```
/brand/
  /guidelines/        → Zhenya's brand guide, logo files, colour palette, typography
  /photography/       → Brand photography direction, shoots, mood boards
  /copy/               → Brand story, product descriptions, website copy, tone of voice notes

/products/
  /shorts-nrs1m/
    /techpacks/        → NRS1M_RUN_SHORTS versioned files (v3, v4, v4_3, etc. — see Versioning below)
    /boms/             → Bill of materials (if kept separate from tech pack pages)
    /samples/          → Photos/notes on physical samples received (Malaysia, Kenby, D&J)
    /measurements/     → Size grading working docs, comparison sheets (e.g. vs Bandit reference)
  /tank-top/
    (same structure once tech pack work begins)
  /socks/
    (same structure, currently unstarted)

/manufacturing/
  /dj-international/   → Quotes, correspondence summaries, terms, BOM confirmations
  /kenby/              → Quotes, correspondence summaries, fabric sourcing notes
  /fabric-suppliers/   → Eurojersey, Beimon, Jufeng, Claire Sports Technology — specs, swatches info, pricing
  /supplier-comparison/→ Cost/quality/timeline comparison docs across manufacturers

/business/
  /pricing/            → Landed cost models, markup/margin calculations, wholesale pricing
  /legal/              → Trademark status, business registration, ABN, compliance notes
  /finance/            → Jubilee Digital Pty Ltd docs, if stored here rather than elsewhere

/web/
  /shopify/            → Store setup notes, theme decisions, page copy drafts
  /assets/             → Web-ready image exports, product photography for site use

README.md              → Points to this file + one-paragraph project summary
AGENTS.md              → This file
```

---

## Versioning conventions

Tech packs and other iterative documents use this naming pattern:

```
{STYLE-CODE}_{PRODUCT-NAME}_v{N}.pdf
```

Example: `NRS1M_RUN_SHORTS_v4.pdf`

Rules:

- **Never overwrite a previous version.** Each revision gets a new `vN`
  suffix. If a sub-revision happens within the same version number (as has
  happened before — e.g. `v4_3`), append an underscore and increment
  (`v4_2`, `v4_3`), and treat the highest suffix as current.
- The **highest version number = current/active spec**, unless a file is
  explicitly moved to an `/archive/` subfolder.
- Style codes so far: `NRS1M` (men's run shorts), `NRS1F` (women's run
  shorts). Follow this pattern for new products — a short style prefix plus
  gender suffix where relevant.
- When creating a new version, keep a one-line changelog either in the PDF
  itself (many of the existing tech packs have a "Version X — Last Updated"
  footer — keep this convention) or in a `CHANGELOG.md` inside the same
  `/techpacks/` folder if changes are too complex for a footer line.

---

## Tech pack structure (for any new product)

Every tech pack in this repo should follow the page structure already
established for the shorts, since manufacturers (D&J, Kenby) are used to
this format from NUOR:

1. **Design page(s)** — one per colourway. Front/back/side flat sketches,
   fabric swatch image, Pantone TCX colour table for every component (body,
   inner body, elastic waist, drawcord, silicon logo, woven label).
2. **Specs / construction detail page(s)** — labelled construction callouts
   using this colour-coding convention:
   - Blue = TRIMS
   - Red = SEWING
   - Green = BRAND FINISH
     Include photographed reference details where construction is hard to
     describe in words alone (waistband fusion, hems, pockets, etc.).
3. **Inner body / lining detail page** (if applicable) — separate from the
   main construction page for garments with a liner/brief.
4. **BOM (Bill of Materials) page** — a numbered table: Item | Component |
   Material (with article/code, width, weight, composition) | Placement.
   This page was added in v4 of the shorts tech pack and should be
   considered standard going forward for every product.
5. **Measurements page** — lettered points (A, B, C...) matched to a diagram,
   with columns: Item | Description (cm) | Grad. | Tol. | XS–XXL | Comments.
   Always include the grading and tolerance columns even if only one size is
   populated so far — this is a known gap to close before mass production
   (see Known Issues below).

Fabric specs should be written as **performance criteria**, not locked to
one supplier's exact code, so multiple manufacturers can quote and
counter-source against it. Example pattern already in use:

> "Perforated 4-way stretch knit, 75-80% Nylon / 20-25% Spandex, 150-200
> g/m², laser/round perforation, opaque soft touch finish"

Manufacturer-specific confirmed fabric codes (e.g. D&J's F01AF6097/HD30009)
belong in the BOM page and in `/manufacturing/{supplier}/`, not hardcoded
into the generic design-page fabric description.

---

## Known issues / open threads to be aware of

Keep these in mind when touching related files — don't "fix" them silently
without flagging, since some are pending real-world confirmation:

- **Size grading is incomplete.** Only size M is populated in measurement
  tables (shorts). Full XS–XXL grading needs to be added before bulk
  production tech packs are finalized.
- **Pocket bag fabric** currently references the liner fabric code
  (F030647/CH0017) rather than a separate structured pocketing fabric
  (e.g. polyester taffeta), which was the original recommendation to solve
  a "flappy pocket" issue found in an early Malaysia-made sample. Confirm
  which approach is final before treating this as settled.
- **Care label content** (composition + wash text) is referenced on the BOM
  page but the actual label artwork/text does not yet exist as a file in
  this repo — needs creating to meet Australian Consumer Law labelling
  requirements.
- **Hang tag artwork** does not yet exist — needs brand asset creation
  before any factory can produce finished, sellable units.
- **Unisex vs. gendered sizing** is an open strategic question — current
  female grading is very close to male (e.g. only 3cm hip difference) and
  this may need deliberate revisiting rather than treating current numbers
  as final.
- Delivery dates inside tech pack headers have shifted before (Oct → Dec 2026) — always trust the **most recent tech pack file's own header**,
  not older chat or email references, for the current target date.

---

## Working conventions for agents

- **Don't rename or delete existing tech pack files.** Add new versions
  instead, per the versioning rules above.
- **When summarizing changes between versions** (e.g. "what changed between
  v3 and v4"), read both files directly and compare page by page — don't
  infer from filenames or chat history alone, since undocumented changes
  have happened before.
- **Manufacturer-facing documents** (anything going to D&J, Kenby, or a
  fabric supplier) should stay consistent with whatever was last sent to
  that specific manufacturer — check `/manufacturing/{supplier}/` for the
  last version shared before assuming the latest repo file is what they
  have.
- **Colour codes are Pantone TCX** throughout this repo for physical
  production reference. If HEX/RGB values are needed for web or digital
  assets, they belong in `/brand/guidelines/` (from Zhenya's brand guide),
  not mixed into tech pack colour tables.
- **Keep fabric descriptions generic in design pages, specific in BOM
  pages** — this lets multiple manufacturers quote against the same tech
  pack without being locked to one supplier's exact article code.
- When adding a new product (tank top, socks, etc.), mirror the folder
  structure and tech pack page order already established for the shorts —
  don't invent a new format.

---

## Quick reference — brand fundamentals

- **Brand name / acronym:** NUOR — Nature Under Open Rhythm
- **Archetype:** The Explorer
- **Typeface:** Albert Sans
- **Primary colours (from brand guide):** Pale Carmine (A64234), Light
  Orange (FFA848), Pale Salmon (F9B699), Medium Taupe (5E5047), Summer
  Green (A2B9A7), Linen (F9F1E9), Black Pearl (0A1828), Wild Blue Yonder
  (768CB2), Link Water (D7E4F9)
- **Product colourways confirmed so far:** Marsala Red (18 1438 TCX), Black
  (19 3911 TCX / 11 0108 TCX depending on component), Moonlight (14 1106
  TCX, female)
- **Target customer:** Active professionals, 28–38, Australia-first, values
  balance and taste over extreme athleticism
