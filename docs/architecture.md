# Architecture

## Current Architecture

This project currently uses a file-based architecture.

Directory structure:

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

## Role of Each Directory

### Root Files

#### AGENTS.md
Defines the permanent instructions for AI coding agents.

AI agents should read this file before starting any work.

#### README.md
Explains the project for humans.

It should summarize the purpose, structure, and basic workflow of the project.

### docs

The docs directory stores project knowledge.

It includes:

- project overview
- requirements
- architecture
- setup instructions
- technical decisions
- future planning notes

AI agents should read relevant files in this directory before making changes.

### tasks

The tasks directory stores task-related information.

It includes:

- backlog
- current task
- completed tasks
- reusable prompt templates

The most important file is:

tasks/current.md

AI agents should read this file before implementation.

### tasks/prompts

The tasks/prompts directory stores reusable prompts for AI coding agents.

Example prompts may include:

- initial setup prompt
- bug fix prompt
- refactoring prompt
- deployment prompt
- code review prompt

### logs

The logs directory stores work logs.

The main file is:

logs/ai-worklog.md

AI agents should record what they changed after completing a task.

### src

The src directory will store future application source code.

At the current stage, this project is mainly a Markdown-based workflow, so src may remain empty.

### tests

The tests directory will store future test files.

At the current stage, this may remain empty.

## Workflow Architecture

The basic workflow is:

1. User gives an instruction.
2. AI agent reads AGENTS.md.
3. AI agent reads docs/requirements.md.
4. AI agent reads tasks/current.md.
5. AI agent creates a short plan.
6. AI agent edits files.
7. AI agent runs checks when possible.
8. AI agent records work in logs/ai-worklog.md.
9. AI agent summarizes changes.
10. User reviews the result.
11. Changes are committed with Git.

## Git Strategy

Git is the safety mechanism for this workflow.

Basic rules:

- Commit before large changes.
- Commit after each meaningful task.
- Use clear commit messages.
- Check git status before and after work.
- Review git diff before committing when possible.

For the first version, a simple main branch is enough.

Future projects may use:

- main
- develop
- feature/*

## Future Architecture

In the future, this project may become a small web application.

Possible stack:

- Frontend: React or Next.js
- Backend: Node.js
- Database: SQLite or PostgreSQL
- Runtime: Docker
- Hosting: ConoHa VPS

Possible future features:

- project dashboard
- task dashboard
- prompt manager
- AI worklog viewer
- Git status viewer
- project creation script
- deployment checklist
