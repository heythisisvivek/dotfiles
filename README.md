# Dotfiles

A comprehensive collection of personal configuration files for Linux and macOS systems, featuring custom themes, application settings, and system optimizations to streamline development workflows.

## Quick Start

The following commands download the Chezmoi binary for your system architecture and initialize the source state. Applying changes will only occur when you execute the respective command.

```bash
# Install Chezmoi binary
sh -c "$(curl -fsLS get.chezmoi.io)" 

# Pull source file (not apply changes)
chezmoi init heythisisvivek

# Pull source file (apply changes)
chezmoi init --apply heythisisvivek
```

## License

Personal use only
