#!/bin/bash

# Update the system
sudo pacman -Syu --noconfirm

# Install requested apps
sudo pacman -S --noconfirm discord steam lutris bottles obs-studio handbrake
# Install zen browser
flatpak install flathub app.zen_browser.zen -y

# Install yay (AUR helper) if not already installed
if ! command -v yay &> /dev/null; then
    echo "Installing yay (AUR helper)..."
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm
    cd ..
    rm -rf yay
fi

# Install AUR packages (cool-retro-term and fastfetch)
yay -S --noconfirm cool-retro-term fastfetch

# Install recommended tools
sudo pacman -S --noconfirm vlc gimp audacity htop timeshift wine proton mangohud libreoffice flameshot plank ufw keepassxc

# Install development tools
sudo pacman -S --noconfirm code git python

# Enable firewall (ufw)
sudo ufw enable

# Set up fastfetch for fun
echo "fastfetch" >> ~/.bashrc

# Set a cool retro wallpaper (optional)
WALLPAPER_URL="https://wallpapercave.com/wp/wp14672978.jpg"  # Replace with your preferred wallpaper URL
WALLPAPER_PATH="$HOME/Pictures/retro-wallpaper.jpg"
wget -O "$WALLPAPER_PATH" "$WALLPAPER_URL"
plasma-apply-wallpaperimage "$WALLPAPER_PATH"

# Install KDE-specific tools (optional)
sudo pacman -S --noconfirm kdeplasma-addons kde-gtk-config

echo "Setup complete! Enjoy your new KDE Plasma system."
