#!/bin/bash

# Update the system
sudo pacman -S sudo-rs
sudo-rs pacman -Syu

# Install requested apps
sudo-rs pacman -S discord steam lutris obs-studio handbrake android-udev tldr
sudo-rs pacman -S yay
sudo-rs pacman -S --needed base-devel    
sudo-rs pacman -S code git python
sudo-rs pacman -S gimp keepassxc vlc nextcloud-client
sudo-rs pacman -S v4l2loopback-dkms

# Install flatpak specific apps
flatpak install flathub app.zen_browser.zen
flatpak install flathub com.usebottles.bottles
flatpak install flathub io.github.wivrn.wivrn
flatpak install flathub app.fotema.Fotema 
flatpak install it.mijorus.gearlever
flatpak install flathub com.heroicgameslauncher.hgl

# Install AUR packages 
yay -S cool-retro-term fastfetch android-tools alvr portproton windscribe-v2

# Set up fastfetch for fun
# echo "fastfetch" >> ~/.bashrc

# update tldr database
tldr -u

# Set a cool retro wallpaper (optional)
# Replace WALLPAPER_URL with your desired URL
WALLPAPER_URL="https://wallpapercave.com/wp/wp14672978.jpg"
WALLPAPER_PATH="$HOME/retro-wallpaper.jpg"
wget -O "$WALLPAPER_PATH" "$WALLPAPER_URL"
plasma-apply-wallpaperimage "$WALLPAPER_PATH"

echo "Setup complete! Enjoy your new KDE Plasma system."
