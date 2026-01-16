---
description: Design engineering for Claude Code. Build interfaces with craft, memory, and enforcement.
allowed-tools: Read, Write, Edit, Glob, Grep, Bash
argument-hint: [action] [path]
---

# Design Engineer

Build interfaces with intention, consistency, and memory. This skill helps you establish design direction, remember your decisions across sessions, and maintain systematic consistency.

## Smart Dispatcher (Auto-runs)

**Before building any UI, detect the mode:**

### Step 1: Determine Mode

**Check for `.design-engineer/system.md`:**
- **Exists?** → **APPLY MODE** (use existing system)
- **Doesn't exist?** → Check project type:
  - Has `package.json` or `.git`? → **ESTABLISH MODE** (create system)
  - Neither? → **PRINCIPLES ONLY** (just apply principles)

### Step 2: Execute Mode

**APPLY MODE** (system exists):
1. Read `.design-engineer/system.md`
2. Load direction, tokens, patterns
3. Build using established patterns
4. Validate before finishing
5. If new patterns emerge → add to system.md

**ESTABLISH MODE** (real project, no system):
1. Scan project structure (package.json, files, framework)
2. Infer product type:
   - `tRPC`, `Prisma`, data tables → Dashboard/Admin
   - Landing page, hero sections → Marketing
   - Docs structure, MDX → Documentation
   - Creative tool, canvas → Creative App
3. Suggest direction based on context:
   - Dashboard → Precision & Density
   - Marketing → Boldness & Clarity
   - SaaS collab → Warmth & Approachability
   - Finance → Sophistication & Trust
4. Ask ONE smart question with default:
   ```
   Detected: [Dashboard] → Suggests [Precision & Density, Cool slate, Borders-only]

   Does this direction fit? (y/n/customize)
   ```
5. Build first components
6. After finishing, offer to save system:
   ```
   Created foundations:
   - Direction: Precision & Density
   - Foundation: Cool (slate)
   - Depth: Borders-only
   - Patterns: Button (36px h), Card (border, 16px pad)

   Save to .design-engineer/system.md? (y/n)
   ```

**PRINCIPLES ONLY** (no system needed):
- Apply craft principles below
- No questions, no system.md
- For quick prototypes/experiments

## Commands

- **status** → Show current design system state
- **audit** → Validate existing code against system
- **extract** → Extract patterns from existing code

Run without arguments for smart suggestions based on project state.

---

## Design Direction (REQUIRED)

**Before writing any code, commit to a design direction.** Don't default. Think about what this specific product needs to feel like.

### Think About Context

- **What does this product do?** A finance tool needs different energy than a creative tool.
- **Who uses it?** Power users want density. Occasional users want guidance.
- **What's the emotional job?** Trust? Efficiency? Delight? Focus?
- **What would make this memorable?** Every product has a chance to feel distinctive.

### Choose a Personality

Enterprise/SaaS UI has more range than you think. Consider these directions:

**Precision & Density** — Tight spacing, monochrome, information-forward. For power users who live in the tool. Think Linear, Raycast, terminal aesthetics.

**Warmth & Approachability** — Generous spacing, soft shadows, friendly colors. For products that want to feel human. Think Notion, Coda, collaborative tools.

**Sophistication & Trust** — Cool tones, layered depth, financial gravitas. For products handling money or sensitive data. Think Stripe, Mercury, enterprise B2B.

**Boldness & Clarity** — High contrast, dramatic negative space, confident typography. For products that want to feel modern and decisive. Think Vercel, minimal dashboards.

**Utility & Function** — Muted palette, functional density, clear hierarchy. For products where the work matters more than the chrome. Think GitHub, developer tools.

**Data & Analysis** — Chart-optimized, technical but accessible, numbers as first-class citizens. For analytics, metrics, business intelligence.

Pick one. Or blend two. But commit to a direction that fits the product.

### Choose a Color Foundation

**Don't default to warm neutrals.** Consider the product:

- **Warm foundations** (creams, warm grays) — approachable, comfortable, human
- **Cool foundations** (slate, blue-gray) — professional, trustworthy, serious
- **Pure neutrals** (true grays, black/white) — minimal, bold, technical
- **Tinted foundations** (slight color cast) — distinctive, memorable, branded

**Light or dark?** Dark modes aren't just light modes inverted. Dark feels technical, focused, premium. Light feels open, approachable, clean. Choose based on context.

**Accent color** — Pick ONE that means something. Blue for trust. Green for growth. Orange for energy. Violet for creativity. Don't just reach for the same accent every time.

### Choose a Layout Approach

The content should drive the layout:

- **Dense grids** for information-heavy interfaces where users scan and compare
- **Generous spacing** for focused tasks where users need to concentrate
- **Sidebar navigation** for multi-section apps with many destinations
- **Top navigation** for simpler tools with fewer sections
- **Split panels** for list-detail patterns where context matters

### Choose Typography

Typography sets tone. Don't always default:

- **System fonts** — fast, native, invisible (good for utility-focused products)
- **Geometric sans** (Geist, Inter) — modern, clean, technical
- **Humanist sans** (SF Pro, Satoshi) — warmer, more approachable
- **Monospace influence** — technical, developer-focused, data-heavy

---

## Core Craft Principles

These apply regardless of design direction. This is the quality floor.

### The 4px Grid
All spacing uses a 4px base grid:
- `4px` - micro spacing (icon gaps)
- `8px` - tight spacing (within components)
- `12px` - standard spacing (between related elements)
- `16px` - comfortable spacing (section padding)
- `24px` - generous spacing (between sections)
- `32px` - major separation

### Symmetrical Padding
**TLBR must match.** If top padding is 16px, left/bottom/right must also be 16px. Exception: when content naturally creates visual balance.

```css
/* Good */
padding: 16px;
padding: 12px 16px; /* Only when horizontal needs more room */

/* Bad */
padding: 24px 16px 12px 16px;
```

### Border Radius Consistency
Stick to the 4px grid. Sharper corners feel technical, rounder corners feel friendly. Pick a system and commit:

- Sharp: 4px, 6px, 8px
- Soft: 8px, 12px
- Minimal: 2px, 4px, 6px

Don't mix systems. Consistency creates coherence.

### Depth & Elevation Strategy

**Match your depth approach to your design direction.** Depth is a tool, not a requirement. Different products need different approaches:

**Borders-only (flat)** — Clean, technical, dense. Works for utility-focused tools where information density matters more than visual lift. Linear, Raycast, and many developer tools use almost no shadows — just subtle borders to define regions. This isn't lazy; it's intentional restraint.

**Subtle single shadows** — Soft lift without complexity. A simple `0 1px 3px rgba(0,0,0,0.08)` can be enough. Works for approachable products that want gentle depth without the weight of layered shadows.

**Layered shadows** — Rich, premium, dimensional. Multiple shadow layers create realistic depth for products that want to feel substantial. Stripe and Mercury use this approach. Best for cards that need to feel like physical objects.

**Surface color shifts** — Background tints establish hierarchy without any shadows. A card at `#fff` on a `#f8fafc` background already feels elevated. Shadows can reinforce this, but color does the heavy lifting.

Choose ONE approach and commit. Mixing flat borders on some cards with heavy shadows on others creates visual inconsistency.

```css
/* Borders-only approach */
--border: rgba(0, 0, 0, 0.08);
--border-subtle: rgba(0, 0, 0, 0.05);
border: 0.5px solid var(--border);

/* Single shadow approach */
--shadow: 0 1px 3px rgba(0, 0, 0, 0.08);

/* Layered shadow approach (when appropriate) */
--shadow-layered:
  0 0 0 0.5px rgba(0, 0, 0, 0.05),
  0 1px 2px rgba(0, 0, 0, 0.04),
  0 2px 4px rgba(0, 0, 0, 0.03),
  0 4px 8px rgba(0, 0, 0, 0.02);
```

**The craft is in the choice, not the complexity.** A flat interface with perfect spacing and typography is more polished than a shadow-heavy interface with sloppy details.

### Card Layouts Vary, Surface Treatment Stays Consistent
Monotonous card layouts are lazy design. A metric card doesn't have to look like a plan card doesn't have to look like a settings card. One might have a sparkline, another an avatar stack, another a progress ring, another a two-column split.

Design each card's internal structure for its specific content — but keep the surface treatment consistent: same border weight, shadow depth, corner radius, padding scale, typography. Cohesion comes from the container chrome, not from forcing every card into the same layout template.

### Isolated Controls
UI controls deserve container treatment. Date pickers, filters, dropdowns — these should feel like crafted objects sitting on the page, not plain text with click handlers.

**Never use native form elements for styled UI.** Native `<select>`, `<input type="date">`, and similar elements render OS-native dropdowns and pickers that cannot be styled. Build custom components instead:

- Custom select: trigger button + positioned dropdown menu
- Custom date picker: input + calendar popover
- Custom checkbox/radio: styled div with state management

**Custom select triggers must use `display: inline-flex` with `white-space: nowrap`** to keep text and chevron icons on the same row. Without this, flex children can wrap to new lines.

### Typography Hierarchy
- Headlines: 600 weight, tight letter-spacing (-0.02em)
- Body: 400-500 weight, standard tracking
- Labels: 500 weight, slight positive tracking for uppercase
- Scale: 11px, 12px, 13px, 14px (base), 16px, 18px, 24px, 32px

### Monospace for Data
Numbers, IDs, codes, timestamps belong in monospace. Use `tabular-nums` for columnar alignment. Mono signals "this is data."

### Iconography
Use **Phosphor Icons** (`@phosphor-icons/react`). Icons clarify, not decorate — if removing an icon loses no meaning, remove it.

Give standalone icons presence with subtle background containers.

### Animation
- 150ms for micro-interactions, 200-250ms for larger transitions
- Easing: `cubic-bezier(0.25, 1, 0.5, 1)`
- No spring/bouncy effects in enterprise UI

### Contrast Hierarchy
Build a four-level system: foreground (primary) → secondary → muted → faint. Use all four consistently.

### Color for Meaning Only
Gray builds structure. Color only appears when it communicates: status, action, error, success. Decorative color is noise.

When building data-heavy interfaces, ask whether each use of color is earning its place. Score bars don't need to be color-coded by performance — a single muted color works. Grade badges don't need traffic-light colors — typography can do the hierarchy work. Look at how GitHub renders tables and lists: almost entirely monochrome, with color reserved for status indicators and actionable elements.

---

## Navigation Context

Screens need grounding. A data table floating in space feels like a component demo, not a product. Consider including:

- **Navigation** — sidebar or top nav showing where you are in the app
- **Location indicator** — breadcrumbs, page title, or active nav state
- **User context** — who's logged in, what workspace/org

When building sidebars, consider using the same background as the main content area. Tools like Supabase, Linear, and Vercel rely on a subtle border for separation rather than different background colors. This reduces visual weight and feels more unified.

---

## Dark Mode Considerations

Dark interfaces have different needs:

**Borders over shadows** — Shadows are less visible on dark backgrounds. Lean more on borders for definition. A border at 10-15% white opacity might look nearly invisible but it's doing its job — resist the urge to make it more prominent.

**Adjust semantic colors** — Status colors (success, warning, error) often need to be slightly desaturated or adjusted for dark backgrounds to avoid feeling harsh.

**Same structure, different values** — The hierarchy system (foreground → secondary → muted → faint) still applies, just with inverted values.

---

## Self-Validation (Before Finishing)

**Run this check before showing work to user:**

1. **Spacing check** (if system defines grid):
   - All spacing multiples of base? (4px, 8px, 12px, not 14px, 17px)
   - Padding symmetrical unless intentional?

2. **Depth check** (if system defines strategy):
   - Borders-only → no shadows except rings (0 0 0 1px)
   - Subtle shadows → single layer only
   - Layered → multiple layers consistent

3. **Pattern check** (if system has patterns):
   - Reusing button pattern instead of creating new?
   - Card treatment matches existing cards?

4. **Color check** (if system defines palette):
   - Using colors from palette or semantic grays?
   - No random hex codes?

**Fix violations yourself before user sees them.** Don't wait for the validation hook to catch them.

---

## Memory Management

### When to Update system.md

**Add new patterns when:**
- You create a component used 2+ times (buttons, cards, inputs)
- Pattern is reusable across the project
- Has specific measurements worth remembering

**Pattern format:**
```markdown
### Button Primary
- Height: 36px
- Padding: 12px 16px
- Radius: 6px
- Font: 14px, 500 weight
- Usage: Header, Dashboard CTA, Forms
```

**Don't document:**
- One-off components
- Temporary experiments
- Variations that are better handled with props

### Pattern Reuse

**Before creating a button, check system.md:**
- Does "Button Primary" pattern exist? Use it.
- Need variation? Extend pattern, don't create new.

**Memory compounds:** Each pattern saved makes future work faster and more consistent.

---

## Anti-Patterns

### Never Do This
- Dramatic drop shadows (`box-shadow: 0 25px 50px...`)
- Large border radius (16px+) on small elements
- Asymmetric padding without clear reason
- Pure white cards on colored backgrounds
- Thick borders (2px+) for decoration
- Excessive spacing (margins > 48px between sections)
- Spring/bouncy animations
- Gradients for decoration
- Multiple accent colors in one interface

### Always Question
- "Did I think about what this product needs, or did I default?"
- "Does this direction fit the context and users?"
- "Does this element feel crafted?"
- "Is my depth strategy consistent and intentional?"
- "Are all elements on the grid?"

---

## The Standard

Every interface should look designed by a team that obsesses over 1-pixel differences. Not stripped — *crafted*. And designed for its specific context.

Different products want different things. A developer tool wants precision and density. A collaborative product wants warmth and space. A financial product wants trust and sophistication. Let the product context guide the aesthetic.

The goal: intricate minimalism with appropriate personality. Same quality bar, context-driven execution.

## Argument Handling

$ARGUMENTS
