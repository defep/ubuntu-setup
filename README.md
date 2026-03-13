# Ubuntu Setup for Software Engineers

A collection of scripts and configurations to set up a fresh Ubuntu installation for software development.

## Quick Start

Run scripts in order:

```bash
# Make scripts executable
chmod +x scripts/*.sh

# 1. Essential system tools
./scripts/01-essentials.sh

# 2. Development environment
./scripts/02-development.sh

# 3. Extras (optional)
./scripts/03-extras.sh
```

## Structure

| File | Description |
|------|-------------|
| `scripts/01-essentials.sh` | Basic system tools, GUI apps (kitty, gImageReader) |
| `scripts/02-development.sh` | Programming languages, Git, Docker, VS Code |
| `scripts/03-extras.sh` | Nice-to-have tools |

## Requirements

- Ubuntu 22.04+ (fresh install recommended)
- Internet connection
- sudo privileges

## Post-Setup

1. Review generated config files in `configs/`
2. Log out and back in for group changes (Docker, etc.)
3. Customize `configs/*.conf` to your preferences
