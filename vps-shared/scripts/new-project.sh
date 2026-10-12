#!/bin/bash

set -e

PROJECT_NAME="$1"
BASE_DIR="/home/ai-dev"
PROJECTS_DIR="$BASE_DIR/projects"
TEMPLATES_DIR="$BASE_DIR/templates"

if [ -z "$PROJECT_NAME" ]; then
  echo "Usage: new-project.sh project-name"
  exit 1
fi

PROJECT_DIR="$PROJECTS_DIR/$PROJECT_NAME"

if [ -d "$PROJECT_DIR" ]; then
  echo "Error: project already exists: $PROJECT_DIR"
  exit 1
fi

mkdir -p "$PROJECT_DIR"
cd "$PROJECT_DIR"

mkdir -p docs tasks/prompts logs src tests

cp "$TEMPLATES_DIR/AGENTS.template.md" AGENTS.md
cp "$TEMPLATES_DIR/requirements.template.md" docs/requirements.md
cp "$TEMPLATES_DIR/current-task.template.md" tasks/current.md

touch README.md
touch docs/overview.md
touch docs/architecture.md
touch docs/decisions.md
touch docs/setup.md
touch tasks/backlog.md
touch tasks/done.md
touch logs/ai-worklog.md

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
