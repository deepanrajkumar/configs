
# This is a Zsh configuration file that sets up the environment for Zsh shell.
# It includes setting the default editor, configuring the prompt, and loading plugins.
# It also includes custom aliases and Antigen for managing Zsh plugins.
# === Zsh Configuration ===   
# === PATH Setup ===
export PATH="$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH"

# === Oh-My-Zsh Setup ===
export ZSH="$HOME/.oh-my-zsh"
plugins=(git)

# Load Oh-My-Zsh
source $ZSH/oh-my-zsh.sh

# === Load Custom Aliases ===
[ -f "$HOME/.alias" ] && source "$HOME/.alias"

# === Antigen Setup ===
source "$HOME/config/antigen.zsh"

# Use oh-my-zsh
antigen use oh-my-zsh

# Essential Bundles
antigen bundle git
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-history-substring-search

# Theme
antigen theme denysdovhan/spaceship-prompt

# Apply Antigen changes
antigen apply

# === ZSH Quality of Life Settings ===

# Fast directory switching (cd foldername without typing cd)
setopt AUTO_CD

# Auto correct minor command typos
setopt CORRECT

# Share command history between all sessions
setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY

# Spaceship prompt tweak
export SPACESHIP_DIR_TRUNC_REPO=false

# Enable auto-suggestion accept with Ctrl+Space
bindkey '^ ' autosuggest-accept

