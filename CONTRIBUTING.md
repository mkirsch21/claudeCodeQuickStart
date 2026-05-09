# Contributing to Claude Code QuickStart

Thank you for your interest in contributing! This is a beginner-friendly project, so all contributions are welcome.

## How to Contribute

### Bug Reports & Suggestions
- Open an issue describing the problem or suggestion
- Include platform information (macOS, Linux, Windows)
- Provide error messages and steps to reproduce

### Code Changes
1. Fork the repository
2. Create a feature branch: `git checkout -b feature/your-feature`
3. Make your changes
4. Test on multiple platforms if possible
5. Submit a pull request with a clear description

## Standards

- Keep scripts simple and beginner-friendly
- Add comments explaining what the code does
- Avoid complex dependencies
- Test on macOS, Linux, and Windows when possible
- Update documentation for new features

## Setting Up for Development

```bash
git clone https://github.com/mkirsch21/claudeCodeQuickStart.git
cd claudeCodeQuickStart

# Run setup for your platform
./setup/mac.sh    # or linux.sh / windows.sh

# Verify everything works
./setup/doctor.sh
```

## Testing

Test your changes:
- Run `./setup/doctor.sh` to verify all checks pass
- Run example templates: `node templates/hello-world.js`
- Test on different platforms if possible

## Questions?

Open an issue or check existing discussions in the repository.

Thank you for contributing! 🎉
