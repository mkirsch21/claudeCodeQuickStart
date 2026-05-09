#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m'

check_command() {
    if command -v "$1" &> /dev/null
    then
        echo -e "${GREEN}✅ $2 installed${NC}"
        return 0
    else
        echo -e "${RED}❌ $2 missing${NC}"
        return 1
    fi
}

check_env_var() {
    if [ -n "${!1}" ]
    then
        echo -e "${GREEN}✅ $1 is set${NC}"
        return 0
    else
        echo -e "${RED}❌ $1 is not set${NC}"
        echo -e "${YELLOW}ℹ️  Get your key from: https://console.anthropic.com/keys${NC}"
        echo -e "${YELLOW}ℹ️  Then run: export ANTHROPIC_API_KEY='your-key-here'${NC}"
        return 1
    fi
}

echo "🔍 Running environment checks..."
echo ""

FAILED=0

check_command git "Git" || FAILED=1
check_command node "Node.js" || FAILED=1
check_command npm "npm" || FAILED=1
check_command code "VS Code" || FAILED=1
check_command claude "Claude CLI" || FAILED=1

echo ""
echo "🔐 Checking API Configuration..."
check_env_var ANTHROPIC_API_KEY "ANTHROPIC_API_KEY" || FAILED=1

echo ""
if [ $FAILED -eq 0 ]
then
    echo -e "${GREEN}✅ All checks passed! You're ready to go.${NC}"
    exit 0
else
    echo -e "${RED}❌ Some checks failed. Please run: ./setup/mac.sh${NC}"
    exit 1
fi
