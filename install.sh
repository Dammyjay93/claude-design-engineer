#!/bin/bash

# Frontend Design Skill Installer for Claude Code

set -e

SKILL_DIR="$HOME/.claude/skills/frontend-design"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Installing Frontend Design skill for Claude Code..."

# Create skill directory
mkdir -p "$SKILL_DIR"

# Copy skill file
cp "$SCRIPT_DIR/skill/SKILL.md" "$SKILL_DIR/SKILL.md"

echo "Installed to $SKILL_DIR/SKILL.md"
echo ""
echo "Restart Claude Code to activate the skill."
echo "Usage: /frontend-design or ask Claude to build UI"
