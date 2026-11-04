# Drawn Notebook UI (`drawn-notebook-ui`)

> A quiet, editorial, hand-crafted design system and implementation engine authored for Mohamed Askar's personal portfolio. Built for interfaces that feel like living notebooks—ink drawn on warm paper, slow narrative reveals, and zero AI slop.

---

## At a Glance

- **Aesthetic:** Editorial notebook, hand-drawn wireframes, fine 0.6–0.9px vector line art, parchment/cream surfaces.
- **Color Philosophy:** Warm organic neutrals (`#F7F5F0`, `#EEF3ED`, `#F1ECE3`, `#FAF8F5`) stitched together by terracotta and warm amber gold (`#C4956A` / `#D4A373`).
- **Dark Mode:** Deep warm charcoal-ink surfaces (`#141210`, `#171816`, `#1A1815`) with warm off-white ink (`#EDE8E1`) and brightened amber. Zero stark `#000000` pitch black.
- **Platforms Supported:** Vanilla Web (HTML5/CSS3/ES6+), Modern Angular (v17+ Signals), and Flutter (Dart).
- **Core Stance:** Explicitly forbids modern AI UI cliches (purple-pink neon gradients, pill buttons with glowing drop shadows, identical height card grids, emoji decoration).

---

## Palette Tokens

### Light Theme (Daylight Notebook)

| Token | Hex / Value | Role |
|---|---|---|
| `--cream` | `#F7F5F0` | Default body & page canvas |
| `--sage` | `#EEF3ED` | About section & calm reflective background |
| `--parchment` | `#F1ECE3` | Timeline & archival background |
| `--warm-white` | `#FAF8F5` | Skills & structured grid background |
| `--linen` | `#F3EFE8` | Projects section background |
| `--sage-tint` | `#EFF3EE` | Writing & dispatches background |
| `--charcoal` | `#1A1A1A` | Primary typography & fine vector strokes |
| `--soft-black` | `#2C2C2C` | Secondary headings & emphasis |
| `--warm-grey` | `#8A8580` | Subtitles, dates, timestamps |
| `--gold` | `#C4956A` | Primary golden thread & craft accent |
| `--terracotta` | `#B87A5A` | Interactive hover & active waypoint dot |
| `--card-glass` | `rgba(255, 255, 255, 0.65)` | Translucent card surface with blur |

### Dark Theme (Night Notebook)

| Token | Hex / Value | Role |
|---|---|---|
| `--cream` | `#141210` | Dark night canvas (warm charcoal ink) |
| `--sage` | `#171816` | Dark subtle green-grey surface |
| `--parchment` | `#1A1815` | Dark archival surface |
| `--warm-white` | `#1E1B18` | Dark card background |
| `--charcoal` | `#EDE8E1` | Primary text (soft parchment ink) |
| `--soft-black` | `#D8D2C8` | Secondary reading text |
| `--warm-grey` | `#9E978F` | Muted metadata |
| `--gold` | `#D4A373` | Warm luminous amber accent |
| `--terracotta` | `#D98A62` | Vivid terracotta hover accent |
| `--card-glass` | `rgba(30, 27, 24, 0.72)` | Deep glassmorphic panel surface |

---

## Typography

| Family | Weights | Role |
|---|---|---|
| **Cormorant Garamond** | 300, 400, 500, 600 (Italic 300, 400) | Section titles, hero title, waypoint notes, rail labels |
| **Inter** | 300, 400, 500 | Metadata, tags, button labels, dense descriptions |

> **Crucial Rule:** Cormorant Garamond must never be set above weight 600. Headings should be set at weight 300 with positive letter spacing (`0.04em`–`0.15em`).

---

## Quickstart

### 1. Link into Antigravity / AI Agent
To activate this skill globally in your Antigravity agent:
```bash
ln -s "$(pwd)" ~/.gemini/config/skills/drawn-notebook-ui
```

### 2. Using Ready-Made Assets
- **CSS:** Import `assets/drawn-notebook.css` directly into your web project.
- **Flutter:** Import `assets/drawn_notebook_tokens.dart` for typed colors and ThemeData.
- **Full Spec:** Read [`SKILL.md`](./SKILL.md) for the complete 23-section implementation manifesto.
