#!/bin/bash

# Update the system
sudo pacman -S sudo-rs
sudo-rs pacman -Syu

# Install requested apps
sudo-rs pacman -S discord steam lutris obs-studio handbrake android-udev tldr yay
sudo-rs pacman -S --needed base-level    

# Install flatpak specific apps
flatpak install flathub app.zen_browser.zen
flatpak install flathub com.usebottles.bottles
flatpak install flathub io.github.wivrn.wivrn


# Install AUR packages (cool-retro-term and fastfetch)
yay -S cool-retro-term fastfetch
yay -S android-tools
# yay -S alvr
yay -S portproton

# Install recommended tools
sudo-rs pacman -S gimp htop wine proton mangohud keepassxc

# Install development tools
sudo-rs pacman -S code git python

# Set up fastfetch for fun
# echo "fastfetch" >> ~/.bashrc

# update tldr database
tldr -u

# Set a cool retro wallpaper (optional)
WALLPAPER_URL="https://wallpapercave.com/wp/wp14672978.jpg"  # Replace with your preferred wallpaper URL
WALLPAPER_PATH="$HOME/retro-wallpaper.jpg"
wget -O "$WALLPAPER_PATH" "$WALLPAPER_URL"
plasma-apply-wallpaperimage "$WALLPAPER_PATH"

echo "Setup complete! Enjoy your new KDE Plasma system."
