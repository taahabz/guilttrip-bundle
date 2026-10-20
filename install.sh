#!/bin/sh
# Installs the guilttrip and guilttrip-me Claude skills into ~/.claude/skills
# Usage: curl -fsSL https://raw.githubusercontent.com/taahabz/guilttrip-bundle/main/install.sh | sh
set -e

DEST="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"
TARBALL="https://github.com/taahabz/guilttrip-bundle/archive/refs/heads/main.tar.gz"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

curl -fsSL "$TARBALL" | tar -xz -C "$TMP"
mkdir -p "$DEST"
cp -R "$TMP/guilttrip-bundle-main/skills/guilttrip"    "$DEST/"
cp -R "$TMP/guilttrip-bundle-main/skills/guilttrip-me" "$DEST/"

echo "Installed guilttrip and guilttrip-me to $DEST"
echo "Restart Claude Code, then use /guilttrip or /guilttrip-me"
