#!/bin/sh

# Firefox
# Settings > General > Network Settings > Settings > Enable DNS over HTTPS = OFF
# Settings > Home > Homepage and new windows = Blank Page
# Settings > Home > New tabs = Blank Page
# Settings > Privacy & Security > Ask to save logins and passwords for websites = OFF
# Add-ons and Themes > Bitwarden > Add to Firefox
# Right click toolbar > Bookmarks Toolbar > Always Show

# Cloud Storage Provider > Download this file
# Right click this file > Properties > Permissions > Allow executing file as a program = ON

# Updates
sudo apt update
sudo apt upgrade -y --allow-downgrades

# Additional Applications
# sudo apt install timeshift -y
sudo apt install ubuntu-restricted-extras -y
sudo apt install nautilus-dropbox -y
sudo apt install gnucash -y
sudo apt install neofetch -y
sudo apt install gimp -y
sudo apt install gthumb -y
sudo apt install seahorse-nautilus -y
sudo apt install piper -y
sudo apt install gnome-tweaks -y
sudo apt install gir1.2-gmenu-3.0 -y # dependancy of arc menu extension
sudo hostnamectl set-hostname john-pop
timedatectl set-local-rtc 1 --adjust-system-clock # Fix system clock to be compatible with dual booting windows
sudo ufw allow from 192.168.0.0/24 to 224.0.0.251 proto igmp # mDNS
sudo ufw allow from 192.168.0.1 to 224.0.0.1 proto igmp # mDNS
sudo ufw enable # Enable firewall

# zsh
sudo apt install zsh -y
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# logout and login for default shell to take effect

# dconf watch /

# Desktop

gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'

wget -O $HOME/Pictures/background.jpg https://blizzard.gamespress.com/cdn/propressroom/Content/Artwork/Eva/BlizzardLive/artwork/2021/07/01175921-060fe5f7-0986-4301-8999-cedd6b09ea51/Stormwind_KeyArt.jpg

gsettings set org.gnome.desktop.background color-shading-type 'solid'
gsettings set org.gnome.desktop.background picture-options 'zoom'
gsettings set org.gnome.desktop.background picture-uri 'file://'$HOME'/Pictures/background.jpg'
gsettings set org.gnome.desktop.background primary-color '#000000'
gsettings set org.gnome.desktop.background secondary-color '#000000'

gsettings set org.gnome.desktop.screensaver color-shading-type 'solid'
gsettings set org.gnome.desktop.screensaver picture-options 'zoom'
gsettings set org.gnome.desktop.screensaver picture-uri 'file://'$HOME'/Pictures/background.jpg'
gsettings set org.gnome.desktop.screensaver primary-color '#000000'
gsettings set org.gnome.desktop.screensaver secondary-color '#000000'

gsettings set org.gnome.shell.extensions.pop-cosmic show-workspaces-button false
gsettings set org.gnome.shell.extensions.pop-cosmic show-applications-button false

# Files
gsettings set org.gtk.Settings.FileChooser show-hidden true
gsettings set org.gtk.Settings.FileChooser sort-directories-first true

# Power
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'suspend'
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-timeout 1200

# Steam installed in user home directory
sudo apt install steam -y
# Steam > Settings > interface > Select which steam window appears when the program starts = Library
# Steam > Settings > Steam Play > Enable Steam Play for all other titles = ON

# lutris installed in user home directory
sudo apt install lutris -y
# https://lutris.net/games/battlenet/

# add boot loader timeout
# sudo nano /boot/efi/loader/loader.conf
# timeout 3

# https://extensions.gnome.org/extension/1160/dash-to-panel/
# https://extensions.gnome.org/extension/3628/arcmenu/

# Dash to Panel Settings
# Show Application Button = invisible

# Arc Menu Settings
# Menu Layout > Traditional Menu Layouts = Whisker
# Menu Layout > Whisker > Category Activation = Mouse Hover
# Button Appearance > Icon Appearence > iCon  > Browse Icons > Distroc Icons = Pop OS

# Github Client
# wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
# Open Eddy in Pop OS
# Click and Drag downloaded .deb to Eddy

# Clean Up
# sudo apt autoremove -y
# sudo apt clean -y

