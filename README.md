# Ubuntu Setup for Software Engineers

A collection of scripts and configurations to set up a fresh Ubuntu installation for software development.

## Quick Start

Run scripts in order:

```bash
# Make scripts executable
chmod +x scripts/*.sh

# 1. Essential system tools (recommended for everyone)
./scripts/01-essentials.sh

# 2. Development environment
./scripts/02-development.sh

# 3. Extras (optional)
./scripts/03-extras.sh

# 4. Optional: Zsh (uncomment lines in 03-extras.sh or run this)
./scripts/04-optional-zsh.sh
```

## Structure

| File | Description |
|------|-------------|
| `scripts/01-essentials.sh` | Terminal, file managers, media players, utilities |
| `scripts/02-development.sh` | VS Code, Docker, Node.js, Python, Rust, Go, lazydocker |
| `scripts/03-extras.sh` | Chrome, Slack, Postman, GIMP, Inkscape, system tools |
| `scripts/04-optional-zsh.sh` | Zsh + oh-my-zsh with plugins |

## Requirements

- Ubuntu 22.04+ (fresh install recommended)
- Internet connection
- sudo privileges

## Post-Setup

1. Review generated config files in `configs/`
2. Log out and back in for group changes (Docker, etc.)
3. Customize `configs/*.conf` to your preferences
