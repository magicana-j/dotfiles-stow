#!/bin/sh
sudo xbps-install -u xbps
sudo xbps-install -Syu
sudo xbps-install -Rsy void-repo-nonfree void-repo-multilib void-repo-multilib-nonfree

sudo xbps-install -Sy curl wget vim neovim unzip zip nano gparted xtools ntfs-3g fuse-exfat bash-completion linux-headers gcc htop fastfetch ufw gufw gvfs xdg-user-dirs-gtk stow
sudo xbps-install -y xorg wayland xorg-server-xwayland xdg-desktop-portal-gtk xdg-user-dirs-gtk xdg-utils
sudo xbps-install -y dbus elogind polkit seatd
sudo xbps-install -y xf86-video-intel mesa-dri mesa-intel-dri intel-ucode
sudo xbps-install -y openh264 ffmpeg
sudo xbps-install -y NetworkManager NetworkManager-openconnect NetworkManager-vpnc NetworkManager-l2tp network-manager-applet
sudo xbps-install -y pipewire wireplumber pavucontrol
sudo xbps-install -y noto-fonts-cjk noto-fonts-ttf-extra noto-fonts-emoji font-adobe-source-code-pro font-awesome font-fira-ttf
sudo xbps-install -y fcitx5 fcitx5-mozc fcitx5-configtool fcitx5-gtk+2 fcitx5-gtk+3 fcitx5-gtk4 fcitx5-qt5 fcitx5-qt6
sudo xbps-install -y bluez blueman
sudo xbps-install -y flatpak

sudo ln -snv /etc/sv/dbus /var/service/
sudo ln -snv /etc/sv/NetworkManager /var/service/
sudo ln -snv /etc/sv/bluetoothd /var/service/
sudo unlink /var/service/dhcpcd

sudo xbps-install -y firefox
sudo xbps-install -y foot kitty alacritty dunst wl-clipboard dolphin Waybar swaybg swaylock swayidle
sudo xbps-install -y Thunar thunar-archive-plugin
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo 'Completed.'
