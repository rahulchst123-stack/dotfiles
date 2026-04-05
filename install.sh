#!/bin/bash
set -e

# Install global CLIs (skip if already present — devcontainer may have done this)
if ! command -v railway &>/dev/null; then
  npm install -g @railway/cli
fi

if ! command -v claude &>/dev/null; then
  npm install -g @anthropic-ai/claude-code
fi

# Railway auth is handled automatically via RAILWAY_TOKEN env var (set as Codespaces secret)
if [ -z "$RAILWAY_TOKEN" ]; then
  echo "⚠️  RAILWAY_TOKEN not set — run 'railway login' manually"
else
  echo "✅ Railway auth ready (RAILWAY_TOKEN detected)"
fi

echo ""
echo "Manual steps remaining:"
echo "  1. Run 'claude' to authenticate Claude Code (one-time per codespace)"
echo "  2. Run 'railway link' to connect this project to a Railway service"
