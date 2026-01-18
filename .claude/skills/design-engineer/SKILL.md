---
name: design-engineer
description: This skill is for interface design — dashboards, admin panels, apps, tools, and interactive products. NOT for marketing design (landing pages, marketing sites, campaigns).
---

# Design Engineer

Build interface design with craft and consistency.

## Scope

**Use for:** Dashboards, admin panels, SaaS apps, tools, settings pages, data interfaces.

**Not for:** Landing pages, marketing sites, campaigns. Redirect those to `/frontend-design`.

---

# The Foundation: Subtle Layering

This is the backbone of craft. Regardless of direction, product type, or visual style — this principle applies to everything.

**Surfaces must be barely different but still distinguishable.** Study Vercel, Supabase, Linear. Their elevation changes are so subtle you almost can't see them — but you feel the hierarchy. In dark mode, each elevation level is only a few percentage points lighter (7% → 9% → 12%). Not dramatic jumps. Not obviously different colors. Whisper-quiet shifts.

**Borders must be light but not invisible.** Use low opacity (rgba with 0.05-0.12 alpha in dark mode). The border should disappear when you're not looking for it, but be findable when you need to understand structure. If borders are the first thing you notice, they're too strong. If you can't tell where regions begin and end, they're too weak.

**The squint test:** Blur your eyes at the interface. You should still perceive hierarchy — what's above what, where sections divide. But nothing should jump out. No harsh lines. No jarring color shifts. Just quiet structure.

This separates professional interfaces from amateur ones. Get this wrong and nothing else matters.

---

# Infinite Expression

Every pattern has infinite expressions. **No interface should look the same.**

A metric display could be a hero number, inline stat, sparkline, gauge, progress bar, comparison delta, trend badge, or something new. A dashboard could emphasize density, whitespace, hierarchy, or flow in completely different ways. Even sidebar + cards has infinite variations in proportion, spacing, and emphasis.

**Before building, ask:**
- What's the ONE thing users do most here?
- What products solve similar problems brilliantly? Study them.
- Why would this interface feel designed for its purpose, not templated?

**NEVER produce identical output.** Same sidebar width, same card grid, same metric boxes with icon-left-number-big-label-small every time — this signals AI-generated immediately. It's forgettable.

The architecture and components should emerge from the task and data, executed in a way that feels fresh. Linear's cards don't look like Notion's. Vercel's metrics don't look like Stripe's. Same concepts, infinite expressions.

Vary the execution. Vary the emphasis. Vary the density.

---

# Before Writing Each Component

**Every time** you write UI code — even small additions — state:

```
Depth: [your approach — borders / subtle shadows / layered]
Surfaces: [your elevation scale — must be barely different, not dramatic]
Borders: [your opacity — must be low, not solid colors]
Spacing: [your base unit — all values must be multiples]
```

This checkpoint is mandatory. It reinforces the backbone: **subtle layering**. Surfaces barely different but distinguishable. Borders light but not invisible. The specific values are yours to decide — the principle is not.

If you can't state these confidently, re-read this file.

---

# Design Principles

## Spacing
Pick a base unit and stick to multiples. Consistency matters more than the specific number. Random values signal no system.

## Padding
Keep it symmetrical. If one side is 16px, others should match unless there's a clear reason.

## Depth
Choose ONE approach and commit:
- **Borders-only** — Clean, technical. For dense tools.
- **Subtle shadows** — Soft lift. For approachable products.
- **Layered shadows** — Premium, dimensional. For cards that need presence.

Don't mix approaches.

## Border Radius
Sharper feels technical. Rounder feels friendly. Pick a scale and apply consistently.

## Typography
Headlines need weight and tight tracking. Body needs readability. Data needs monospace. Build a hierarchy.

## Color & Surfaces
Gray builds structure. Color communicates meaning — status, action, emphasis. Decorative color is noise.

Build from primitives: foreground (text hierarchy), background (surface elevation), border (separation hierarchy), brand, and semantic (destructive, warning, success). Every color should trace back to these. No random hex values — everything maps to the system.

## Animation
Fast micro-interactions (~150ms), smooth easing. No bouncy/spring effects.

## States
Every interactive element needs states: default, hover, active, focus, disabled. Data needs states too: loading, empty, error. Missing states feel broken — this is often what separates polished interfaces from amateur ones.

## Controls
Native `<select>` and `<input type="date">` can't be styled. Build custom components.

---

# Avoid

- **Harsh borders** — if borders are the first thing you see, they're too strong. Use low opacity rgba.
- **Dramatic surface jumps** — elevation changes should be whisper-quiet, not obvious color shifts
- **Inconsistent spacing** — the clearest sign of no system
- **Mixed depth strategies** — if borders, commit to borders throughout
- **Missing interaction states** — hover, focus, disabled, loading, error
- **Dramatic drop shadows** — shadows should be subtle layers, not attention-grabbing
- **Large radius on small elements**
- **Pure white cards on colored backgrounds**
- **Thick decorative borders**
- **Gradients and color for decoration** — color should communicate meaning
- **Multiple accent colors** — dilutes focus

---

# Self-Check

Before finishing:
- **Squint test** — can you still see hierarchy with blurred eyes? Nothing jumping out?
- **Border check** — are borders subtle enough to disappear when not needed?
- **Surface check** — are elevation changes whisper-quiet, not dramatic?
- **Depth consistency** — one strategy throughout?
- **States complete** — hover, focus, disabled, loading, error?

The standard: looks like Vercel, Supabase, Linear — quiet, professional, every detail considered.

---

# After Completing a Task

When you finish building something, **always offer to save**:

```
"Want me to save these patterns for future sessions?"
```

If yes, write to `.design-engineer/system.md`:
- Direction and feel
- Depth strategy (borders/shadows/layered)
- Spacing base unit
- Key component patterns with specific values

This compounds — each save makes future work faster and more consistent.

---

# Workflow

## Communication
Be invisible. Don't announce modes or narrate process.

**Never say:** "I'm in ESTABLISH MODE", "Let me check system.md..."

**Instead:** Jump into work. State suggestions with reasoning.

## Suggest + Ask
Lead with your recommendation, then confirm:
```
"This feels like a data-heavy admin tool — I'd go minimal.
Tight spacing, monochrome, borders for depth."

[AskUserQuestion: "Does that direction feel right?"]
```

## If Project Has system.md
Read `.design-engineer/system.md` and apply. Decisions are made.

## If No system.md
1. Assess context — What's the product? Who uses it?
2. Suggest + ask — State recommendation, get confirmation
3. Build — Apply principles
4. Offer to save

---

# Deep Dives

For more detail on specific topics:
- `references/principles.md` — Code examples, specific values, dark mode
- `references/directions.md` — The 6 design personalities
- `references/validation.md` — Memory management, when to update system.md

# Commands

- `/design-engineer:status` — Current system state
- `/design-engineer:audit` — Check code against system
- `/design-engineer:extract` — Extract patterns from code
