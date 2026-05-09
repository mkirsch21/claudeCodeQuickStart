#!/bin/bash

set -e

echo "🚀 Starting Claude Code QuickStart setup..."
echo "ℹ️  This script requires Chocolatey. Install it from: https://chocolatey.org/install"
echo ""

# Check if running on Windows (Git Bash, WSL, or similar)
if [[ "$OSTYPE" != "msys" && "$OSTYPE" != "cygwin" && "$OSTYPE" != "win32" ]]; then
    echo "ℹ️  For native Windows, use PowerShell with admin privileges"
    echo "ℹ️  For WSL, run ./setup/linux.sh instead"
fi

# Check for Chocolatey
if ! command -v choco &> /dev/null
then
    echo "❌ Chocolatey not found"
    echo "Install from: https://chocolatey.org/install"
    exit 1
fi

if ! command -v git &> /dev/null
then
    echo "📦 Installing Git..."
    choco install -y git
fi

if ! command -v node &> /dev/null
then
    echo "📦 Installing Node.js..."
    choco install -y nodejs
fi

if ! command -v code &> /dev/null
then
    echo "📦 Installing VS Code..."
    choco install -y vscode
fi

echo "📦 Installing Claude CLI globally..."
npm install -g @anthropic-ai/cli

echo ""
echo "✅ Setup complete!"
echo ""
echo "🔑 Next steps:"
echo "1. Get your API key from: https://console.anthropic.com/keys"
echo "2. Set your API key in Windows:"
echo "   setx ANTHROPIC_API_KEY 'your-key-here'"
echo "3. Restart your terminal and run: ./setup/doctor.sh"
echo ""
