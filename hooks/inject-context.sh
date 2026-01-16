#!/bin/bash
# Design Engineer: Inject design context at session start

DESIGN_FILE=".design-engineer/system.md"

if [ ! -f "$DESIGN_FILE" ]; then
    exit 0
fi

echo "=== DESIGN ENGINEER ==="
echo ""
cat "$DESIGN_FILE"
echo ""
echo "=== END DESIGN SYSTEM ==="

exit 0
