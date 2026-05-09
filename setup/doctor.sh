#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

check_command() {
    if command -v "$1" &> /dev/null
    then
        echo -e "${GREEN}✅ $2 installed${NC}"
    else
        echo -e "${RED}❌ $2 missing${NC}"
    fi
}

echo "🔍 Running environment checks..."

check_command git "Git"
check_command node "Node.js"
check_command npm "npm"
check_command code "VS Code"
check_command claude "Claude Code"
