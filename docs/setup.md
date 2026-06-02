# Setup

## Server Information

Provider:

- ConoHa VPS

Operating System:

- Ubuntu 24.04

Main user:

- ai

Base directory:

- /home/ai-dev

Project directory:

- /home/ai-dev/projects/ai-employee-v1

## Base Directory Structure

The VPS uses the following base directory structure:

- /home/ai-dev/
  - projects/
  - templates/
  - scripts/

## Project Directory Structure

The AI Employee v1 project uses the following structure:

- AGENTS.md
- README.md
- docs/
  - overview.md
  - requirements.md
  - architecture.md
  - decisions.md
  - setup.md
- tasks/
  - backlog.md
  - current.md
  - done.md
  - prompts/
- logs/
  - ai-worklog.md
- src/
- tests/

## Installed Tools

The following tools should be installed on the VPS:

- Git
- curl
- unzip
- nano
- tree
- Docker
- Docker Compose
- Node.js
- npm

## Basic Commands

Move to the main workspace:

- cd /home/ai-dev

Move to the AI Employee v1 project:

- cd /home/ai-dev/projects/ai-employee-v1

Check the current directory:

- pwd

View files:

- ls -la

View the project tree:

- tree

Check Git status:

- git status

View Git commit history:

- git log --oneline

## Docker Check Commands

Check Docker version:

- docker --version

Check Docker Compose version:

- docker compose version

## Node.js Check Commands

Check Node.js version:

- node -v

Check npm version:

- npm -v

## Git Setup

Global Git user name:

- git config --global user.name "Haru Kudo"

Global Git email:

- git config --global user.email "your-email@example.com"

Check Git settings:

- git config --global --list

## Basic Git Workflow

Before starting work:

- git status

After making changes:

- git add .
- git commit -m "describe the change"

Check recent commits:

- git log --oneline

## AI-Driven Development Workflow

The basic workflow is:

1. Move to the project directory.
2. Check git status.
3. Read AGENTS.md.
4. Read docs/requirements.md.
5. Read tasks/current.md.
6. Make a short implementation plan.
7. Edit files.
8. Run checks when possible.
9. Update logs/ai-worklog.md.
10. Review git diff.
11. Commit changes.

## Notes

Do not store passwords, API keys, tokens, or secret values directly in project files.

Use .env.example for documenting environment variable names.

Use Git commits before and after meaningful changes so that AI-generated edits can be reviewed and reverted if needed.
