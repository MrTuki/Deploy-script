#!/bin/bash

# Update the system
sudo pacman -Syu

# Install requested apps
sudo pacman -S discord steam lutris obs-studio handbrake android-udev tldr yay

# Install flatpak specific apps
flatpak install flathub app.zen_browser.zen
flatpak install flathub com.usebottles.bottles
flatpak install flathub io.github.wivrn.wivrn


# Install AUR packages (cool-retro-term and fastfetch)
yay -S cool-retro-term fastfetch
yay -S android-tools
# yay -S alvr
yay -S portprton

# Install recommended tools
sudo pacman -S gimp htop timeshift wine proton mangohud keepassxc

# Install development tools
sudo pacman -S code git python

# Set up fastfetch for fun
# echo "fastfetch" >> ~/.bashrc

# update tldr database
tldr -u

# Set a cool retro wallpaper (optional)
WALLPAPER_URL="https://wallpapercave.com/wp/wp14672978.jpg"  # Replace with your preferred wallpaper URL
WALLPAPER_PATH="$HOME/Pictures/retro-wallpaper.jpg"
wget -O "$WALLPAPER_PATH" "$WALLPAPER_URL"
plasma-apply-wallpaperimage "$WALLPAPER_PATH"

echo "Setup complete! Enjoy your new KDE Plasma system."
