# --- Basic Git Aliases ---
Set-Alias g git
Set-Alias gs git status
Set-Alias ga git add
Set-Alias gb git branch
Set-Alias gcl git clone
Set-Alias gpl git pull
Set-Alias gp git push
Set-Alias gpf git push --force
Set-Alias gm git merge
Set-Alias gl git log
Set-Alias gll git log --oneline
Set-Alias gd git diff
Set-Alias gds git diff --staged
Set-Alias gr git remote
Set-Alias grv git remote -v
Set-Alias gst git stash
Set-Alias gsp git stash pop
Set-Alias gbl git blame

# --- Function Aliases for Git Commands with Arguments ---
function gco { git checkout $args }
function gcb { git checkout -b $args }
function gc { git commit $args }
function gcm { git commit -m "$args" }
function gca { git commit -a $args }
function gcam { git commit -am "$args" }
function gpo { git push origin $args }
function gpu { git pull upstream $args }
function gsu { git submodule update --init --recursive }

# --- Fancy Git Log (visual branch tree) ---
function glg { git log --oneline --graph --decorate --all }

# --- Rebase & Reset Helpers ---
function grh { git reset --hard $args }
function gri { git rebase -i $args }

# --- Add All & Commit Fast ---
function gaa { git add -A }
function gac { git add -A; git commit -m "$args" }

# --- Fix Last Commit Message ---
function gcan { git commit --amend --no-edit }

# --- Push with Set-Upstream ---
function gpsu { git push --set-upstream origin $args }

# Navigation Shortcuts
Set-Alias .. Set-Location ..
Set-Alias ... Set-Location ../..
Set-Alias .... Set-Location ../../..

# File/Folder Commands
Set-Alias touch New-Item
function mkdirp { New-Item -ItemType Directory -Force -Path $args }

# System Info
Set-Alias whoami [System.Security.Principal.WindowsIdentity]::GetCurrent().Name
function myip { (Invoke-WebRequest -uri "http://ifconfig.me/ip").Content.Trim() }

# Development Shortcuts
Set-Alias code code  # VS Code
Set-Alias n notepad
Set-Alias py python
Set-Alias node node
Set-Alias ts tsc

# Git wrapper
Set-Alias g git

# Reload profile
function reload-profile { . $PROFILE }

# --------------------------
# GIT ALIASES
# --------------------------
Set-Alias g git
Set-Alias gs git status
Set-Alias ga git add
Set-Alias gb git branch
Set-Alias gd git diff
Set-Alias gds git diff --staged
Set-Alias gpl git pull
Set-Alias gp git push
Set-Alias gpf git push --force
Set-Alias gst git stash
Set-Alias gsp git stash pop
Set-Alias gl git log
Set-Alias gll git log --oneline
Set-Alias gcl git clone
Set-Alias gr git remote -v
Set-Alias gbl git blame

function gco { git checkout $args }
function gcb { git checkout -b $args }
function gc { git commit $args }
function gcm { git commit -m "$args" }
function gca { git commit -a $args }
function gcam { git commit -am "$args" }
function gpo { git push origin $args }
function gpsu { git push --set-upstream origin $args }
function glg { git log --oneline --graph --decorate --all }
function gaa { git add -A }
function gac { git add -A; git commit -m "$args" }
function gcan { git commit --amend --no-edit }
function grh { git reset --hard $args }
function gri { git rebase -i $args }

# --------------------------
# NODE / NPM / YARN ALIASES
# --------------------------
Set-Alias n node
Set-Alias ni npm install
Set-Alias nr npm run
Set-Alias nis npm install --save
Set-Alias nisd npm install --save-dev
Set-Alias nug npm update -g
Set-Alias nu npm update
Set-Alias nls npm list
Set-Alias nlg npm list -g
Set-Alias nd npm run dev
Set-Alias nb npm run build
Set-Alias nt npm test

# YARN equivalents
Set-Alias yi yarn install
Set-Alias ya yarn add
Set-Alias yad yarn add --dev
Set-Alias yr yarn run
Set-Alias yd yarn dev
Set-Alias yb yarn build
Set-Alias yt yarn test

# --------------------------
# REACT SHORTCUTS
# --------------------------
function cra { npx create-react-app $args }
function cra-ts { npx create-react-app $args --template typescript }
function rdev { npm run start }
function rbuild { npm run build }

# --------------------------
# UTILITIES
# --------------------------
function reload-profile { . $PROFILE }
Set-Alias code code         # VS Code
Set-Alias cls Clear-Host

# ----------------------------
# Navigation Aliases
# ----------------------------
Set-Alias .. Set-Location ..
function ... { Set-Location ../.. }
function .... { Set-Location ../../.. }
function ..... { Set-Location ../../../.. }
Set-Alias ~ Set-Location ~
Set-Alias - Set-Location -

# ----------------------------
# Shortcut Locations
# ----------------------------
Set-Alias d "Set-Location ~/Documents/Dropbox"
Set-Alias dl "Set-Location ~/Downloads"
Set-Alias dt "Set-Location ~/Desktop"
Set-Alias p "Set-Location ~/projects"

# ----------------------------
# Git Shortcuts
# ----------------------------
Set-Alias g git
function gup { git pull --rebase $args }
Set-Alias gs git status
function glg { git log --oneline --graph --decorate --all }

# ----------------------------
# LS-style Commands
# ----------------------------
Set-Alias l "Get-ChildItem -Force | Format-List"
Set-Alias la "Get-ChildItem -Force"
function lsd { Get-ChildItem -Directory }

# ----------------------------
# Utilities
# ----------------------------
function reload { . $PROFILE }

# Display PATH line-by-line
function path { $Env:Path -split ';' }

# Week number (custom ISO logic not included, this is a placeholder)
function week { (Get-Date).DayOfYear / 7 -as [int] }



# ----------------------------
# Navigation Aliases
# ----------------------------

Set-Alias .. Set-Location ..
function ...   { Set-Location ../.. }
function ....  { Set-Location ../../.. }
function ..... { Set-Location ../../../.. }
Set-Alias ~ Set-Location ~
Set-Alias - Set-Location -

# ----------------------------
# Common Directory Shortcuts
# ----------------------------

function d  { Set-Location "$HOME/Documents/Dropbox" }
function dl { Set-Location "$HOME/Downloads" }
function dt { Set-Location "$HOME/Desktop" }
function p  { Set-Location "$HOME/projects" }

# ----------------------------
# Git Aliases
# ----------------------------

Set-Alias g git
Set-Alias gs git status
Set-Alias ga git add
Set-Alias gb git branch
Set-Alias gcl git clone
Set-Alias gpl git pull
Set-Alias gp git push
Set-Alias gpf git push --force
Set-Alias gm git merge
Set-Alias gl git log
Set-Alias gll "git log --oneline"
Set-Alias gd git diff
Set-Alias gds "git diff --staged"
Set-Alias gr git remote
Set-Alias grv "git remote -v"
Set-Alias gst git stash
Set-Alias gsp "git stash pop"
Set-Alias gbl git blame

function gco   { git checkout $args }
function gcb   { git checkout -b $args }
function gc    { git commit $args }
function gcm   { git commit -m "$args" }
function gca   { git commit -a $args }
function gcam  { git commit -am "$args" }
function gpo   { git push origin $args }
function gpu   { git pull upstream $args }
function gsu   { git submodule update --init --recursive }
function glg   { git log --oneline --graph --decorate --all }
function grh   { git reset --hard $args }
function gri   { git rebase -i $args }
function gaa   { git add -A }
function gac   { git add -A; git commit -m "$args" }
function gcan  { git commit --amend --no-edit }
function gpsu  { git push --set-upstream origin $args }
function gup   { git pull --rebase $args }

# ----------------------------
# Node / NPM / Yarn Aliases
# ----------------------------

Set-Alias n node
Set-Alias ni "npm install"
Set-Alias nr "npm run"
Set-Alias nis "npm install --save"
Set-Alias nisd "npm install --save-dev"
Set-Alias nug "npm update -g"
Set-Alias nu "npm update"
Set-Alias nls "npm list"
Set-Alias nlg "npm list -g"
Set-Alias nd "npm run dev"
Set-Alias nb "npm run build"
Set-Alias nt "npm test"

Set-Alias yi "yarn install"
Set-Alias ya "yarn add"
Set-Alias yad "yarn add --dev"
Set-Alias yr "yarn run"
Set-Alias yd "yarn dev"
Set-Alias yb "yarn build"
Set-Alias yt "yarn test"

# ----------------------------
# React Shortcuts
# ----------------------------

function cra     { npx create-react-app $args }
function cra-ts  { npx create-react-app $args --template typescript }
function rdev    { npm run start }
function rbuild  { npm run build }

# ----------------------------
# Utility Functions
# ----------------------------

function reload-profile { . $PROFILE }
function reload         { . $PROFILE }
Set-Alias cls Clear-Host
Set-Alias code code
Set-Alias py python
Set-Alias ts tsc
Set-Alias touch New-Item
function mkdirp { New-Item -ItemType Directory -Force -Path $args }

# Display PATH line-by-line
function path { $Env:Path -split ';' }

# Show current week number (basic)
function week { (Get-Date).DayOfYear / 7 -as [int] }

# Get your public IP
function myip { (Invoke-WebRequest -uri "http://ifconfig.me/ip").Content.Trim() }

# Show current user
function whoami { [System.Security.Principal.WindowsIdentity]::GetCurrent().Name }

