# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a topic-centric dotfiles repository (forked from holman/dotfiles). Configuration is organized into topic directories (git, ruby, zsh, etc.) rather than a single monolithic file.

## Key Commands

- `script/bootstrap` - Initial setup: configures git, symlinks dotfiles to `$HOME`, installs Homebrew dependencies
- `script/install` - Runs `brew bundle` and executes all `install.sh` scripts found in topic directories
- `dot` - Maintenance script: pulls latest changes, sets macOS defaults, updates Homebrew packages. Use `dot -e` to open dotfiles in editor

## Architecture

### File Conventions

Files are automatically processed based on their extension/name:

- `**/*.zsh` - Sourced into shell environment (except path.zsh and completion.zsh)
- `**/path.zsh` - Loaded first, for `$PATH` modifications
- `**/completion.zsh` - Loaded last, for autocomplete setup
- `**/*.symlink` - Symlinked to `$HOME` as dotfiles (e.g., `git/gitconfig.symlink` → `~/.gitconfig`)
- `**/install.sh` - Executed by `script/install`

### Directory Structure

- `bin/` - Scripts added to `$PATH` (includes many git-* helpers)
- `functions/` - Zsh completion functions and shell utilities
- `Brewfile` - Homebrew dependencies

### Environment Variables

- `$ZSH` - Points to `~/.dotfiles`
- `$PROJECTS` - Points to `~/Code` (used by `c` function for quick navigation)
- `~/.localrc` - Sourced if present, for machine-specific secrets/config not committed to repo
