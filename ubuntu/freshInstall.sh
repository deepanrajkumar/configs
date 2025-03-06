#!/bin/bash

# Ubuntu APT Install Script (install.sh)


# Update package list and upgrade system
sudo apt update && sudo apt upgrade -y

# Essential packages after a fresh install
sudo apt install -y build-essential curl wget git vim htop net-tools ufw unzip zip software-properties-common apt-transport-https ca-certificates gnupg lsb-release

# Developer tools for web, mobile, UI, and UX development
sudo apt install -y nodejs npm python3 python3-pip openjdk-17-jdk android-sdk flutter dart golang rustc cargo ruby-full php php-cli php-curl php-mbstring php-xml composer mysql-server postgresql postgresql-contrib sqlite3 mongodb redis nginx apache2 phpmyadmin

# Essential design and media tools
sudo apt install -y gimp inkscape blender darktable shotcut imagemagick ffmpeg audacity krita scribus

# Essential office and productivity tools
sudo apt install -y libreoffice gedit gnome-tweaks synaptic bleachbit gparted flameshot

# Essential security and privacy tools
sudo apt install -y protonvpn-cli tor torbrowser-launcher

# Essential gaming tools
sudo apt install -y steam lutris

# Essential system tools
sudo apt install -y timeshift neofetch gnome-terminal zsh fonts-firacode

# Essential version control tools
sudo apt install -y git gitkraken lazygit github-cli

# Essential network tools
sudo apt install -y putty postman

# Essential virtualization tools
sudo apt install -y virtualbox vagrant docker.io

# Essential utilities
sudo apt install -y unrar notepadqq vlc obs-studio qbittorrent foxitreader

# Essential development tools
sudo apt install -y code

# Essential WSL tools
sudo apt install -y wsl

# Essential .NET tools
sudo apt install -y dotnet-sdk-6.0 dotnet-runtime-6.0 dotnet-sdk-5.0 dotnet-runtime-5.0

# Enable firewall
sudo ufw enable

# Install Flatpak and add Flathub repository
sudo apt install -y flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# List of software to install
apps=(
  "nvm"
  "docker.io"
  "git"
  "krita"
  "firefox"
  "notepadqq"
  "protonvpn-cli"
  "vlc"
  "unrar"
  "libreoffice"
  "putty"
  "obs-studio"
  "steam"
  "qbittorrent"
  "foxitreader"
  "dotnet-sdk-6.0"
  "dotnet-runtime-6.0"
  "dotnet-sdk-5.0"
  "dotnet-runtime-5.0"
  "github-cli"
  "lazygit"
  "postman"
  "gitkraken"
  "code"
  "gnome-terminal"
  "wsl"
  "gdebi"
  "neofetch"
  "timeshift"
  "flatpak"
  "gnome-tweaks"
  "zsh"
  "fonts-firacode"
  "synaptic"
  "bleachbit"
  "gparted"
  "flameshot"
  "gimp"
  "inkscape"
  "blender"
  "darktable"
  "shotcut"
  "imagemagick"
  "ffmpeg"
  "audacity"
  "scribus"
)

# Install each application using apt
for app in "${apps[@]}"; do
    echo "Installing $app..."
    sudo apt install -y "$app"
    echo "--------------------------------------------"
done

# Enable firewall
sudo ufw enable

# Install Flatpak and add Flathub repository
sudo apt install -y flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "All installations complete!"
echo "Please restart your system to apply changes."
