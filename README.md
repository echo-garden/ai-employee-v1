# AI Employee v1

AI Employee v1 is a lightweight foundation for AI-driven development.

This project starts as a Markdown-based workflow.

The goal is to make AI-driven development easier to manage from both PC and smartphone.

## Purpose

This project helps manage:

- project requirements
- current tasks
- backlog
- completed tasks
- AI work logs
- development rules
- reusable prompts
- future project templates

## Why This Exists

When working with AI coding agents, repeated explanations can slow down development.

This project keeps important context inside the project folder so that AI agents can read the necessary information before working.

The basic idea is:

1. Put project context in files.
2. Let AI agents read those files.
3. Manage tasks with Markdown.
4. Record completed work in logs.
5. Use Git to track and recover changes.

## Directory Structure

The project contains:

- AGENTS.md
- README.md
- docs/
- tasks/
- logs/
- src/
- tests/

## Important Files

### AGENTS.md

This file contains the permanent instructions for AI coding agents.

AI agents should read this file before starting work.

### docs/requirements.md

This file explains the project requirements.

AI agents should read this file to understand the project goal and scope.

### tasks/current.md

This file describes the current task.

AI agents should read this file before implementation.

### tasks/backlog.md

This file stores future task candidates.

### tasks/done.md

This file stores completed tasks.

### logs/ai-worklog.md

This file records what AI agents changed and why.

## Basic Workflow

The basic workflow is:

1. Move to the project directory.
2. Check git status.
3. Read AGENTS.md.
4. Read docs/requirements.md.
5. Read tasks/current.md.
6. Create a short implementation plan.
7. Make changes.
8. Run checks when possible.
9. Update logs/ai-worklog.md.
10. Review git diff.
11. Commit changes.

## Basic Commands

Move to the project directory:

- cd /home/ai-dev/projects/ai-employee-v1

Check Git status:

- git status

View project files:

- tree

View recent commits:

- git log --oneline

Add changes:

- git add .

Commit changes:

- git commit -m "describe the change"

## Current Stage

The current stage is file-based workflow setup.

This means the project does not yet include:

- web dashboard
- database
- authentication
- automatic deployment
- multi-user management

## Future Features

Possible future features include:

- project creation script
- reusable project templates
- prompt template manager
- task dashboard
- AI worklog viewer
- Git status viewer
- deployment checklist
- simple web dashboard

## Development Principle

Keep the first version simple.

Do not build a large system too early.

The priority is to create a reliable workflow where AI agents can understand the project by reading files inside the repository.
