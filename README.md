# Design Principles Skill for Claude Code

A Claude Code skill that enforces precise, crafted design for enterprise software, SaaS dashboards, and admin interfaces. Inspired by Linear, Notion, Stripe, and Vercel.

## What It Does

This skill transforms how Claude Code approaches UI generation. Instead of producing generic, forgettable interfaces, it guides Claude to:

1. **Choose a design direction** before writing code (Precision & Density, Warmth & Approachability, Sophistication & Trust, etc.)
2. **Apply consistent craft principles** (4px grid, typography hierarchy, intentional depth strategy)
3. **Avoid common anti-patterns** (dramatic shadows, asymmetric padding, decorative gradients)

## Before & After

See the difference at **[dashboard-v4-eta.vercel.app](https://dashboard-v4-eta.vercel.app)**

| Without Skill | With Skill |
|---------------|------------|
| Generic gray palette | Intentional color foundation |
| Basic shadows | Consistent depth strategy |
| Default spacing | 4px grid system |
| No design direction | Context-driven personality |

## Installation

### Quick Install (macOS/Linux)

```bash
mkdir -p ~/.claude/skills/design-principles
curl -o ~/.claude/skills/design-principles/skill.md \
  https://raw.githubusercontent.com/Dammyjay93/claude-design-skill/main/skill/skill.md
```

### Manual Install

1. Create the skill directory:
   ```bash
   mkdir -p ~/.claude/skills/design-principles
   ```

2. Copy `skill/skill.md` to `~/.claude/skills/design-principles/skill.md`

3. Restart Claude Code

### Install with `sk`

Install via [sk](https://github.com/803/skills-supply), the universal package manager for AI agent skills (supports Claude, Codex, OpenCode, etc...).

```bash
sk pkg add github Dammyjay93/claude-design-skill
sk sync
```

## Usage

The skill activates automatically when you ask Claude Code to build UI. You can also invoke it explicitly:

```
/design-principles
```

Or reference it in your prompt:

```
Build a dashboard for [your use case]. Use the design-principles skill.
```

## Design Directions

The skill supports multiple design personalities:

| Direction | Aesthetic | Best For |
|-----------|-----------|----------|
| **Precision & Density** | Tight, monochrome, technical | Developer tools, power user apps |
| **Warmth & Approachability** | Generous spacing, soft shadows | Collaborative tools, consumer SaaS |
| **Sophistication & Trust** | Cool tones, layered depth | Finance, enterprise B2B |
| **Boldness & Clarity** | High contrast, dramatic space | Modern dashboards, marketing |
| **Utility & Function** | Muted, functional density | GitHub-style tools |
| **Data & Analysis** | Chart-optimized, numbers-first | Analytics, BI tools |

## Core Principles

- **4px Grid** — All spacing uses multiples of 4px
- **Symmetrical Padding** — TLBR must match
- **Consistent Depth** — Choose one shadow strategy and commit
- **Monospace for Data** — Numbers, IDs, timestamps in mono
- **Color for Meaning** — Gray builds structure, color communicates

## File Structure

```
~/.claude/skills/design-principles/
└── skill.md          # The skill definition
```

## Customization

Fork this repo and modify `skill/skill.md` to match your design system. Key sections to customize:

- **Design Directions** — Add your own personality options
- **Color Foundation** — Define your brand colors
- **Typography** — Specify your font stack
- **Iconography** — Change from Phosphor to your icon library

## License

MIT
