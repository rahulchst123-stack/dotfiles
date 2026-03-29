#!/bin/bash

# Install Node.js (required for Claude Code)
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install Claude Code
npm install -g @anthropic-ai/claude-code

echo "✅ Claude Code installed. Run 'claude' to authenticate."
