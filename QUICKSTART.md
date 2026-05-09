# QuickStart

## Clone Repo

```bash
git clone https://github.com/mkirsch21/claudeCodeQuickStart.git
cd claudeCodeQuickStart
```

## Run Setup (Choose Your Platform)

### macOS
```bash
chmod +x setup/mac.sh
./setup/mac.sh
```

### Linux (Ubuntu, Debian, Fedora, RHEL)
```bash
chmod +x setup/linux.sh
./setup/linux.sh
```

### Windows (Git Bash/WSL)
```bash
chmod +x setup/windows.sh
./setup/windows.sh
```

### Docker
```bash
docker-compose up -d
docker-compose exec claude-dev /bin/bash
```

## Configure API Key

```bash
# Option 1: Copy .env template
cp .env.example .env
# Edit .env and add your key

# Option 2: Set environment variable
export ANTHROPIC_API_KEY='your-key-here'
```

Get your free key: https://console.anthropic.com/keys

## Verify

```bash
chmod +x setup/doctor.sh
./setup/doctor.sh
```

## Try Examples

```bash
node templates/hello-world.js
```

## Next Steps

- Read [README.md](./README.md) for detailed documentation
- Check [templates/](./templates/) for more examples
- Join the [Anthropic community](https://discord.gg/anthropic)
