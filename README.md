# Claude Code QuickStart

A fully free starter environment for learning and building with Claude Code.

## Quick Start

### macOS
```bash
git clone https://github.com/mkirsch21/claudeCodeQuickStart.git
cd claudeCodeQuickStart
chmod +x setup/mac.sh
./setup/mac.sh
```

### Linux
```bash
git clone https://github.com/mkirsch21/claudeCodeQuickStart.git
cd claudeCodeQuickStart
chmod +x setup/linux.sh
./setup/linux.sh
```

### Windows (Git Bash/WSL)
```bash
git clone https://github.com/mkirsch21/claudeCodeQuickStart.git
cd claudeCodeQuickStart
chmod +x setup/windows.sh
./setup/windows.sh
```

### Docker / Dev Container
```bash
git clone https://github.com/mkirsch21/claudeCodeQuickStart.git
cd claudeCodeQuickStart
# Open in VS Code and use "Dev Containers: Reopen in Container"
# Or use Docker Compose:
docker-compose up -d
docker-compose exec claude-dev /bin/bash
```

## Verify Installation

Run verification on any platform:

```bash
chmod +x setup/doctor.sh
./setup/doctor.sh
```

## Setup Requirements

- **Homebrew** (macOS) or **Chocolatey** (Windows) or **apt-get/dnf** (Linux)
- **Anthropic API Key** - Get one free at [console.anthropic.com](https://console.anthropic.com/keys)
- **Docker** (optional, for containerized development)

## Configuration

1. Get your free API key: https://console.anthropic.com/keys
2. Copy `.env.example` to `.env` and add your key:
   ```bash
   cp .env.example .env
   # Edit .env and add: ANTHROPIC_API_KEY=your-key-here
   ```
3. Or set as environment variable:
   ```bash
   export ANTHROPIC_API_KEY='your-key-here'
   ```

## Try the Examples

```bash
# Run the hello-world example
node templates/hello-world.js
```

## Goals

- 100% free setup
- Beginner friendly
- Reproducible environment
- Fast onboarding
- Cross-platform support
- Docker support for isolated environments
