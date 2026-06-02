# AGENTS.md

## Project Purpose
This project is the foundation for an AI-driven development workflow.

The goal is to create a repeatable structure where requirements, tasks, logs, prompts, and code are managed inside each project folder so that AI coding agents can work without needing the same explanation every time.

## User Context
The user is a frontend engineer who mainly works with HTML, CSS, JavaScript, WordPress, Google Apps Script, React, and Shopify.
The user wants to manage development from both PC and smartphone.
The user prefers practical, step-by-step implementation over abstract theory.

## Development Policy
- Always read this file before starting work.
- Always read docs/requirements.md and tasks/current.md before implementation.
- Check the current repository status before editing files.
- Make a short implementation plan before editing.
- Keep changes small and understandable.
- Avoid unnecessary large refactors.
- Do not make destructive changes without explicit confirmation.
- Do not hardcode secrets, passwords, API keys, or tokens.
- Use .env.example for environment variables.
- Record completed work in logs/ai-worklog.md.
- Update tasks/done.md when a task is completed.
- If there are uncertainties, make reasonable assumptions and proceed unless the decision is dangerous or business-critical.

## Tech Direction
- VPS: ConoHa VPS
- OS: Ubuntu 24.04
- Runtime: Node.js
- Container: Docker / Docker Compose
- Version Control: Git
- Task Management: Markdown files inside each project
- Future UI: lightweight web dashboard

## Work Rules
1. Run `git status`.
2. Read AGENTS.md, docs/requirements.md, and tasks/current.md.
3. Summarize the current task.
4. Create a short plan.
5. Implement the task.
6. Run checks or tests when possible.
7. Summarize changed files.
8. Record the work in logs/ai-worklog.md.
9. Suggest the next task.

## Safety Rules
- Do not delete large parts of the project without confirmation.
- Do not modify production data directly.
- Do not expose credentials.
- Do not skip logging after completing work.
- Do not deploy to production without explicit confirmation.

## Preferred Output Style
- Be concrete.
- Show commands when needed.
- Explain what changed and why.
- Keep summaries short but useful.
