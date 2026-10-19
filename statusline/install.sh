#!/usr/bin/env bash
# Installs ccstatusline, copies the layout, and registers it as the Claude Code status line.
set -euo pipefail
VERSION="${CCSTATUSLINE_VERSION:-2.2.32}"
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CLAUDE_DIR="${CLAUDE_CONFIG_DIR:-$HOME/.claude}"
STAMP="$(date +%Y%m%d%H%M%S)"

npm install -g "ccstatusline@${VERSION}"
BIN="$(command -v ccstatusline)"

CONF="$HOME/.config/ccstatusline/settings.json"
mkdir -p "$(dirname "$CONF")"
[ -f "$CONF" ] && cp "$CONF" "$CONF.bak.$STAMP"
cp "$HERE/ccstatusline.json" "$CONF"

SETTINGS="$CLAUDE_DIR/settings.json"
[ -f "$SETTINGS" ] || echo '{}' > "$SETTINGS"
cp "$SETTINGS" "$SETTINGS.bak.$STAMP"
node -e '
const fs = require("fs");
const [path, bin] = process.argv.slice(1);
const s = JSON.parse(fs.readFileSync(path, "utf8"));
s.statusLine = { type: "command", command: bin, padding: 0 };
fs.writeFileSync(path, JSON.stringify(s, null, 2) + "\n");
' "$SETTINGS" "$BIN"

echo "status line -> $BIN"
