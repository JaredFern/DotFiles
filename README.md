# .dotfiles
Configs, Environments, Variables, Plugins, etc.

## Getting Started:
* Getting Started: `bash install_dotfiles $HOME_DIR $DOTFILES_DIR`
* Note: May need to remove ~/.tmux directory to avoid creating the symlink in the existing directory


## TL;DR Summary:

* Vim:
  * Theme: One Dark with Deus Airline
  * Mode-dependent cursor type
  * Global Plugins: Commentary, Polyglot, Vim-Eunuch, NerdTree, Autopairs, GitGutter, VimCompletesMe, Trailing Whitespace
  * Host Dependent Plugins: Ripgrep, FZF, Visual Multiline, Taglist
  * Auto-install Vim-Plug
  * Vim keybindings for zsh and inputrc (i.e. inside python interpreter)
* Z Shell (zsh):
  * Theme: Powerlevel10k if present or default to ys
  * Plugins: git, python, vim (with visual indicators), autosuggest, syntax highlighting
  * Paths for project dirs and aliases for CLI tools, handrolled scripts
* Tmux: 
  * Theme: Tmuxline using Vim Airline color scheme
  * Key Remaps: Vim Bindings for pane resizing and davigation, Prefix Key -> A
  * Remote Host Configs: Prefix Key -> G, Turn mouse mode off
* Git Precommit Hooks:
  * Usage: `pre-commit install -c ~/.pre-commit-config.yaml`
  * Base Hooks: Flake8, Private Keys, Debug Statements, Merge Conflicts, Large Files, Trailing Whitespace, File Format (json, xml, etc.)
