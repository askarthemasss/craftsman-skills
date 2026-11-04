# drawn-notebook-ui

---
name: drawn-notebook-ui
description: >
  A complete design system and implementation guide for reproducing the
  "Drawn Notebook" aesthetic — a quiet, editorial, hand-crafted UI language
  originally authored for Askar's personal portfolio. Covers every token,
  component, animation, and interaction pattern in exhaustive detail for both
  Flutter (Dart) and vanilla web (HTML/CSS/JS), in both light and dark modes.
  Use this skill whenever the user wants to build, adapt, or extend this
  specific visual language in any context.
---

---

## Overview

The Drawn Notebook is not a component library. It is a **design language** — a coherent philosophy that every pixel, every line weight, every spacing rhythm, and every animation timing curve serves. Its governing principle is that the interface should feel like a living notebook: ink drawn on cream paper, passages revealed slowly as the reader scrolls down, navigational threads that traverse the page like a physical journey. Nothing is loud. Nothing is decorative for its own sake. The UI earns every visual element by anchoring it to meaning.

This skill is a precise, comprehensive reference. When implementing this UI, follow every section in order. Do not skip the token definitions — every spacing, color, and motion value is load-bearing. Do not skip the dark mode section — both themes are equal first-class citizens and must be simultaneously correct at all times.

---

## Section 1 — Design Philosophy

### 1.1 Core Principles

**Quiet confidence, not minimalism for its own sake.** The design is spare, but every element that remains is purposeful. Blank space is not laziness — it is the page breathing. The user's eye is guided by composition, weight, and motion, not by color saturation or decorative flourishes.

**Hand-drawn aesthetic without literal skeuomorphism.** The UI references the craft of drawing — thin stroke weights, serif editorial type, paper-grain textures, SVG illustrations rendered as line drawings — but it does not pretend to be paper. It is a digital surface that *respects* the tactility of analog craft without mimicking it clumsily.

**Every section is a chapter.** The page is a continuous scroll, and each section feels like turning to a new page in a notebook. Section backgrounds shift subtly between warm neutrals. A continuous golden thread (the journey line SVG) stitches them together visually.

**Motion is narration, not entertainment.** Animations reveal content the way a hand writes words — appearing from bottom to top, fading in softly, tracing SVG paths. Durations are slow by modern standards (1.2s–2s for reveals). This is intentional. Speed implies noise. Slowness implies craft.

**Avoid AI slop patterns.** The following patterns are explicitly forbidden: gradient hero backgrounds with purple-to-pink transitions, card grids with identical height and identical corner radii, hover states that glow neon, oversized rounded corners (> 14px on most elements), color-coded skill bars with percentage numbers, timeline with bullet points and bold dates, and any use of emoji as decoration.

---

## Section 2 — Design Tokens

### 2.1 Color Palette — Light Mode (Daylight Notebook)

Every color in light mode is a warm neutral derived from paper, cream, and natural ink. There is a single accent family: **gold/terracotta**, ranging from a muted amber to a warm brick.

```css
/* Light Mode (applied to :root) */
--cream:       #F7F5F0;   /* Page background — primary surface */
--sage:        #EEF3ED;   /* About section background — the lightest green-grey */
--parchment:   #F1ECE3;   /* Experience + Resume section background */
--warm-white:  #FAF8F5;   /* Skills section background — the lightest surface */
--linen:       #F3EFE8;   /* Projects section background */
--sage-tint:   #EFF3EE;   /* Learning section background */
--charcoal:    #1A1A1A;   /* Primary text, SVG strokes, borders */
--soft-black:  #2C2C2C;   /* Secondary text, strong labels */
--warm-grey:   #8A8580;   /* Muted labels, timestamps, captions */
--light-grey:  #C5BFB8;   /* Scroll prompt, decorative separators */
--terracotta:  #B87A5A;   /* Hover states, bullets, active waypoints */
--indigo:      #6B6EA0;   /* Reserved — not used in primary patterns */
--gold:        #C4956A;   /* Primary accent — journey line, skill icons, chips */
--gold-dim:    rgba(196, 149, 106, 0.3);  /* Soft gold for shadows, borders */
--blush:       #F0EBE5;   /* Chip/badge backgrounds in hover */
--sage-dark:   #8B9E8B;   /* Section border separator tint */
```

### 2.2 Color Palette — Dark Mode (Night Notebook)

Dark mode is not a simple inversion. The backgrounds shift from warm creams to deep warm-blacks — an almost ink-stained quality. The accent colors brighten slightly to maintain legibility against dark surfaces.

```css
/* Dark Mode (applied to :root[data-theme="dark"]) */
--cream:       #141210;   /* Page background — deep warm black */
--sage:        #171816;   /* About section background */
--parchment:   #1A1815;   /* Experience + Resume background */
--warm-white:  #1E1B18;   /* Skills section background */
--linen:       #181614;   /* Projects section background */
--sage-tint:   #161815;   /* Learning section background */
--charcoal:    #EDE8E1;   /* Primary text — warm off-white */
--soft-black:  #D8D2C8;   /* Secondary text */
--warm-grey:   #9E978F;   /* Muted labels */
--light-grey:  #38342E;   /* Decorative separators */
--terracotta:  #D98A62;   /* Hover accent — slightly brighter than light mode */
--indigo:      #8C8FB8;
--gold:        #D4A373;   /* Primary accent — slightly warmer than light mode */
--gold-dim:    rgba(212, 163, 115, 0.3);
--blush:       #241E1A;
--sage-dark:   #9EAF9E;

/* Surface tokens */
--card-glass:         rgba(30, 27, 24, 0.72);
--card-glass-hover:   rgba(42, 38, 34, 0.95);
--card-item-bg:       rgba(24, 21, 19, 0.78);
--card-item-hover:    rgba(38, 34, 30, 0.96);
--card-border:        rgba(212, 163, 115, 0.22);
--card-border-hover:  rgba(212, 163, 115, 0.48);
--card-shadow:        0 4px 16px rgba(0, 0, 0, 0.25);
--card-shadow-hover:  0 6px 20px rgba(0, 0, 0, 0.45);
--card-inset:         inset 0 1px 0 rgba(255, 255, 255, 0.05);
--card-inset-hover:   inset 0 1px 0 rgba(255, 255, 255, 0.08);
--badge-bg:           rgba(24, 21, 19, 0.88);
--grain-opacity:      0.022;    /* Lower in dark to avoid muddiness */
```

### 2.3 Color Palette — Light Mode Surface Tokens

```css
/* Light Mode surface tokens */
--card-glass:         rgba(255, 255, 255, 0.65);
--card-glass-hover:   #ffffff;
--card-item-bg:       rgba(247, 245, 240, 0.8);
--card-item-hover:    rgba(255, 255, 255, 0.98);
--card-border:        rgba(196, 149, 106, 0.22);
--card-border-hover:  rgba(196, 149, 106, 0.45);
--card-shadow:        0 4px 16px rgba(26, 26, 26, 0.04);
--card-shadow-hover:  0 6px 20px rgba(196, 149, 106, 0.12);
--card-inset:         inset 0 1px 0 rgba(255, 255, 255, 0.9);
--card-inset-hover:   inset 0 1px 0 rgba(255, 255, 255, 0.95);
--badge-bg:           rgba(247, 245, 240, 0.82);
--grain-opacity:      0.035;
```

### 2.4 Theme Switching — Flash-Free Implementation

Theme detection must run **synchronously in the `<head>` before the page renders**, to prevent a flash of wrong theme (FOUT). This is a critical implementation requirement:

```html
<head>
  <!-- MUST be the first script in <head>, before any stylesheet links -->
  <script>
    (function () {
      try {
        var stored = localStorage.getItem('color-scheme');
        var prefersDark = window.matchMedia &&
          window.matchMedia('(prefers-color-scheme: dark)').matches;
        var theme = (stored === 'dark' || (!stored && prefersDark)) ? 'dark' : 'light';
        document.documentElement.setAttribute('data-theme', theme);
        var meta = document.querySelector('meta[name="color-scheme"]');
        if (meta && (stored === 'dark' || stored === 'light')) meta.content = stored;
        var themeColor = document.querySelector('meta[name="theme-color"]');
        if (themeColor) themeColor.content = theme === 'dark' ? '#141210' : '#F8F4F0';
      } catch (e) {}
    })();
  </script>
</head>
```

In Flutter/Dart, use `ThemeMode.system` as the default, with a persisted override via `SharedPreferences`. The key is `color-scheme`, the value is `'dark'` or `'light'`.

### 2.5 Typography Tokens

```css
--font-serif: 'Cormorant Garamond', 'Georgia', serif;
--font-sans:  'Inter', 'Helvetica Neue', sans-serif;
```

**Cormorant Garamond** is non-negotiable for the editorial voice of this design. It is loaded at weights 300, 400, 500, 600, with italic variants for 300 and 400. It is used for all headings, section titles, the hero name, chips, rail labels, waypoint messages, and anywhere a "written" quality is needed. It must never be used at weights above 600 — this is not a bold typeface.

**Inter** is the functional companion. It is used for captions, skill tags, timestamps, uppercase kickers, and body text in dense information contexts. Load weights 300, 400, 500 only.

```css
/* Google Fonts import */
@import url('https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,300;0,400;0,500;0,600;1,300;1,400&family=Inter:wght@300;400;500&display=swap');
```

### 2.6 Spacing Tokens

All spacing is fluid using `clamp()`. Do not use hard pixel values for section padding or content width constraints.

```css
--section-pad:   clamp(80px, 12vh, 160px);  /* Vertical padding for major sections */
--content-max:   800px;                      /* Narrow prose column */
--content-wide:  1100px;                     /* Wide layout for grids */
--side-pad:      clamp(24px, 5vw, 80px);     /* Horizontal page margins */
```

### 2.7 Animation Tokens

```css
--ease-out:     cubic-bezier(0.25, 0.46, 0.45, 0.94);  /* General ease-out */
--ease-smooth:  cubic-bezier(0.4, 0, 0.2, 1);           /* Material-like smooth */
--duration-slow: 1.2s;   /* Reveal animations */
--duration-med:  0.8s;   /* Medium transitions */
--duration-fast: 0.4s;   /* Quick micro-interactions */
```

---

## Section 3 — Global Foundations

### 3.1 CSS Reset and Base

```css
*, *::before, *::after {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

html {
  font-size: 16px;
  scroll-behavior: smooth;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

body {
  background-color: var(--cream);
  color: var(--charcoal);
  font-family: var(--font-sans);
  font-weight: 300;
  line-height: 1.7;
  overflow-x: hidden;
  position: relative;
}
```

### 3.2 Text Selection

The selection highlight is a soft gold wash — it reflects the accent palette without being aggressive:

```css
::selection {
  background: rgba(196, 149, 106, 0.2);
  color: var(--charcoal);
}
::-moz-selection {
  background: rgba(196, 149, 106, 0.2);
  color: var(--charcoal);
}
```

### 3.3 SVG Stroke Adaptation

All inline SVGs use hardcoded hex strokes (`#1A1A1A`, `#2C2C2C`) from the light mode palette. To adapt them to dark mode without touching the SVG markup, use a CSS attribute selector override:

```css
svg [stroke="#1A1A1A"], svg [stroke="#1a1a1a"] { stroke: var(--charcoal); }
svg [fill="#1A1A1A"],   svg [fill="#1a1a1a"]   { fill:   var(--charcoal); }
svg [stroke="#2C2C2C"], svg [stroke="#2c2c2c"] { stroke: var(--soft-black); }
svg [fill="#2C2C2C"],   svg [fill="#2c2c2c"]   { fill:   var(--soft-black); }
svg text[fill="#1A1A1A"]                        { fill:   var(--charcoal); }
svg text[fill="#8A8580"]                        { fill:   var(--warm-grey); }
```

**Gold accents (`#C4956A`) in SVGs are intentionally NOT overridden.** The gold accent is a fixed reference color in both themes; in dark mode the token `--gold` brightens to `#D4A373`, but SVG inline gold does not need remapping because the contrast against dark backgrounds is still acceptable.

### 3.4 Smooth Theme Transition

Apply a coordinated transition to every surface that changes between themes. This prevents jarring color jumps:

```css
body, section,
.about, .experience, .resume-section, .skills, .projects, .learning, .closing,
.exp-card, .exp-item, .skill-cell, .compact-card, .compact-card__icon,
.about__point, .about__visual-card, .about__chip, .closing__link,
.journey-waypoint__message, .rail-node__label, .resume-modal__panel,
.resume-modal__header {
  transition:
    background-color 0.35s var(--ease-out),
    color 0.35s var(--ease-out),
    border-color 0.35s var(--ease-out);
}

/* Always respect user motion preference */
@media (prefers-reduced-motion: reduce) {
  *, *::before, *::after { transition: none !important; }
}
```

---

## Section 4 — Paper Grain Overlay

A subtle paper-grain texture is applied as a full-viewport fixed overlay. It sits at `z-index: 9999` — above everything — but `pointer-events: none` ensures it never intercepts interactions.

```css
.grain-overlay {
  position: fixed;
  inset: 0;
  pointer-events: none;
  z-index: 9999;
  opacity: var(--grain-opacity, 0.035);
  background-image: url("data:image/svg+xml,%3Csvg viewBox='0 0 256 256' xmlns='http://www.w3.org/2000/svg'%3E%3Cfilter id='noise'%3E%3CfeTurbulence type='fractalNoise' baseFrequency='0.85' numOctaves='4' stitchTiles='stitch'/%3E%3C/filter%3E%3Crect width='100%25' height='100%25' filter='url(%23noise)'/%3E%3C/svg%3E");
  background-repeat: repeat;
  background-size: 200px 200px;
  transform: translateZ(0);
  will-change: transform;
  transition: opacity 0.35s var(--ease-out);
}

/* In dark mode, screen blend reveals the grain more naturally */
:root[data-theme="dark"] .grain-overlay {
  mix-blend-mode: screen;
}
```

**In Flutter:** Reproduce this using a `CustomPaint` widget at the top of the widget tree with a `shader`-based noise pattern, or bake the grain as a PNG asset with ~3% opacity and use `BlendMode.screen` in dark mode.

---

## Section 5 — Theme Toggle (Celestial Switcher)

The theme toggle is a small pill button positioned fixed in the top-right corner. It displays a sun icon in light mode and a moon icon in dark mode. Both icons coexist in the DOM and are shown/hidden via CSS opacity — no JavaScript rendering is needed for the initial icon state.

### 5.1 Layout and Positioning

```css
.theme-switch {
  position: fixed;
  top: clamp(16px, 2.5vw, 24px);
  right: clamp(16px, 3vw, 28px);
  z-index: 1001;
}
```

### 5.2 Button Styling

```css
.theme-toggle {
  display: inline-flex;
  align-items: center;
  gap: 0.5rem;
  padding: 0.35rem 0.85rem 0.35rem 0.45rem;
  background: var(--badge-bg);
  border: 1px solid var(--card-border);
  border-radius: 999px;
  cursor: pointer;
  color: var(--charcoal);
  backdrop-filter: blur(10px);
  -webkit-backdrop-filter: blur(10px);
  box-shadow: 0 2px 10px rgba(0, 0, 0, 0.04);
  transition:
    transform 0.25s var(--ease-out),
    background 0.3s var(--ease-out),
    border-color 0.3s var(--ease-out),
    box-shadow 0.25s var(--ease-out);
  user-select: none;
}

.theme-toggle:hover {
  transform: translateY(-1px);
  border-color: var(--gold);
  box-shadow: 0 4px 14px var(--gold-dim);
}

.theme-toggle:active {
  transform: translateY(0) scale(0.97);
}

.theme-toggle:focus-visible {
  outline: 2px solid var(--gold);
  outline-offset: 3px;
}
```

### 5.3 Icon Switching (CSS-only, no JS flicker)

The sun and moon icons both live in the DOM. CSS handles visibility based on the `data-theme` attribute:

```css
/* LIGHT MODE: show sun, hide moon */
:root:not([data-theme="dark"]) .theme-toggle__icon--light {
  opacity: 1;
  transform: rotate(0deg) scale(1);
}
:root:not([data-theme="dark"]) .theme-toggle__icon--dark {
  opacity: 0;
  transform: rotate(-90deg) scale(0.5);
  pointer-events: none;
}

/* DARK MODE: show moon, hide sun */
:root[data-theme="dark"] .theme-toggle__icon--light {
  opacity: 0;
  transform: rotate(90deg) scale(0.5);
  pointer-events: none;
}
:root[data-theme="dark"] .theme-toggle__icon--dark {
  opacity: 1;
  transform: rotate(0deg) scale(1);
}

.theme-toggle__icon {
  position: absolute;
  inset: 0;
  margin: auto;
  color: var(--gold);
  transition:
    opacity 0.35s var(--ease-out),
    transform 0.4s cubic-bezier(0.34, 1.56, 0.64, 1); /* Spring bounce on appear */
}
```

### 5.4 Label Text

The label reads *"night mode"* in light theme and *"day mode"* in dark theme. It is styled in Cormorant Garamond italic:

```css
.theme-toggle__text {
  font-family: var(--font-serif);
  font-style: italic;
  font-size: 0.84rem;
  letter-spacing: 0.03em;
  color: var(--charcoal);
  line-height: 1;
}
```

On mobile (< 600px), hide the text and show only the icon disc:

```css
@media (max-width: 600px) {
  .theme-toggle {
    padding: 0;
    width: 36px;
    height: 36px;
    justify-content: center;
  }
  .theme-toggle__text { display: none; }
}
```

### 5.5 Flutter Implementation

In Flutter, use a `GestureDetector` or `IconButton` wrapping a custom `AnimatedSwitcher` that transitions between a `Icon(Icons.wb_sunny_outlined)` and a moon SVG. Store the theme in `ThemeMode` via a `ChangeNotifier` provider. Persist to `SharedPreferences` with key `color-scheme`.

---

## Section 6 — Section Title (Shared Typography)

Every section uses the same title treatment: Cormorant Garamond, weight 300, with a short 40px golden underline rule.

```css
.section-title {
  font-family: var(--font-serif);
  font-weight: 300;
  font-size: clamp(1.8rem, 4vw, 3rem);
  letter-spacing: 0.06em;
  color: var(--charcoal);
  margin-bottom: 3rem;
  position: relative;
}

.section-title::after {
  content: '';
  display: block;
  width: 40px;
  height: 1px;
  background: var(--gold);
  margin-top: 1rem;
  opacity: 0.5;
}
```

This underline is a deliberate constraint: **40px, 1px tall, 50% opacity gold**. Never make it wider, thicker, or more opaque. It is a punctuation mark, not a decoration.

---

## Section 7 — Reveal Animations (Scroll-Triggered)

Content is hidden by default and revealed as it scrolls into view. This system uses `IntersectionObserver` and CSS transitions, not JS-driven style mutations.

### 7.1 Initial Hidden State

```css
.reveal-item {
  opacity: 0;
  transform: translateY(24px);
  transition:
    opacity var(--duration-slow) var(--ease-out),
    transform var(--duration-slow) var(--ease-out);
}

.reveal-item.is-visible {
  opacity: 1;
  transform: translateY(0);
}
```

### 7.2 Stagger Children

Group elements with `.reveal-group` and stagger each `.reveal-item` child:

```css
.reveal-group .reveal-item:nth-child(1)  { transition-delay: 0s; }
.reveal-group .reveal-item:nth-child(2)  { transition-delay: 0.1s; }
.reveal-group .reveal-item:nth-child(3)  { transition-delay: 0.2s; }
.reveal-group .reveal-item:nth-child(4)  { transition-delay: 0.3s; }
/* ... up to nth-child(10) at 0.9s delay */
```

### 7.3 SVG Draw-Line Animation

For SVG paths that should "draw themselves" into view:

```css
.draw-line {
  stroke-dasharray: 500;
  stroke-dashoffset: 500;
  transition: stroke-dashoffset 2s var(--ease-smooth);
}

.is-visible .draw-line,
.draw-line.is-drawn {
  stroke-dashoffset: 0;
}
```

### 7.4 Intersection Observer (JavaScript)

```js
function initRevealObserver() {
  const revealItems = document.querySelectorAll('.reveal-item');
  const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        entry.target.classList.add('is-visible');
      }
    });
  }, {
    root: null,
    rootMargin: '0px 0px -60px 0px',
    threshold: 0.1
  });
  revealItems.forEach(item => observer.observe(item));
}
```

### 7.5 Flutter Implementation

In Flutter, use `AnimationController` with `CurvedAnimation(curve: Curves.easeOut)` and a `SlideTransition` from `Offset(0, 0.3)` to `Offset.zero`, combined with a `FadeTransition`. Trigger via a `VisibilityDetector` widget (package: `visibility_detector`) or scroll controller listeners. Stagger delays using `Future.delayed` per item index multiplied by `100ms`.

---

## Section 8 — Journey Line (Continuous Golden Thread)

A thin golden SVG path runs continuously from the top of the page to the bottom, stitching all sections together like a physical thread through the narrative. It is positioned absolutely, `z-index: 6`, and traces a meandering organic path calculated by JavaScript from the positions of journey waypoints.

### 8.1 SVG Container

```css
.journey-line {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  pointer-events: none;
  z-index: 6;
  transform: translateZ(0);
}

.thread-path {
  stroke: var(--gold);
  stroke-width: 1.4px;
  stroke-linecap: round;
  stroke-linejoin: round;
  opacity: 0.18;  /* Subtle — present, not distracting */
}
```

The path `d` attribute is generated dynamically in JS based on the positions of `.journey-waypoint` dots at layout time and on resize.

---

## Section 9 — Journey Waypoints

Small interactive dots that anchor the journey line at specific narrative points across the page. Each waypoint has a floating tooltip that reveals on hover via CSS.

### 9.1 Dot Styling

```css
.journey-waypoint {
  position: relative;
  display: flex;
  width: fit-content;
  align-items: center;
  justify-content: center;
  cursor: pointer;
  pointer-events: auto;
  user-select: none;
  padding: 6px;             /* Generous hit target around 8px dot */
  margin-bottom: calc(0.75rem - 6px);
  line-height: 1;
}

.journey-waypoint__dot {
  width: 8px;
  height: 8px;
  border-radius: 50%;
  background: var(--gold);
  opacity: 0.45;
  transition: transform 0.3s var(--ease-out), opacity 0.3s var(--ease-out), background-color 0.3s var(--ease-out);
}

.journey-waypoint:hover .journey-waypoint__dot,
.journey-waypoint.is-active .journey-waypoint__dot {
  transform: scale(1.5);
  opacity: 1;
  background: var(--terracotta);
}
```

### 9.2 Positional Variants

Waypoints are placed at different horizontal positions across sections to create an organic traversal pattern. Three variants:

```css
.journey-waypoint--left   { margin-left: 0; margin-right: auto; }
.journey-waypoint--center { margin-left: clamp(80px, 25vw, 380px); margin-right: auto; }
.journey-waypoint--right  { margin-left: clamp(160px, 48vw, 680px); margin-right: auto; }
```

### 9.3 Floating Tooltip

```css
.journey-waypoint__message {
  position: absolute;
  left: calc(100% + 12px);
  top: 50%;
  transform: translateY(-50%) translateX(-4px);
  white-space: nowrap;
  font-family: var(--font-serif);
  font-style: italic;
  font-size: 0.84rem;
  letter-spacing: 0.02em;
  color: var(--charcoal);
  background: var(--badge-bg);
  backdrop-filter: blur(8px);
  border: 1px solid var(--card-border);
  border-radius: 999px;
  padding: 0.32rem 0.85rem;
  opacity: 0;
  visibility: hidden;
  pointer-events: none;
  transition: opacity 0.25s var(--ease-out), transform 0.25s var(--ease-out), visibility 0.25s;
}

.journey-waypoint:hover .journey-waypoint__message,
.journey-waypoint:focus-visible .journey-waypoint__message {
  opacity: 0.95;
  visibility: visible;
  transform: translateY(-50%) translateX(0);
}

/* Right-aligned waypoints open their tooltip inward to the left */
.journey-waypoint--right .journey-waypoint__message {
  left: auto;
  right: calc(100% + 12px);
  transform: translateY(-50%) translateX(4px);
}
```

---

## Section 10 — Floating Side Rail Navigation

A fixed vertical rail on the right side of the viewport provides non-intrusive section navigation. Only visible at > 960px wide. Contains small dots for each section with hover labels.

### 10.1 Rail Positioning

```css
.journey-rail {
  position: fixed;
  right: 24px;
  top: 50%;
  transform: translateY(-50%);
  z-index: 1000;
  display: flex;
  align-items: center;
  pointer-events: auto;
}

@media (max-width: 960px) {
  .journey-rail { display: none; }
}
```

### 10.2 Track and Progress

A thin vertical line serves as the track. A `--progress` div grows from top based on scroll position:

```css
.journey-rail__track {
  position: absolute;
  left: 50%;
  top: 14px; bottom: 14px;
  width: 1.5px;
  background: rgba(196, 149, 106, 0.2);
  transform: translateX(-50%);
  border-radius: 999px;
}

.journey-rail__progress {
  width: 100%;
  height: 0%;
  background: var(--terracotta);
  border-radius: 999px;
  transition: height 0.15s ease-out;
}
```

### 10.3 Rail Node Dots

```css
.rail-node {
  position: relative;
  width: 28px; height: 28px;
  display: flex; align-items: center; justify-content: center;
  cursor: pointer;
  outline: none;
}

.rail-node__dot {
  width: 8px; height: 8px;
  border-radius: 50%;
  background: var(--cream);
  border: 1.5px solid rgba(196, 149, 106, 0.45);
  transition: transform 0.35s var(--ease-out), background-color 0.35s var(--ease-out), border-color 0.35s var(--ease-out), box-shadow 0.35s var(--ease-out);
}

.rail-node:hover .rail-node__dot,
.rail-node.is-active .rail-node__dot {
  transform: scale(1.4);
  background: var(--terracotta);
  border-color: var(--terracotta);
  box-shadow: 0 0 12px rgba(196, 149, 106, 0.5);
}
```

### 10.4 Rail Node Labels

Each rail node has a floating label that appears to its left. The label uses a two-part structure: a colored section tag and a plain section name.

```css
.rail-node__label {
  position: absolute;
  right: calc(100% + 14px);
  top: 50%;
  transform: translateY(-50%) translateX(6px);
  padding: 0.35rem 0.85rem;
  background: var(--badge-bg);
  backdrop-filter: blur(8px);
  border: 1px solid var(--card-border);
  border-radius: 999px;
  white-space: nowrap;
  display: inline-flex; align-items: center; gap: 0.45rem;
  opacity: 0; visibility: hidden; pointer-events: none;
  transition: opacity 0.25s var(--ease-out), transform 0.25s var(--ease-out);
}

.rail-node__tag {
  font-family: var(--font-serif);
  font-style: italic;
  font-size: 0.82rem;
  color: var(--terracotta);
  font-weight: 500;
  letter-spacing: 0.02em;
}

.rail-node__text {
  font-family: var(--font-serif);
  font-style: italic;
  font-size: 0.82rem;
  color: var(--charcoal);
  opacity: 0.88;
}

.rail-node:hover .rail-node__label,
.rail-node:focus-visible .rail-node__label {
  opacity: 0.95; visibility: visible;
  transform: translateY(-50%) translateX(0);
}
```

---

## Section 11 — Hero Section

The hero is a full-viewport-height centred section with multiple layers of ambient visuals.

### 11.1 Hero Container

```css
.hero {
  position: relative;
  min-height: clamp(520px, 82vh, 740px);
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  padding: clamp(1.5rem, 3vh, 2.5rem) var(--side-pad);
  z-index: 5;
  overflow: hidden;
}
```

### 11.2 Animated Entrance Circle

A 105×105px SVG ring draws itself around a central 8-pointed star. The ring is drawn using `stroke-dasharray` animation:

```css
@keyframes drawCircle {
  to { stroke-dashoffset: 60; } /* Intentionally incomplete — leaves a gap */
}

@keyframes starAppear {
  to { opacity: 0.7; }
}

@keyframes lineDescend {
  to { height: 44px; }
}
```

The descending line below the circle is a 1px wide element growing from 0 to 44px with a gold-to-transparent gradient — it visually connects the circle to the text below.

### 11.3 Hero Name and Tagline

```css
.hero__name {
  font-family: var(--font-serif);
  font-weight: 300;
  font-size: clamp(2.35rem, 5.8vw, 4.4rem);
  letter-spacing: 0.15em;    /* Wide tracking — editorial, not tight */
  color: var(--charcoal);
  line-height: 1.1;
  animation: textFadeUp 1.2s var(--ease-out) 1s forwards;
  opacity: 0;
}

.hero__tagline {
  font-family: var(--font-sans);
  font-weight: 300;
  font-size: clamp(0.78rem, 1.3vw, 0.88rem);
  letter-spacing: 0.08em;
  color: var(--warm-grey);
  margin-top: 0.75rem;
  animation: textFadeUp 1.2s var(--ease-out) 1.8s forwards;
  opacity: 0;
}

.hero__reflection {
  font-family: var(--font-serif);
  font-weight: 300;
  font-style: italic;
  font-size: clamp(0.85rem, 1.3vw, 0.98rem);
  line-height: 1.6;
  max-width: 480px;
  margin: 1.15rem auto 0;
  color: var(--soft-black);
  animation: textFadeUp 1.2s var(--ease-out) 2.2s forwards;
  opacity: 0;
}

@keyframes textFadeUp {
  from { opacity: 0; transform: translateY(16px); }
  to   { opacity: 1; transform: translateY(0); }
}
```

### 11.4 Floating Skill Icons

20 small SVG icon elements orbit the perimeter of the hero section, two columns left, two columns right. They float with continuous gentle motion using three alternating CSS keyframe sequences (A, B, C) at varying durations between 8.5s and 12.5s. Each item fades in with a staggered delay from 1.5s to 3.4s.

```css
.hero__float-item {
  position: absolute;
  pointer-events: auto;
  cursor: pointer;
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 4px;
  color: var(--charcoal);
  opacity: 0;
  will-change: transform;
}

.hero__float-item svg {
  opacity: 0.36;  /* Muted at rest */
  transition: opacity 0.3s var(--ease-out), transform 0.4s var(--ease-out);
}

.hero__float-item:hover svg {
  opacity: 0.95;
  transform: scale(1.2);
}

.hero__float-label {
  font-family: var(--font-serif);
  font-size: 0.68rem;
  font-style: italic;
  letter-spacing: 0.06em;
  color: var(--terracotta);
  opacity: 0;             /* Hidden until hover */
  transform: translateY(4px);
  transition: opacity 0.3s var(--ease-out), transform 0.3s var(--ease-out);
  white-space: nowrap;
}

.hero__float-item:hover .hero__float-label {
  opacity: 0.95;
  transform: translateY(0);
}
```

Float motion keyframes — three variants ensuring no two adjacent items move identically:

```css
@keyframes floatMotionA {
  0%, 100% { transform: translate(0, 0) rotate(0deg); }
  33%  { transform: translate(5px, -8px) rotate(2deg); }
  66%  { transform: translate(-4px, 6px) rotate(-1.5deg); }
}
@keyframes floatMotionB {
  0%, 100% { transform: translate(0, 0) rotate(0deg); }
  33%  { transform: translate(-6px, 8px) rotate(-2.5deg); }
  66%  { transform: translate(6px, -5px) rotate(2deg); }
}
@keyframes floatMotionC {
  0%, 100% { transform: translate(0, 0) rotate(0deg); }
  33%  { transform: translate(6px, 6px) rotate(2deg); }
  66%  { transform: translate(-5px, -7px) rotate(-2deg); }
}
```

### 11.5 Scroll Prompt

Positioned absolutely at the bottom-center of the hero. The arrow bounces gently:

```css
.hero__scroll-prompt {
  position: absolute;
  bottom: clamp(14px, 2.5vh, 24px);
  left: 50%;
  transform: translateX(-50%);
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 5px;
}

.hero__scroll-prompt span {
  font-family: var(--font-serif);
  font-size: 0.75rem;
  letter-spacing: 0.12em;
  color: var(--light-grey);
  font-style: italic;
}

@keyframes scrollBounce {
  0%, 100% { transform: translateY(0); }
  50% { transform: translateY(6px); }
}
```

---

## Section 12 — About Section

The About section uses a two-column layout: narrative text with bullet points on the left; architectural SVG illustrations and chips on the right.

### 12.1 Section Background

```css
.about {
  position: relative;
  padding: var(--section-pad) var(--side-pad);
  z-index: 5;
  background: var(--sage);
  border-top: 1px solid rgba(139, 158, 139, 0.22);
}
```

### 12.2 Two-Column Grid

```css
.about__body {
  display: grid;
  grid-template-columns: 1fr;
  gap: 3rem;
  max-width: var(--content-wide);
  margin: 0 auto;
  align-items: start;
}

@media (min-width: 860px) {
  .about__body {
    grid-template-columns: 1.18fr 0.82fr;
    gap: clamp(2.5rem, 5vw, 5rem);
  }
}
```

### 12.3 Lead Paragraph

```css
.about__lead {
  font-family: var(--font-serif);
  font-weight: 300;
  font-size: clamp(1.05rem, 1.6vw, 1.22rem);
  line-height: 1.85;
  color: var(--charcoal);
  margin-bottom: 1.6rem;
}

.about__lead strong {
  font-weight: 500;
  color: var(--soft-black);
}
```

### 12.4 Bullet Points (Glassmorphic Cards)

Each bullet is a translucent card, not a plain list item. The ✦ bullet is a terracotta Unicode character that rotates 45° and scales on hover:

```css
.about__point {
  display: flex;
  align-items: flex-start;
  gap: 0.85rem;
  padding: 0.85rem 1.1rem;
  background: var(--card-glass);
  border: 1px solid var(--card-border);
  border-radius: 8px;
  transition:
    background 0.3s var(--ease-out),
    border-color 0.3s var(--ease-out),
    transform 0.3s var(--ease-out),
    box-shadow 0.3s var(--ease-out);
  backdrop-filter: blur(4px);
}

.about__point:hover {
  background: var(--card-glass-hover);
  border-color: var(--card-border-hover);
  transform: translateX(4px);  /* Slide right on hover */
  box-shadow: 0 4px 14px rgba(139, 158, 139, 0.15);
}

.about__point-bullet {
  font-size: 0.75rem;
  color: var(--terracotta);
  line-height: 1.7;
  flex-shrink: 0;
  transition: transform 0.3s var(--ease-out);
}

.about__point:hover .about__point-bullet {
  transform: scale(1.3) rotate(45deg);  /* The ✦ star rotates on hover */
}

.about__point-text {
  font-family: var(--font-serif);
  font-size: clamp(0.95rem, 1.35vw, 1.05rem);
  line-height: 1.65;
  color: var(--charcoal);
}

.about__point-text strong {
  font-weight: 500;
  color: var(--soft-black);
  font-family: var(--font-sans);
  font-size: 0.85rem;
  letter-spacing: 0.01em;
}

.about__point-text em {
  font-style: italic;
  color: var(--terracotta);
}
```

### 12.5 Visual Cards (Right Column)

Small cards displaying SVG architectural diagrams. Two in a 2-column grid, one full-width below:

```css
.about__visual-card {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  text-align: center;
  padding: 1.5rem 1rem;
  background: var(--card-glass);
  border: 1px solid var(--card-border);
  border-radius: 12px;
  gap: 0.75rem;
  backdrop-filter: blur(4px);
  transition:
    background 0.35s var(--ease-out),
    border-color 0.35s var(--ease-out),
    transform 0.35s var(--ease-out),
    box-shadow 0.35s var(--ease-out);
}

.about__visual-card:hover {
  background: var(--card-glass-hover);
  border-color: var(--card-border-hover);
  transform: translateY(-2px);
  box-shadow: 0 6px 18px rgba(196, 149, 106, 0.12);
}

.about__visual-caption {
  font-family: var(--font-serif);
  font-size: 0.76rem;
  font-style: italic;
  color: var(--warm-grey);
  letter-spacing: 0.04em;
}
```

### 12.6 Chips

Pill-shaped badges below the visual cards. Used to surface key facts quickly. Each chip has a small inline SVG icon:

```css
.about__chip {
  display: inline-flex;
  align-items: center;
  gap: 0.55rem;
  padding: 0.45rem 0.95rem;
  background: var(--card-glass);
  border: 1px solid var(--card-border);
  border-radius: 24px;
  font-family: var(--font-serif);
  font-size: 0.88rem;
  font-style: italic;
  color: var(--soft-black);
  letter-spacing: 0.02em;
  backdrop-filter: blur(4px);
  transition:
    background 0.35s var(--ease-out),
    border-color 0.35s var(--ease-out),
    transform 0.35s var(--ease-out),
    box-shadow 0.35s var(--ease-out);
}

.about__chip:hover {
  background: var(--card-glass-hover);
  border-color: var(--terracotta);
  transform: translateY(-2px);
}

.about__chip-icon {
  display: inline-flex;
  align-items: center;
  color: var(--terracotta);
  flex-shrink: 0;
  transition: transform 0.35s var(--ease-out);
}

.about__chip:hover .about__chip-icon {
  transform: scale(1.15);
}
```

---

## Section 13 — Experience Section (Timeline)

A vertical timeline with animated connecting thread. Each node has a circular SVG marker that draws itself when scrolled into view, plus a right-column illustrated card.

### 13.1 Section Background

```css
.experience {
  position: relative;
  padding: clamp(2rem, 4vh, 3.5rem) var(--side-pad);
  z-index: 5;
  background: var(--parchment);
  border-top: 1px solid rgba(196, 149, 106, 0.16);
}
```

### 13.2 Timeline Thread

A 1px vertical line with a gold gradient — fading in and out at the ends:

```css
.timeline__thread {
  position: absolute;
  left: 17.5px;
  top: 0; bottom: 0;
  width: 1px;
  background: linear-gradient(to bottom,
    var(--gold-dim),
    var(--gold) 20%,
    var(--gold) 80%,
    var(--gold-dim)
  );
  opacity: 0.4;
}
```

### 13.3 Node Marker (Animated Circle)

```css
.timeline__marker .node-circle {
  stroke-dasharray: 100;
  stroke-dashoffset: 100;
  transition: stroke-dashoffset 1.5s var(--ease-smooth);
}

.timeline__node.is-visible .node-circle {
  stroke-dashoffset: 0;  /* Circle draws itself when scrolled into view */
}
```

### 13.4 Timeline Content Layout

```css
.timeline__content {
  display: grid;
  grid-template-columns: 1fr;
  gap: 1.25rem;
}

@media (min-width: 820px) {
  .timeline__content {
    grid-template-columns: 1.15fr 0.95fr;
    gap: clamp(1.25rem, 2.5vw, 2rem);
    align-items: stretch;
  }
}
```

### 13.5 Timeline Typography

```css
.timeline__period {
  font-family: var(--font-sans);
  font-size: 0.65rem;
  font-weight: 600;
  letter-spacing: 0.08em;
  text-transform: uppercase;
  color: var(--terracotta);
}

.timeline__company {
  font-family: var(--font-serif);
  font-weight: 400;
  font-size: clamp(1.35rem, 2.2vw, 1.65rem);
  letter-spacing: 0.03em;
  color: var(--charcoal);
}

.timeline__role {
  font-family: var(--font-serif);
  font-style: italic;
  font-size: 0.85rem;
  color: var(--warm-grey);
}

.timeline__details p {
  font-size: 0.79rem;
  line-height: 1.48;
  color: var(--soft-black);
}
```

### 13.6 Award Pill

```css
.exp-award-pill {
  display: inline-flex;
  align-items: center;
  gap: 0.35rem;
  padding: 0.22rem 0.55rem;
  background: rgba(196, 149, 106, 0.08);
  border: 1px solid rgba(196, 149, 106, 0.28);
  border-radius: 999px;
  font-family: var(--font-sans);
  font-size: 0.66rem;
  color: var(--charcoal);
  width: fit-content;
}

.exp-award-pill strong { color: var(--terracotta); font-weight: 600; }
.exp-award-star { color: var(--terracotta); font-size: 0.72rem; }
```

### 13.7 Experience Card (Right Column)

A compact glassmorphic card listing tools/technologies used in that role. Each entry (`exp-item`) is a small row with a 24px SVG icon and two lines of text:

```css
.exp-card {
  height: 100%;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  gap: 0.35rem;
  padding: 0.65rem 0.8rem;
  background: var(--card-glass);
  border: 1px solid var(--card-border);
  border-radius: 10px;
  backdrop-filter: blur(8px);
  box-shadow: var(--card-shadow), var(--card-inset);
  transition: border-color 0.25s ease, box-shadow 0.25s ease, transform 0.25s ease;
}

.timeline__node:hover .exp-card {
  border-color: var(--card-border-hover);
  box-shadow: var(--card-shadow-hover), var(--card-inset-hover);
  transform: translateY(-1px);
}

.exp-item {
  display: flex;
  align-items: center;
  gap: 0.55rem;
  padding: 0.28rem 0.5rem;
  background: var(--card-item-bg);
  border: 1px solid var(--card-border);
  border-radius: 7px;
  transition: background 0.2s ease, border-color 0.2s ease, transform 0.2s ease;
}

.exp-item:hover {
  background: var(--card-item-hover);
  border-color: var(--card-border-hover);
  transform: translateX(1px);
}

.exp-item__title {
  font-family: var(--font-sans);
  font-size: 0.69rem;
  font-weight: 600;
  color: var(--charcoal);
}

.exp-item__desc {
  font-family: var(--font-sans);
  font-size: 0.58rem;
  color: var(--warm-grey);
}

.exp-card__footer {
  display: flex;
  align-items: center;
  gap: 0.4rem;
  padding-top: 0.28rem;
  border-top: 1px solid rgba(196, 149, 106, 0.16);
  font-family: var(--font-sans);
  font-size: 0.59rem;
  color: var(--warm-grey);
}

.exp-card__dot {
  width: 6px; height: 6px;
  border-radius: 50%;
  background: var(--gold);
}
```

---

## Section 14 — Skills Section (Three-Pillar Staircase)

Three columns of skill cells, each with a numbered header. On desktop, the columns are stagger-offset vertically to create a staircase appearance.

### 14.1 Section Background

```css
.skills {
  position: relative;
  padding: var(--section-pad) var(--side-pad) calc(var(--section-pad) + 2rem);
  z-index: 5;
  background: var(--warm-white);
  border-top: 1px solid rgba(196, 149, 106, 0.14);
}
```

### 14.2 Three-Column Grid with Staircase Offset

```css
.skills__columns {
  max-width: var(--content-wide);
  margin: 2.5rem auto 0;
  display: grid;
  grid-template-columns: 1fr;
  gap: 2.5rem;
}

@media (min-width: 820px) {
  .skills__columns {
    grid-template-columns: repeat(3, 1fr);
    gap: 1.75rem;
  }
  .skills__column--1 { transform: translateY(0); }
  .skills__column--2 { transform: translateY(2.2rem); }
  .skills__column--3 { transform: translateY(4.4rem); }
}
```

### 14.3 Column Header

```css
.skills__column-header {
  display: flex;
  align-items: baseline;
  gap: 0.85rem;
  padding-bottom: 0.85rem;
  margin-bottom: 1.25rem;
  border-bottom: 1px solid rgba(196, 149, 106, 0.3);
}

.skills__column-num {
  font-family: var(--font-serif);
  font-size: 1.8rem;
  font-style: italic;
  line-height: 1;
  color: var(--terracotta);
  opacity: 0.85;
}

.skills__column-title {
  font-family: var(--font-serif);
  font-weight: 400;
  font-size: 1.15rem;
  letter-spacing: 0.04em;
  color: var(--charcoal);
}

.skills__column-subtitle {
  font-family: var(--font-sans);
  font-size: 0.68rem;
  letter-spacing: 0.06em;
  text-transform: uppercase;
  color: var(--warm-grey);
}
```

### 14.4 Skill Cell

```css
.skill-cell {
  display: flex;
  flex-direction: row;
  align-items: center;
  gap: 0.95rem;
  padding: 0.9rem 1.1rem;
  background: var(--card-glass);
  border: 1px solid var(--card-border);
  border-radius: 8px;
  cursor: default;
  transition:
    transform 0.35s var(--ease-out),
    border-color 0.35s var(--ease-out),
    background 0.35s var(--ease-out),
    box-shadow 0.35s var(--ease-out);
}

.skill-cell:hover {
  border-color: var(--terracotta);
  background: var(--card-glass-hover);
  transform: translateX(4px);  /* Slides right — consistent with about__point hover */
  box-shadow: 0 4px 14px rgba(196, 149, 106, 0.1);
}

.skill-cell__icon {
  width: 26px; height: 26px;
  flex-shrink: 0;
  color: var(--charcoal);
  opacity: 0.65;
  transition: opacity 0.35s var(--ease-out), transform 0.35s var(--ease-out), color 0.35s var(--ease-out);
}

.skill-cell:hover .skill-cell__icon {
  opacity: 1;
  color: var(--terracotta);
  transform: scale(1.1);
}

.skill-cell__name {
  font-family: var(--font-sans);
  font-size: 0.85rem;
  font-weight: 500;
  letter-spacing: 0.01em;
  color: var(--soft-black);
}

.skill-cell__tag {
  font-family: var(--font-sans);
  font-size: 0.68rem;
  color: var(--warm-grey);
}
```

---

## Section 15 — Projects Section

Alternating left-right large project cards with SVG illustrations and narrative descriptions.

### 15.1 Project Card Layout

```css
.project-card {
  display: grid;
  grid-template-columns: 1fr;
  gap: 2rem;
  padding: 2rem 0;
  border-bottom: 1px solid rgba(0, 0, 0, 0.04);
}

@media (min-width: 768px) {
  .project-card {
    grid-template-columns: 1fr 1fr;
    gap: clamp(2rem, 4vw, 4rem);
    align-items: start;
  }
  /* Flip every other card — illustration on right for even, left for odd */
  .project-card:nth-child(even) { direction: rtl; }
  .project-card:nth-child(even) > * { direction: ltr; }
}
```

### 15.2 Project Illustration

```css
.project-card__illustration {
  opacity: 0.65;
  transition: opacity 0.6s var(--ease-out);
}

.project-card:hover .project-card__illustration {
  opacity: 1;
}

.project-illu {
  width: 100%;
  height: auto;
  max-height: 200px;
}
```

### 15.3 Project Typography

```css
.project-card__title {
  font-family: var(--font-serif);
  font-weight: 400;
  font-size: clamp(1.3rem, 2.5vw, 1.8rem);
  letter-spacing: 0.04em;
  color: var(--charcoal);
  margin-bottom: 1rem;
}

.project-card__description {
  font-size: clamp(0.88rem, 1.2vw, 0.95rem);
  line-height: 1.8;
  color: var(--soft-black);
}

.project-card__description a {
  color: var(--terracotta);
  text-decoration: none;
  border-bottom: 1px solid rgba(184, 122, 90, 0.3);
  transition: border-color 0.25s var(--ease-out);
}

.project-card__description a:hover {
  border-bottom-color: var(--terracotta);
  border-bottom-width: 1.5px;
}

.project-card__caption {
  font-family: var(--font-serif);
  font-size: 0.85rem;
  color: var(--warm-grey);
  font-style: italic;
  letter-spacing: 0.03em;
}
```

---

## Section 16 — Learning Section (Compact Cards)

A two-column split grid: articles on the left, videos on the right. Each entry is a small horizontal card with a 48×48px SVG thumbnail.

### 16.1 Compact Card

```css
.compact-card {
  display: flex;
  flex-direction: row;
  align-items: center;
  gap: 0.7rem;
  padding: 0.55rem 0.8rem;
  background: var(--card-glass);
  border: 1px solid var(--card-border);
  border-radius: 8px;
  text-decoration: none;
  color: inherit;
  backdrop-filter: blur(8px);
  transition:
    transform 0.25s var(--ease-out),
    border-color 0.25s var(--ease-out),
    background 0.25s var(--ease-out),
    box-shadow 0.25s var(--ease-out);
}

.compact-card:hover {
  transform: translateX(2px) translateY(-1px);
  border-color: var(--terracotta);
  background: var(--card-glass-hover);
  box-shadow: 0 4px 14px rgba(196, 149, 106, 0.12);
}

.compact-card__icon {
  flex-shrink: 0;
  width: 48px; height: 48px;
  border-radius: 6px;
  background: var(--card-item-bg);
  border: 1px solid var(--card-border);
  display: flex;
  align-items: center;
  justify-content: center;
  overflow: hidden;
}

.compact-card__tag {
  font-family: var(--font-sans);
  font-size: 0.58rem;
  letter-spacing: 0.08em;
  text-transform: uppercase;
  color: var(--terracotta);
  font-weight: 600;
}

.compact-card__platform {
  font-family: var(--font-sans);
  font-size: 0.58rem;
  color: var(--warm-grey);
  border-left: 1px solid rgba(196, 149, 106, 0.3);
  padding-left: 0.45rem;
}

.compact-card__title {
  font-family: var(--font-serif);
  font-weight: 400;
  font-size: 0.88rem;
  line-height: 1.25;
  color: var(--charcoal);
}

.compact-card__desc {
  font-size: 0.72rem;
  line-height: 1.4;
  color: var(--soft-black);
  opacity: 0.85;
}

.compact-card__cta {
  display: inline-flex;
  align-items: center;
  gap: 0.25rem;
  font-size: 0.7rem;
  font-weight: 500;
  color: var(--terracotta);
}
```

---

## Section 17 — Ambient Particles (Canvas)

A fixed canvas behind all content renders soft gold particles that drift slowly, connected by faint lines when within 120px proximity. This creates the "constellation" atmosphere.

```js
function initParticles() {
  const canvas = document.getElementById('particles-canvas');
  const ctx = canvas.getContext('2d');
  const PARTICLE_COUNT = window.innerWidth < 768 ? 18 : 35;

  // Each particle: { x, y, r (0.3–1.5), vx (~±0.075), vy (up-biased), opacity, life }
  // Gold fill: rgba(196, 149, 106, opacity * fadeRatio)
  // Connections: draw line between particles < 120px apart
  //   strokeStyle: rgba(196, 149, 106, (1 - dist/120) * 0.06)
  //   lineWidth: 0.4px
  // Pause loop on document.hidden (tab visibility API)
  // Resize canvas on window resize, debounced 150ms
}
```

Canvas CSS:

```css
#particles-canvas {
  position: fixed;
  inset: 0;
  width: 100%; height: 100%;
  pointer-events: none;
  z-index: 1;
  opacity: 0.4;
  transform: translateZ(0);
  will-change: transform;
}
```

**In Flutter:** Use `CustomPainter` with `Canvas.drawCircle` and `Canvas.drawLine`. Use a `Ticker` or `AnimationController` for the animation loop. Pause via `WidgetsBindingObserver` when app goes to background.

---

## Section 18 — Resume Button and Modal

### 18.1 Open Button

A pill-shaped dark button — the only instance of a solid-background dark button in the entire UI:

```css
.resume-open-btn {
  display: inline-flex;
  align-items: center;
  gap: 0.5rem;
  padding: 0.65rem 1.4rem 0.65rem 1rem;
  background: var(--charcoal);
  color: var(--warm-white);
  border: none;
  border-radius: 999px;
  font-family: var(--font-sans);
  font-size: 0.82rem;
  font-weight: 500;
  cursor: pointer;
  transition: background 0.22s var(--ease-out), transform 0.22s var(--ease-out), box-shadow 0.22s var(--ease-out);
}

.resume-open-btn:hover {
  background: var(--soft-black);
  transform: translateY(-1px);
  box-shadow: 0 6px 20px rgba(26, 26, 26, 0.18);
}
```

### 18.2 Modal

```css
.resume-modal {
  position: fixed;
  inset: 0;
  z-index: 2000;
  display: flex;
  align-items: stretch;
  justify-content: center;
  opacity: 0;
  pointer-events: none;
  transition: opacity 0.3s var(--ease-out);
}

.resume-modal:not([hidden]) { opacity: 1; pointer-events: auto; }

.resume-modal__backdrop {
  position: absolute;
  inset: 0;
  background: rgba(26, 26, 26, 0.72);
  backdrop-filter: blur(6px);
}

.resume-modal__panel {
  position: relative;
  z-index: 1;
  display: flex;
  flex-direction: column;
  width: min(960px, 96vw);
  height: 96vh;
  margin: 2vh auto;
  background: var(--warm-white);
  border-radius: 14px;
  overflow: hidden;
  box-shadow: 0 24px 80px rgba(26, 26, 26, 0.35);
  transform: translateY(12px);
  transition: transform 0.32s var(--ease-out);
}

.resume-modal:not([hidden]) .resume-modal__panel {
  transform: translateY(0);
}
```

---

## Section 19 — Flutter / Dart Implementation Guide

### 19.1 Color System

Define all tokens in a `AppColors` class with static constants, with separate `light` and `dark` instances:

```dart
class AppColors {
  // Light Mode
  static const cream      = Color(0xFFF7F5F0);
  static const sage       = Color(0xFFEEF3ED);
  static const parchment  = Color(0xFFF1ECE3);
  static const warmWhite  = Color(0xFFFAF8F5);
  static const linen      = Color(0xFFF3EFE8);
  static const sageTint   = Color(0xFFEFF3EE);
  static const charcoal   = Color(0xFF1A1A1A);
  static const softBlack  = Color(0xFF2C2C2C);
  static const warmGrey   = Color(0xFF8A8580);
  static const lightGrey  = Color(0xFFC5BFB8);
  static const terracotta = Color(0xFFB87A5A);
  static const gold       = Color(0xFFC4956A);
  static const goldDim    = Color(0x4DC4956A);
  static const blush      = Color(0xFFF0EBE5);

  // Dark Mode equivalents
  static const darkCream      = Color(0xFF141210);
  static const darkSage       = Color(0xFF171816);
  static const darkParchment  = Color(0xFF1A1815);
  static const darkWarmWhite  = Color(0xFF1E1B18);
  static const darkLinen      = Color(0xFF181614);
  static const darkSageTint   = Color(0xFF161815);
  static const darkCharcoal   = Color(0xFFEDE8E1);
  static const darkSoftBlack  = Color(0xFFD8D2C8);
  static const darkWarmGrey   = Color(0xFF9E978F);
  static const darkTerracotta = Color(0xFFD98A62);
  static const darkGold       = Color(0xFFD4A373);
}
```

### 19.2 Typography

Use `google_fonts` package:

```dart
import 'package:google_fonts/google_fonts.dart';

final serifStyle = GoogleFonts.cormorantGaramond(
  fontWeight: FontWeight.w300,
  letterSpacing: 0.06 * 16,
);

final sansStyle = GoogleFonts.inter(
  fontWeight: FontWeight.w300,
  height: 1.7,
);
```

### 19.3 Theme Data

```dart
ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColors.cream,
  colorScheme: ColorScheme.light(
    primary: AppColors.gold,
    secondary: AppColors.terracotta,
    surface: AppColors.warmWhite,
    onSurface: AppColors.charcoal,
  ),
  textTheme: TextTheme(
    displayLarge: GoogleFonts.cormorantGaramond(
      fontSize: 56, fontWeight: FontWeight.w300,
      letterSpacing: 2.4, color: AppColors.charcoal,
    ),
    headlineMedium: GoogleFonts.cormorantGaramond(
      fontSize: 28, fontWeight: FontWeight.w300,
      letterSpacing: 1.0, color: AppColors.charcoal,
    ),
    bodyMedium: GoogleFonts.inter(
      fontSize: 14, fontWeight: FontWeight.w300,
      height: 1.7, color: AppColors.softBlack,
    ),
    labelSmall: GoogleFonts.inter(
      fontSize: 11, fontWeight: FontWeight.w600,
      letterSpacing: 1.3, color: AppColors.terracotta,
    ),
  ),
);
```

### 19.4 Card Component Pattern

```dart
class NotebookCard extends StatefulWidget {
  final Widget child;
  final VoidCallback? onTap;
  const NotebookCard({required this.child, this.onTap, super.key});

  @override
  State<NotebookCard> createState() => _NotebookCardState();
}

class _NotebookCardState extends State<NotebookCard> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 350),
          curve: Curves.easeOut,
          transform: Matrix4.translationValues(_hovered ? 4.0 : 0, 0, 0),
          decoration: BoxDecoration(
            color: _hovered
              ? (isDark ? const Color(0xFF2A2622) : Colors.white)
              : (isDark ? const Color(0xFF1E1B18).withOpacity(0.72) : Colors.white.withOpacity(0.65)),
            border: Border.all(
              color: _hovered
                ? AppColors.goldDim.withOpacity(0.45)
                : AppColors.goldDim.withOpacity(0.22),
            ),
            borderRadius: BorderRadius.circular(8),
            boxShadow: _hovered ? [
              BoxShadow(
                color: AppColors.gold.withOpacity(0.12),
                blurRadius: 14, offset: const Offset(0, 4),
              ),
            ] : [],
          ),
          child: widget.child,
        ),
      ),
    );
  }
}
```

### 19.5 Scroll-Reveal Animation

```dart
class RevealItem extends StatefulWidget {
  final Widget child;
  final Duration delay;
  const RevealItem({required this.child, this.delay = Duration.zero, super.key});

  @override
  State<RevealItem> createState() => _RevealItemState();
}

class _RevealItemState extends State<RevealItem>
    with SingleTickerProviderStateMixin {
  late AnimationController _ctrl;
  late Animation<double> _opacity;
  late Animation<Offset> _slide;
  bool _visible = false;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    );
    _opacity = CurvedAnimation(parent: _ctrl, curve: Curves.easeOut);
    _slide = Tween(begin: const Offset(0, 0.1), end: Offset.zero)
        .animate(CurvedAnimation(parent: _ctrl, curve: Curves.easeOut));
  }

  void _onVisibilityChanged(bool visible) {
    if (visible && !_visible) {
      _visible = true;
      Future.delayed(widget.delay, () {
        if (mounted) _ctrl.forward();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: key ?? UniqueKey(),
      onVisibilityChanged: (info) => _onVisibilityChanged(info.visibleFraction > 0.1),
      child: FadeTransition(
        opacity: _opacity,
        child: SlideTransition(offset: _slide, child: widget.child),
      ),
    );
  }

  @override
  void dispose() { _ctrl.dispose(); super.dispose(); }
}
```

### 19.6 Section Title Widget

```dart
class SectionTitle extends StatelessWidget {
  final String text;
  const SectionTitle(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: GoogleFonts.cormorantGaramond(
            fontSize: 42,
            fontWeight: FontWeight.w300,
            letterSpacing: 0.06 * 42,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        const SizedBox(height: 16),
        Container(
          width: 40,
          height: 1,
          color: AppColors.gold.withOpacity(0.5),
        ),
      ],
    );
  }
}
```

### 19.7 Skill Cell Widget

```dart
class SkillCell extends StatefulWidget {
  final IconData? icon;
  final Widget? customIcon;
  final String name;
  final String tag;
  const SkillCell({this.icon, this.customIcon, required this.name, required this.tag, super.key});

  @override
  State<SkillCell> createState() => _SkillCellState();
}

class _SkillCellState extends State<SkillCell> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeOut,
        transform: Matrix4.translationValues(_hovered ? 4.0 : 0, 0, 0),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: _hovered ? Colors.white : Colors.white.withOpacity(0.65),
          border: Border.all(
            color: _hovered
              ? AppColors.terracotta.withOpacity(0.6)
              : AppColors.gold.withOpacity(0.22),
          ),
          borderRadius: BorderRadius.circular(8),
          boxShadow: _hovered ? [
            BoxShadow(
              color: AppColors.gold.withOpacity(0.1),
              blurRadius: 14, offset: const Offset(0, 4),
            )
          ] : [],
        ),
        child: Row(
          children: [
            AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 350),
              style: TextStyle(
                color: _hovered ? AppColors.terracotta : AppColors.charcoal,
              ),
              child: Opacity(
                opacity: _hovered ? 1.0 : 0.65,
                child: SizedBox(
                  width: 26, height: 26,
                  child: widget.customIcon ?? Icon(widget.icon, size: 20),
                ),
              ),
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.name,
                  style: GoogleFonts.inter(
                    fontSize: 13.6, fontWeight: FontWeight.w500,
                    letterSpacing: 0.16, color: AppColors.softBlack,
                  ),
                ),
                const SizedBox(height: 2),
                Text(widget.tag,
                  style: GoogleFonts.inter(
                    fontSize: 10.9, color: AppColors.warmGrey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
```

---

## Section 20 — Anti-Patterns Reference

The following must never appear in this design system. If a UI element matches any of these descriptions, it is wrong and must be corrected:

| Anti-Pattern | Correct Approach |
|---|---|
| Purple-to-pink gradient backgrounds | Warm neutral surfaces: `--cream`, `--sage`, `--parchment` |
| Cards with identical height forced by `height: 100%` | Cards grow to fit their content; vertical rhythm comes from spacing, not equal height |
| Neon glow on hover | Gold `box-shadow` at 10–15% opacity maximum |
| Corner radius > 14px on content cards | 8–12px for cards; 999px only for pills/buttons/chips |
| Color-coded skill progress bars | Skill cells with SVG icons and two lines of text |
| Timeline with bullet-point lists | Vertical thread, circular SVG markers, illustrated right column |
| Emoji as decoration | Unicode geometric characters (✦) used sparingly as accent only |
| Font weight > 600 for headings | Cormorant Garamond weight 300 or 400 — this face is not bold |
| `letter-spacing` tighter than 0 | Always use positive tracking; this is an editorial typeface |
| Gradient text (`background-clip: text`) | Plain `var(--charcoal)` or `var(--terracotta)` text |
| SVG icons from icon libraries (heroicons, lucide) | Hand-drawn SVG paths with 0.6–0.9px stroke weight |
| Backdrop blur > 12px on floating elements | 4–10px blur — heavy blur obscures the page texture |
| z-index above 9999 (except modals at 2000) | Grain overlay is 9999; stay well below unless opening a modal |

---

## Section 21 — Responsive Breakpoints

| Breakpoint | Behavior |
|---|---|
| `< 600px` | Hero floats scale to 65%; theme toggle text hidden; waypoint tooltips reposition below dot |
| `< 720px` | Learning section collapses to 1 column |
| `< 768px` | Project cards collapse to 1 column; timeline padding adjusts |
| `< 820px` | Skills staircase collapses to 1 column |
| `< 860px` | About section collapses to 1 column |
| `< 960px` | Journey rail navigation hidden |
| `>= 1400px` | Waypoint positions increase to prevent drift |

---

## Section 22 — Accessibility Requirements

- All interactive elements must have `focus-visible` outlines: `2px solid var(--gold)` at `3px offset`
- Journey waypoints have `tabindex="0"` and descriptive `aria-label` attributes
- Floating items have `aria-hidden="true"` where they carry no semantic information
- Resume modal uses `role="dialog"`, `aria-modal="true"`, and `aria-labelledby`
- Theme toggle has `aria-label` that updates dynamically: *"Switch to dark theme"* / *"Switch to light theme"*
- Paper grain overlay and canvas elements carry `aria-hidden="true"`
- `@media (prefers-reduced-motion: reduce)` disables all transitions and animations immediately with `transition: none !important`
- Color contrast for body text (`#1A1A1A` on `#F7F5F0`): 16.1:1 — well above WCAG AAA
- Color contrast for muted text (`#8A8580` on `#F7F5F0`): 4.6:1 — passes WCAG AA

---

## Section 23 — Implementation Checklist

Before shipping any implementation of this design system, verify:

- [ ] Flash-free theme detection script is the **first** script in `<head>`, before any CSS
- [ ] Both `prefers-color-scheme: dark` media query AND `data-theme="dark"` attribute are handled
- [ ] All 20 CSS custom properties are defined for both light and dark modes
- [ ] SVG stroke override selectors are present for `#1A1A1A` and `#2C2C2C`
- [ ] `prefers-reduced-motion` media query disables all animations
- [ ] Grain overlay is `pointer-events: none` and `z-index: 9999`
- [ ] Journey line and rail are `z-index: 6` and `1000` respectively, never submerging under sections
- [ ] All section backgrounds use the correct distinct surface token (not all `--cream`)
- [ ] Section titles have the 40px × 1px gold underline rule
- [ ] Skill cells slide right (+4px translateX) on hover, not up
- [ ] About points slide right (+4px) on hover; ✦ bullet rotates 45° on hover
- [ ] Project cards alternate direction with `direction: rtl` trick
- [ ] Compact cards have a 48×48px icon thumbnail, not text-only
- [ ] Resume modal enters with `translateY(12px → 0)` and exits with opacity fade
- [ ] `font-family: var(--font-serif)` is applied to all headings, section titles, chips, labels, waypoint messages, and rail tooltips
- [ ] `font-weight: 300` is the default weight for Cormorant Garamond in all heading contexts
- [ ] In Flutter: `VisibilityDetector` or scroll observer is used for reveal animations, not `initState`
- [ ] In Flutter: `ThemeMode` persisted to `SharedPreferences` with key `color-scheme`

