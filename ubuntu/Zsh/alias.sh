# === Basic Commands ===
alias update='sudo apt update && sudo apt upgrade -y'
alias reboot='sudo reboot'
alias shutdown='sudo shutdown now'
alias cls='clear'
alias c='clear'

# === System Info ===
alias ipinfo='hostname -I'
alias sysinfo='neofetch'
alias dfh='df -h'                            # Disk space in human-readable
alias duh='du -h --max-depth=1'               # Folder size summary

# === Directory Shortcuts ===
alias ..='cd ..'
alias ...='cd ../..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias home='cd ~'
alias dl='cd ~/Downloads'
alias dt='cd ~/Desktop'
alias doc='cd ~/Documents'

# === Git Shortcuts ===
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'
alias gl='git pull'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gcam='git commit -am'
alias gpo='git push origin'
alias gpu='git pull upstream'
alias gpsu='git push --set-upstream origin'
alias gup='git pull --rebase'
alias gcl='git clone'
alias gpl='git pull'
alias gpf='git push --force'
alias gll='git log --oneline'
alias gds='git diff --staged'
alias gst='git stash'
alias gsp='git stash pop'
alias gss='git stash show'
alias gssu='git stash show -p'

# === Docker Shortcuts ===
alias dps='docker ps'
alias dpsa='docker ps -a'
alias drm='docker rm $(docker ps -a -q)'
alias dstop='docker stop $(docker ps -q)'

# === Tmux Shortcuts ===
alias ta='tmux attach -t'
alias tls='tmux ls'
alias tn='tmux new -s'

# === Useful Utilities ===
alias ports='sudo lsof -i -P -n | grep LISTEN'
alias pingg='ping google.com'
alias myip='curl -s http://ifconfig.me'
alias week='date +%V'
alias whoami='whoami'
alias catn='cat -n'                          # cat with line numbers
alias psg='ps aux | grep'                     # search process
alias ssg='ss -tulwn | grep'                  # search open ports/sockets

# === Reload Configs ===
alias reload='source ~/.zshrc'
alias reload-alias='source ~/.alias'

# === ls Variations ===
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'

# === If installed htop ===
alias htop='htop'
