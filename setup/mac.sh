#!/bin/bash

set -e

echo "🚀 Starting Claude Code QuickStart setup..."

if ! command -v brew &> /dev/null
then
    echo "❌ Homebrew not found"
    echo "Install Homebrew first: https://brew.sh"
    exit 1
fi

if ! command -v git &> /dev/null
then
    brew install git
fi

if ! command -v node &> /dev/null
then
    brew install node
fi

if ! command -v claude &> /dev/null
then
    npm install -g @anthropic-ai/claude-code
fi

echo "✅ Setup complete"
