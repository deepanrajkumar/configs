# ------------------------------------
# Theme Setup: Oh My Posh
# ------------------------------------

# oh-my-posh --init --shell pwsh --config "$env:POSH_THEMES_PATH/spaceship.omp.json" | Invoke-Expression
oh-my-posh --init --shell pwsh --config "$env:POSH_THEMES_PATH/powerlevel10k_rainbow.omp.json" | Invoke-Expression
# oh-my-posh --init --shell pwsh --config "$env:POSH_THEMES_PATH/jandedobbeleer.omp.json" | Invoke-Expression



# ------------------------------------
# Navigation
# ------------------------------------
function ..     { Set-Location .. }
function ...    { Set-Location ../.. }
function ....   { Set-Location ../../.. }
function .....  { Set-Location ../../../.. }
function ~      { Set-Location ~ }
function -      { Set-Location - }

# Quick dirs
function dl     { Set-Location "$HOME/Downloads" }
function dt     { Set-Location "$HOME/Desktop" }
function doc    { Set-Location "$HOME/Documents" }
function w      { Set-Location "$HOME/work" }


# ------------------------------------
# Linux-like Aliases
# ------------------------------------
# Set-Alias ls Get-ChildItem
# Set-Alias la "Get-ChildItem -Force"
# Set-Alias l "Get-ChildItem -Name"
# Set-Alias rm Remove-Item
# Set-Alias mv Move-Item
# Set-Alias cp Copy-Item
# Set-Alias cat Get-Content
# Set-Alias less more
# Set-Alias pwd Get-Location
# Set-Alias man Get-Help
Set-Alias touch New-Item
Set-Alias grep Select-String
# Set-Alias cls Clear-Host
function c  { Clear-Host }

# ------------------------------------
# Git Shortcuts
# ------------------------------------
Set-Alias g git
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
function gs    { git status }
function ga    { git add $args }
function gb    { git branch }
function gcl   { git clone $args }
function gpl   { git pull $args }
function gp    { git push $args }
function gpf   { git push --force $args }
function gm    { git merge $args }
function gl    { git log $args }
function gll   { git log --oneline }
function gd    { git diff $args }
function gds   { git diff --staged $args }
function gr    { git remote }
function grv   { git remote -v }
function gst   { git stash }
function gsp   { git stash pop }
function gbl   { git blame $args }

# ------------------------------------
# Node, Yarn, NPM
# ------------------------------------
Set-Alias n node
Set-Alias py python
Set-Alias ts tsc

# NPM
function ni   { npm install $args }
function nr   { npm run $args }
function nis  { npm install --save $args }
function nisd { npm install --save-dev $args }
function nug  { npm update -g }
function nu   { npm update }
function nls  { npm list $args }
function nlg  { npm list -g }
function nd   { npm run dev }
function nb   { npm run build }
function nt   { npm test }

# Yarn
function yi   { yarn install $args }
function ya   { yarn add $args }
function yad  { yarn add --dev $args }
function yr   { yarn run $args }
function yd   { yarn dev }
function yb   { yarn build }
function yt   { yarn test }

# React
function cra     { npx create-react-app $args }
function cra-ts  { npx create-react-app $args --template typescript }
function rdev    { npm run start }
function rbuild  { npm run build }

# ------------------------------------
# Utilities
# ------------------------------------
function reload         { . $PROFILE }
function mkdirp         { New-Item -ItemType Directory -Force -Path $args }
function path           { $Env:Path -split ';' }
function week           { [math]::Ceiling((Get-Date).DayOfYear / 7.0) }
function myip           { (Invoke-WebRequest -uri "http://ifconfig.me/ip").Content.Trim() }
function whoami         { [System.Security.Principal.WindowsIdentity]::GetCurrent().Name }

# ------------------------------------
# ZLocation (autojump-like)
# ------------------------------------
Import-Module ZLocation -ErrorAction SilentlyContinue

# ------------------------------------
# FZF Support (if installed)
# ------------------------------------
function fcd {
  $target = Get-ChildItem -Directory -Recurse -ErrorAction Ignore | fzf
  if ($target) { Set-Location $target.FullName }
}
function fhist {
  $cmd = Get-History | fzf | ForEach-Object { $_.Id }
  if ($cmd) { Invoke-History $cmd }
}

# ------------------------------------
# PSReadLine Options
# ------------------------------------
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Emacs  # or 'Vi' if preferred

# ------------------------------------
# WSL Shortcut
# ------------------------------------
function bash { wsl }

