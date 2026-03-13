#!/bin/bash

# Update the system
sudo pacman -Syyu
sudo pacman -S sudo-rs

paru -S yubico-authenticator
paru -S obs-studio-git

# Pacman
sudo-rs pacman -S android-udev tldr --noconfirm
sudo-rs pacman -S --needed base-level --noconfirm
sudo-rs pacman -S htop mangohud gamescope --noconfirm
sudo-rs pacman -S flatpak --noconfirm
#sudo-rs pacman -S fastfetch --noconfirm
# btrfs management
sudo-rs pacman -S snapper btrfs-assistant --noconfirm

# yubico dependency
sudo-rs pacman -S pcsclite ccid --noconfirm
sudo-rs systemctl enable pcscd.service

# Enables the Powermanager
sudo-rs pacman -S tuned-ppd --noconfirm

# video loopback for linux, needed for Obs-cam
sudo-rs pacman -S v4l2loopback-dkms v4l2loopback-utils --noconfirm


# Install flatpak specific apps
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Bottles + Gamescope and
flatpak install flathub -y com.usebottles.bottles
flatpak install flathub -y org.freedesktop.Platform.VulkanLayer.gamescope
flatpak install flathub -y org.freedesktop.Platform.VulkanLayer.MangoHud
flatpak install flathub -y org.freedesktop.Platform.VulkanLayer.vkBasalt

flatpak install flathub -y app.zen_browser.zen
flatpak install flathub -y com.discordapp.Discord
flatpak install flathub -y org.keepassxc.KeePassXC
flatpak install flathub -y org.audacityteam.Audacity
flatpak install flathub -y org.localsend.localsend_app
flatpak install flathub -y com.nextcloud.desktopclient.nextcloud
flatpak install flathub -y cc.arduino.IDE2
flatpak install flathub -y com.heroicgameslauncher.hgl
flatpak install flathub -y org.freecad.FreeCAD
flatpak install flathub -y io.github.wivrn.wivrn
flatpak install flathub -y org.filezillaproject.Filezilla
flatpak install flathub -y fr.handbrake.ghb
flatpak install flathub -y com.dec05eba.gpu_screen_recorder
flatpak install flathub -y com.github.tenderowl.frog
flatpak install flathub -y com.makemkv.MakeMKV
flatpak install flathub -y io.github.giantpinkrobots.flatsweep
flatpak install flathub -y com.github.tchx84.Flatseal
flatpak install flathub -y io.github.flattool.Warehouse
flatpak install flathub -y org.kde.kget
flatpak install flathub -y me.proton.Mail
flatpak install flathub -y org.stellarium.Stellarium
flatpak install flathub -y com.system76.Popsicle
flatpak install flathub -y com.atlauncher.ATLauncher
flatpak install flathub -y io.github.shiftey.Desktop
flatpak install flathub -y it.mijorus.gearlever

flatpak install flathub -y com.chatterino.chatterino
flatpak install flathub -y org.DolphinEmu.dolphin-emu
flatpak install flathub -y io.github.shiiion.primehack
flatpak install flathub -y io.github.hedge_dev.hedgemodmanager
flatpak install flathub -y com.prusa3d.PrusaSlicer

# Install AUR packages (cool-retro-term and fastfetch)
#yay -S android-tools
#yay -S alvr

# update tldr database
tldr -u


echo "Setup complete! Enjoy your new KDE Plasma system. ᗜˬᗜ"
echo "System Reboot in 30 seconds"
sleep 30
echo "Reboot ᗜ˰ᗜ"
sudo-rs reboot now
