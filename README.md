# claude-config

Personal Claude Code settings.

## Status line

A single line that never wraps; the branch stays visible and the right end is truncated on narrow terminals.

```
⎇ feature/my-branch... (+12,-3) | ctx 42% | 37% 1h10m | 61% 3d11h7m | Opus 5.5
```

branch (max 32 chars) · changed lines · context used · 5-hour usage + time to reset · weekly usage + time to reset · model

### Install

As a Claude Code plugin:

```
/plugin marketplace add albireo3754/claude-config
/plugin install albireo-config@albireo3754
/albireo-config:statusline-setup
```

Or directly: `./statusline/install.sh`

## License

MIT — see [LICENSE](LICENSE).

The status line is rendered by [ccstatusline](https://github.com/sirmalloc/ccstatusline)
(Copyright (c) 2025 Matthew Breedlove, MIT License). This repository contains only its
configuration and an install script; ccstatusline itself is installed from npm.
