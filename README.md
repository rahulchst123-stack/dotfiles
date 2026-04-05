# dotfiles

GitHub Codespaces dotfiles for automatic Claude Code + Railway CLI setup.

## What this does

When a new Codespace starts, GitHub clones this repo and runs `install.sh`, which:

- Installs `@railway/cli` and `@anthropic-ai/claude-code` globally (skips if already installed via devcontainer)
- Validates that `RAILWAY_TOKEN` is present for automatic Railway auth

## Setup (one-time)

1. **Set Codespaces secrets** at [github.com/settings/codespaces](https://github.com/settings/codespaces):
   - `RAILWAY_TOKEN` — your Railway API token (from `~/.railway/config.json` → `accessToken`)

2. **Enable dotfiles** at [github.com/settings/codespaces](https://github.com/settings/codespaces):
   - Set dotfiles repo to `rahulchst123-stack/dotfiles`
   - Set install script to `install.sh`

## Per-codespace manual steps

| Step | Command |
|------|---------|
| Authenticate Claude Code | `claude` (browser OAuth, one-time per codespace) |
| Link Railway project | `railway link` (or add `RAILWAY_PROJECT_ID` to devcontainer) |

## devcontainer template

Copy `.devcontainer/devcontainer.json` from any existing project as a starting point for new repos. Change the `name` and port as needed.
