# Dotfiles

A comprehensive collection of personal configuration files for Linux and macOS systems, featuring custom themes, application settings, and system optimizations to streamline development workflows.

## Overview

This repository contains:
- System-wide configuration files and preferences
- Custom shell configurations and aliases
- Application-specific settings and themes
- Development environment setup scripts

## Getting Started

### Prerequisites

- Git configured with SSH access
- SSH key placed at `/home/${USER}/.ssh/$PUBLIC_KEY`
- Access to the remote repository

## Workflow

### Pulling Changes

Before making local changes, sync with the remote repository to avoid conflicts:

```bash
GIT_SSH_COMMAND='ssh -i /home/${USER}/.ssh/$PUBLIC_KEY' git pull heythisisvivek main
```

### Pushing Changes

Follow these steps to push your updates:

```bash
# Switch to main branch
git checkout main

# Stage all changes
git add .

# Create a commit with a descriptive message
git commit -m "Your descriptive commit message"

# Push changes to remote repository
GIT_SSH_COMMAND='ssh -i /home/${USER}/.ssh/$PUBLIC_KEY' git push heythisisvivek main
```

## Best Practices

- Always pull before pushing to keep your local branch up to date
- Use clear, descriptive commit messages
- Test configuration changes locally before committing
- Review changes with `git diff` before staging

## License

Personal use only
