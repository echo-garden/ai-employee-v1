# Requirements

## Project Overview
AI Employee v1 is a lightweight foundation for AI-driven development.

At first, this project will not be a full web application.
It will start as a folder-based workflow using Markdown files, Git, and project templates.

The purpose is to make AI coding agents work consistently by giving them project context, current tasks, rules, and work logs inside the repository.

## Main Goals
- Manage AI-driven development from a PC or smartphone.
- Keep project requirements, tasks, prompts, logs, and code in one place.
- Reduce repeated explanations to AI agents.
- Make every AI task traceable through Git and work logs.
- Create reusable templates for future projects.
- Eventually build a simple web dashboard for project and task management.

## MVP Scope
The first version should include:

- Standard project folder structure
- AGENTS.md
- docs directory
- tasks directory
- logs directory
- prompts directory
- Git initialization
- Basic task workflow
- Basic templates for future projects

## Not in Scope for Now
The following are intentionally excluded from the first version:

- Web dashboard
- Authentication
- Database
- Payment features
- Multi-user permissions
- Full CI/CD
- Automatic production deployment

## Future Scope
Possible future features:

- Web-based dashboard
- Project creation script
- Prompt template manager
- Task status viewer
- Git status viewer
- AI worklog viewer
- Deployment checklist
- Integration with GitHub or Bitbucket
- Integration with Codex / Claude Code workflows

## Development Philosophy
This project should be simple first.

The priority is not to build a perfect management system.
The priority is to create a reliable workflow where the user can give instructions from a smartphone and the AI agent can understand what to do by reading files in the project.
