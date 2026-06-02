#!/usr/bin/env bash

set -euo pipefail

PROJECT_NAME="${1:-}"
PROJECTS_DIR="${AI_DEV_PROJECTS_DIR:-/home/ai-dev/projects}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
TEMPLATES_DIR="$REPO_DIR/templates"

if [ -z "$PROJECT_NAME" ]; then
  echo "Usage: scripts/new-project.sh project-name"
  echo "Optional: AI_DEV_PROJECTS_DIR=/tmp scripts/new-project.sh project-name"
  exit 1
fi

case "$PROJECT_NAME" in
  */*|.*|"")
    echo "Error: project-name must be a simple directory name."
    exit 1
    ;;
esac

for template_file in AGENTS.template.md requirements.template.md current-task.template.md; do
  if [ ! -f "$TEMPLATES_DIR/$template_file" ]; then
    echo "Error: missing template: $TEMPLATES_DIR/$template_file"
    exit 1
  fi
done

PROJECT_DIR="$PROJECTS_DIR/$PROJECT_NAME"

if [ -e "$PROJECT_DIR" ]; then
  echo "Error: project already exists: $PROJECT_DIR"
  exit 1
fi

mkdir -p "$PROJECT_DIR"
cd "$PROJECT_DIR"

mkdir -p docs tasks/prompts logs src tests

touch tasks/prompts/.gitkeep
touch src/.gitkeep
touch tests/.gitkeep

cp "$TEMPLATES_DIR/AGENTS.template.md" AGENTS.md
cp "$TEMPLATES_DIR/requirements.template.md" docs/requirements.md
cp "$TEMPLATES_DIR/current-task.template.md" tasks/current.md

cat > README.md <<README_EOF
# $PROJECT_NAME

This project was created with the AI-driven development project template.

## Basic Workflow

1. Read AGENTS.md.
2. Read docs/requirements.md.
3. Read tasks/current.md.
4. Plan the implementation.
5. Make changes.
6. Update logs/ai-worklog.md.
7. Commit changes.
README_EOF

touch docs/overview.md
touch docs/architecture.md
touch docs/decisions.md
touch docs/setup.md
touch tasks/backlog.md
touch tasks/done.md

cat > logs/ai-worklog.md <<LOG_EOF
# AI Worklog

## Initial Setup

Created project structure for $PROJECT_NAME.
LOG_EOF

git init
git add .
git commit -m "initial project setup"

echo "Project created:"
echo "$PROJECT_DIR"
