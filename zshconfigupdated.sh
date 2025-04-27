# === Basic PATH Setup ===
export PATH="$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH"

# === Oh-My-Zsh Setup ===
export ZSH="$HOME/.oh-my-zsh"
plugins=(git)

# Load Oh-My-Zsh
source "$ZSH/oh-my-zsh.sh"

# === Aliases (Optional Custom Aliases) ===
# You can keep your personal aliases here
[ -f "$HOME/.alias" ] && source "$HOME/.alias"

# === Antigen (Plugin Manager) Setup ===
source "$HOME/Config/antigen.zsh"

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

# === Quality of Life Improvements ===

# Fast directory switching
setopt AUTO_CD

# Correct minor typos in path
setopt CORRECT

# Share command history between sessions
setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY

# Highlight matching brackets
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR="$ZSH/custom/plugins/zsh-syntax-highlighting/highlighters"

# Spaceship prompt tweaks
export SPACESHIP_DIR_TRUNC_REPO=false

# Enable auto suggestions immediately
bindkey '^ ' autosuggest-accept

# Use LS_COLORS for colorized output (install dircolors if needed)
if [ -r ~/.dircolors ]; then
  eval "$(dircolors -b ~/.dircolors)"
fi

# Useful aliases if not in .alias
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git pull'
