# Decisions

## 001: Start with Markdown-based workflow

Decision:
Start AI Employee v1 as a Markdown-based workflow instead of building a web app immediately.

Reason:
A Markdown-based workflow is faster to build, easier to inspect, and easier for AI agents to read.

Result:
The first version will focus on AGENTS.md, docs, tasks, logs, templates, and Git.

---

## 002: Use ConoHa VPS as the persistent development environment

Decision:
Use ConoHa VPS as the main AI development environment.

Reason:
The user wants development to continue without depending on a local PC being open.

Result:
The VPS will host project folders, Docker, Git, Node.js, and future AI development tools.

---

## 003: Use Git as the safety mechanism

Decision:
Every project should be managed with Git.

Reason:
AI agents may make unexpected changes. Git allows rollback and review.

Result:
Each project should be initialized as a Git repository and committed before and after major changes.
