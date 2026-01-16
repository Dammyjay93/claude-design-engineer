# design-engineer audit

Check existing code against your design system.

## Usage

```
/design-engineer audit <path>     # Audit specific file/directory
/design-engineer audit            # Audit common UI paths
```

## What to Check

**If `.design-engineer/system.md` exists:**

1. **Spacing violations**
   - Find spacing values not on defined grid
   - Example: 17px when base is 4px

2. **Depth violations**
   - Borders-only system → flag shadows
   - Subtle system → flag layered shadows
   - Allow ring shadows (0 0 0 1px)

3. **Color violations**
   - If palette defined → flag colors not in palette
   - Allow semantic grays

4. **Pattern drift**
   - Find buttons not matching Button pattern
   - Find cards not matching Card pattern

**Report format:**
```
Audit Results: src/components/

Violations:
  Button.tsx:12 - Height 38px (pattern: 36px)
  Card.tsx:8 - Shadow used (system: borders-only)
  Input.tsx:20 - Spacing 14px (grid: 4px, nearest: 12px or 16px)

Suggestions:
  - Update Button height to match pattern
  - Replace shadow with border
  - Adjust spacing to grid
```

**If no system.md:**

```
No design system to audit against.

Create a system first:
1. Build UI → establish system automatically
2. Run /design-engineer extract → create system from existing code
```

## Implementation

1. Check for system.md
2. Parse system rules
3. Read target files (tsx, jsx, css, scss)
4. Compare against rules
5. Report violations with suggestions
