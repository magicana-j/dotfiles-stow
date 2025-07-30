#!/bin/sh
sudo pacman -Sy --needed xdg-desktop-portal-wlr xdg-desktop-portal-gtk \
    gimp inkscape vlc audacity obs-studio shotwell \
    foot kitty alacritty \
    dolphin fuzzel \
    zsh go starship nodejs npm \
    firefox geany \
    fcitx5-im fcitx5-mozc fcitx5-configtool \
    noto-fonts-cjk noto-fonts-extra noto-fonts-emoji \
    vim neovim htop ufw gufw fastfetch

if ! command -v flatpak >/dev/null 2>&1; then
    sudo pacman -S --noconfirm flatpak || \
        {
            echo 'Install failed.' >&2
            exit 1
        }
else
    flatpak remote-add --if-not-exists flathub https://flathub.com/repo/flathub.flatpakrepo
fi

echo 'Completed.'

