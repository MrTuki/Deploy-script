#!/bin/bash

# ---- Script Functions here! ----

# Script Erro-messages
script_error_undefined(){
    echo "WARNING:Error in script (crtl + c to quit)"
}

# vivaldi apt or flatpak?
show_menu_vivaldi() {
    clear
    echo "Install vivaldi over deb. or flatpak?"
    echo "1) flatpak"
    echo "2) .deb"
}

install_vivaldi_flatpak(){
    flatpak install flathub com.vivaldi.Vivaldi -y
    sudo flatpak override com.vivaldi.Vivaldi --filesystem=host
}

install_vivaldi_apt(){
 #install vivaldi via apt
    wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | gpg --dearmor | sudo dd of=/usr/share/keyrings/vivaldi-browser.gpg
    echo "deb [signed-by=/usr/share/keyrings/vivaldi-browser.gpg arch=$(dpkg --print-architecture)] https://repo.vivaldi.com/archive/deb/ stable main" | sudo dd of=/etc/apt/sources.list.d/vivaldi-archive.list
    sudo apt update
    sudo apt install vivaldi-stable -y
}
#--------------------------------------------------------------------------------


# VR install ?
show_menu_VR() {
    clear
    echo "Install wivrn for VR?"
    echo "1) yes"
    echo "2) I am to broke :("

}

install_wivrn_flatpak(){
    flatpak install flathub io.github.wivrn.wivrn -y
    #sudo flatpak override com.vivaldi.Vivaldi --filesystem=host
}
#--------------------------------------------------------------------------------


# VPN ?
show_menu_VP() {
    clear
    echo "Install Mullvad and or Windscribe VPN ?"
    echo "1) Mullvad"
    echo "2) Windscribe (needs to be installed by you, inside Downloads)"
    echo "3) Mullvad and Windscribe-(needs to be installed by you, inside Downloads)"
    echo "4) I love corn syrup and the antichrist!"
}

download_windscribeVPN_apt(){
    WINDSCRIBEVPN_URL="https://windscribe.com/install/desktop/linux_deb_x64"  # Replace with your preferred wallpaper URL
    WINDSCRIBEVPN_PATH="$HOME/Downloads/windscribe_xxx_amd64.deb"
    wget -O "$WINDSCRIBEVPN_PATH" "$WINDSCRIBEVPN_UR"
}

install_mullvadVPN_apt(){
    # Download the Mullvad signing key
    sudo curl -fsSLo /usr/share/keyrings/mullvad-keyring.asc https://repository.mullvad.net/deb/mullvad-keyring.asc
    # Add the Mullvad repository server to apt
    echo "deb [signed-by=/usr/share/keyrings/mullvad-keyring.asc arch=$( dpkg --print-architecture )] https://repository.mullvad.net/deb/stable stable main" | sudo tee /etc/apt/sources.list.d/mullvad.list
    # Install the package
    sudo apt update
    sudo apt install mullvad-vpn -y
}
#--------------------------------------------------------------------------------


# Wallpaper ?
show_menu_Wallpaper() {
    clear
    echo "Download the wallpaper (inside Downloads)"
    echo "1) yes"
    echo "2) no"
}

download_wallpaer(){
    # Set a cool retro wallpaper (optional)
    WALLPAPER_URL="https://wallpapercave.com/wp/wp14672978.jpg"  # Replace with your preferred wallpaper URL
    WALLPAPER_PATH="$HOME/Pictures/retro-wallpaper.jpg"
    wget -O "$WALLPAPER_PATH" "$WALLPAPER_URL"
    #plasma-apply-wallpaperimage "$WALLPAPER_PATH"
}
#--------------------------------------------------------------------------------


# fastfetch - is your system Debian 13 or Ubuntu 24.04 based ?
show_menu_fastfetch() {
    clear
    echo "fastfetch - Is your System Debian 13 / Ubuntu 24.04 or above based ?"
    echo "1) yes - use apt to install"
    echo "2) no - download fastfetch-linux-amd64.deb (v2.48.1)"
}

download_fastfetch(){
    FASTFETCH_URL="https://github.com/fastfetch-cli/fastfetch/releases/download/2.48.1/fastfetch-linux-amd64.deb"  # Replace with your preferred wallpaper URL
    FASTFETCH_PATH="$HOME/Downloads/fastfetch-linux-amd64.deb"
    wget -O "$FASTFETCH_PATH" "$FASTFETCH_PATH"
}

install_fastfetch_apt(){
    sudo apt install fastfetch -y
}
#--------------------------------------------------------------------------------


# 3D Printing Software?
show_menu_3D_Printing(){
    clear
    echo "Do you have / use a 3D-Printer"
    echo "1) yes"
    echo "2) no"
}

install_3D_Printing_Software(){
    flatpak install flathub org.freecad.FreeCAD -y
    flatpak install flathub com.prusa3d.PrusaSlicer -y

    sudo flatpak override com.prusa3d.PrusaSlicer --filesystem=host
}
#--------------------------------------------------------------------------------


query_for_what_to_install(){

    # fastfetch ?
    while true; do
        show_menu_fastfetch
        echo ""
        read -p "Choose an option: " choice_fastfetch
        case $choice_fastfetch in
            1)
                break
                ;;
            2)
                break
                ;;
            *)
                clear
                echo "WARNING:'$choice_fastfetch' is a invalid option!"
                echo ""
                ;;
        esac
    done


    # vivaldi apt or flatpak?
    while true; do
        show_menu_vivaldi
        echo ""
        read -p "Choose an option: " choice_vivaldi
        case $choice_vivaldi in
            1)
                break
                ;;
            2)
                break
                ;;
            *)
                clear
                echo "WARNING:'$choice_vivaldi' is a invalid option!"
                echo ""
                ;;
        esac
    done



    # 3D Printing Software?
    while true; do
        show_menu_3D_Printing
        echo ""
        read -p "Choose an option: " choice_3D_Printing
        case $choice_3D_Printing in
            1)
                break
                ;;
            2)
                break
                ;;
            *)
                clear
                echo "WARNING:'$choice_3D_Printing' is a invalid option!"
                echo ""
                ;;
        esac
    done



    # VR install ?
    while true; do
        show_menu_VR
        echo ""
        read -p "Choose an option: " choice_VR
        case $choice_VR in
            1)
                break
                ;;
            2)
                break
                ;;
            *)
                clear
                echo "WARNING:'$choice_VR' is a invalid option!"
                echo ""
                ;;
        esac
    done



    # VPN ?
    while true; do
        show_menu_VP
        echo ""
        read -p "Choose an option: " choice_VP
        case $choice_VP in
            1)
                break
                ;;
            2)
                break
                ;;
            3)
                break
                ;;
            4)
                break
                ;;
            *)
                clear
                echo "WARNING:'$choice_VP' is a invalid option!"
                echo ""
                ;;
        esac
    done



    # Wallpaper ?
    while true; do
        show_menu_Wallpaper
        echo ""
        read -p "Choose an option: " choice_Wallpaper
        case $choice_Wallpaper in
            1)
                break
                ;;
            2)
                break
                ;;
            *)
                clear
                echo "WARNING:'$choice_Wallpaper' is a invalid option!"
                echo ""
                ;;
        esac
    done
}
#--------------------------------------------------------------------------------
# Set up fastfetch for fun
# echo "fastfetch" >> ~/.bashrc


# ---- Script Start here! ----

query_for_what_to_install

# Update the system
sudo apt update && sudo apt upgrade -y

# Install requested apps
sudo apt install steam -y
wget wget -y
sudo apt install cool-retro-term -y
sudo apt install htop wine mangohud -y
sudo apt install git -y
sudo apt install wireguard -y

# Install flatpak specific apps
flatpak install flathub app.zen_browser.zen -y
flatpak install flathub com.usebottles.bottles -y
flatpak install flathub org.gimp.GIMP -y
flatpak install flathub com.discordapp.Discord -y # Discord flatpak over apt cuz Flatpak updates it's self.
flatpak install flathub org.keepassxc.KeePassXC -y
flatpak install flathub io.github.shiftey.Desktop -y
flatpak install flathub com.github.tchx84.Flatseal -y
flatpak install flathub io.github.giantpinkrobots.flatsweep -y
flatpak install flathub com.dec05eba.gpu_screen_recorder -y
flatpak install flathub com.github.unrud.VideoDownloader -y
flatpak install flathub org.gnome.World.PikaBackup -y
flatpak install flathub org.raspberrypi.rpi-imager -y
flatpak install flathub com.yubico.yubioath -y
flatpak install flathub org.filezillaproject.Filezilla -y
flatpak install flathub com.nextcloud.desktopclient.nextcloud -y
flatpak install flathub org.localsend.localsend_app -y
flatpak install flathub com.obsproject.Studio -y
flatpak install flathub me.proton.Mail -y
flatpak install flathub io.github.flattool.Warehouse -y
flatpak install flathub io.mpv.Mpv -y
# Text editing
flatpak install flathub org.texstudio.TeXstudio -y
flatpak install flathub org.libreoffice.LibreOffice -y
# Coding
flatpak install flathub cc.arduino.IDE2 -y
flatpak install flathub dev.zed.Zed -y

# Setting flatpak permission, to host filesystem access
sudo flatpak override app.zen_browser.zen --filesystem=host
sudo flatpak override com.usebottles.bottles --filesystem=host
sudo flatpak override org.gimp.GIMP --filesystem=host
sudo flatpak override com.discordapp.Discord --filesystem=host
sudo flatpak override org.keepassxc.KeePassXC --filesystem=host
sudo flatpak override com.dec05eba.gpu_screen_recorder --filesystem=host
sudo flatpak override org.gnome.World.PikaBackup --filesystem=host
sudo flatpak override org.filezillaproject.Filezilla --filesystem=host
sudo flatpak override io.github.shiftey.Desktop --filesystem=host
sudo flatpak override io.mpv.Mpv --filesystem=host

sudo flatpak override cc.arduino.IDE2 --filesystem=host
sudo flatpak override cc.arduino.IDE2 --device=input
#--------------------------------------------------------------------------------


# fastfetch ?
case $choice_fastfetch in
    1)
        install_fastfetch_apt
        break
        ;;
    2)
        download_fastfetch
        break
        ;;
    *)
        clear
        script_error_undefined
        ;;
esac



# vivaldi apt or flatpak?
case $choice_vivaldi in
    1)
        install_vivaldi_flatpak
        break
        ;;
    2)
        install_vivaldi_apt
        break
        ;;
    *)
        clear
        script_error_undefined
        ;;
esac



# 3D Printing Software?
case $choice_3D_Printing in
    1)
        install_3D_Printing_Software
        break
        ;;
    2)
        break
        ;;
    *)
        script_error_undefined
        ;;
esac



# VR install ?
case $choice_VR in
    1)
        install_wivrn_flatpak
        break
        ;;
    2)
        break
        ;;
    *)
        clear
        script_error_undefined
        ;;
esac



# VPN ?
case $choice_VP in
    1)
        install_mullvadVPN_apt
        break
        ;;
    2)
        download_windscribeVPN_apt
        break
        ;;
    3)
        download_windscribeVPN_apt
        install_mullvadVPN_apt
        break
        ;;
    4)
        break
        ;;
    *)
        clear
        script_error_undefined
        ;;
esac



# Wallpaper ?
case $choice_Wallpaper in
    1)
        download_wallpaer
        break
        ;;
    2)
        break
        ;;
    *)
        clear
        script_error_undefined
        ;;
esac
#--------------------------------------------------------------------------------

clear
echo "xX----Xx All done, enjoy your Linux-PC ᗜˬᗜ xX----Xx"
#--------------------------------------------------------------------------------
# End of Script


