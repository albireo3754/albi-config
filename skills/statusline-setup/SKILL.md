---
name: statusline-setup
description: Install and register the personal one-line ccstatusline status bar (branch, ctx %, 5h/7d usage with reset time, model). Use when setting up a new machine or restoring the status line.
---

Run `"${CLAUDE_PLUGIN_ROOT}/statusline/install.sh"` and report its last line.

- It backs up an existing `~/.config/ccstatusline/settings.json` and `~/.claude/settings.json` before writing.
- Set `CCSTATUSLINE_VERSION` to install another version.
- To tweak the layout, run `ccstatusline` in a terminal (TUI editor), then copy `~/.config/ccstatusline/settings.json` back to `statusline/ccstatusline.json` in this repo.
