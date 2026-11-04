# 🛠️ craftsman-skills

> **A curated, open library of production-grade agent skills, hand-crafted design systems, and engineering blueprints.**  
> Authored and maintained by [Mohamed Askar](https://github.com/askarthemasss) · *Frontend Engineer, Angular Craftsman & Forward Deployed Systems Builder.*

---

## 📖 About This Repository

In an era saturated with generic templates and AI-generated boilerplate ("AI slop"), **craftsman-skills** serves as an antidote. Every skill stored here is:

- **Mechanically Rigorous:** Documented topic-by-topic with exact tokens, timings, constraints, and architecture rules.
- **Production-Validated:** Sourced directly from shipping platforms, enterprise workflows, and customer-facing software.
- **Multi-Runtime Ready:** Built to be directly ingested by **Google Antigravity**, **Claude Code**, **Cursor**, **Copilot**, or any LLM-assisted workflow using standard `SKILL.md` frontmatter.
- **Anti-AI-Slop by Design:** Contains strict negative constraints, anti-pattern checklists, and sensory boundaries to prevent models from outputting stereotypical, lazy layouts.

---

## 🗂️ Skill Directory

| Skill | Category | Platforms | Status | Description |
|---|---|---|---|---|
| [`drawn-notebook-ui`](./skills/drawn-notebook-ui/) | **UI / Design System** | Web · Flutter · CSS | `v1.0.0` (Active) | The complete "Living Digital Notebook" design system. Warm cream/sage paper palettes, dark night mode, fine line craft, and scroll-guided narrative pacing. |

---

## 🚀 How to Ingest Skills in Your Agent Environment

### 1. Google Antigravity
Link any skill directly into your Antigravity global skill directory:
```bash
# Clone the repository
git clone https://github.com/askarthemasss/craftsman-skills.git ~/craftsman-skills

# Symlink a specific skill
ln -s ~/craftsman-skills/skills/drawn-notebook-ui ~/.gemini/config/skills/drawn-notebook-ui
```

### 2. Project-Level Agent Workspaces (Cursor / Claude / Copilot)
Copy or symlink the skill into your project's `.agent/skills/` or `.claude/skills/` folder:
```bash
mkdir -p .agent/skills
cp -r ~/craftsman-skills/skills/drawn-notebook-ui .agent/skills/
```

---

## 📐 Skill Authoring Standards & Manifesto

Every skill contributed or added to this repository adheres to the **Craftsman Standard**:

1. **Self-Contained `SKILL.md`:** Contains YAML frontmatter (`name`, `description`) followed by a comprehensive, structured technical specification.
2. **Exhaustive Detail:** No vague hand-waving or pseudocode. If describing design tokens, supply exact hex values, clamp formulas, timing curves, and stroke weights.
3. **Dual-Theme Rigor:** Any UI skill must treat Light and Dark themes as equal, first-class citizens with explicit flash-free switching semantics.
4. **Anti-Patterns Section:** Every skill must feature an explicit table of forbidden practices and anti-patterns so autonomous agents never default to lazy defaults.
5. **Multi-Platform Parity:** Specifications must cover both modern web (CSS/HTML/TS) and mobile/native (Flutter/Dart) where applicable.

---

## 📂 Repository Structure

```
craftsman-skills/
├── README.md                      # Repository guide & skill catalog
├── LICENSE                        # MIT License
└── skills/
    └── drawn-notebook-ui/         # The Drawn Notebook Design System
        ├── SKILL.md               # Complete agent specification
        ├── README.md              # Human-readable quickstart & guide
        └── assets/
            ├── drawn-notebook.css         # Importable CSS stylesheet
            └── drawn_notebook_tokens.dart # Dart ThemeData & tokens
```

---

## 👤 Author

**Mohamed Askar**  
Frontend Software Engineer · Angular Craftsman · Chennai, India  
- Portfolio: [askar.dev](https://askar.dev)
- X / Twitter: [@askarthemass](https://x.com/askarthemass)
- GitHub: [@askarthemasss](https://github.com/askarthemasss)
- YouTube: [@askarcodes](https://www.youtube.com/@askarcodes)

---

## 📄 License

This repository and all contained skills are licensed under the [MIT License](./LICENSE). Feel free to adapt, extend, and integrate into your own agents and workflows.
