#!/bin/bash

sudo pacman -S --needed xorg-server --noconfirm
sudo pacman -S --needed xorg-appres --noconfirm
sudo pacman -S --needed xorg-xinit --noconfirm
sudo pacman -S --needed xterm --noconfirm
sudo pacman -S --needed pipewire-jack --noconfirm
sudo pacman -S --needed gnome --noconfirm
sudo pacman -S --needed gnome-tweaks --noconfirm
sudo pacman -S --needed gnome-terminal --noconfirm
sudo pacman -S --needed gnome-browser-connector --noconfirm
sudo systemctl enable gdm.service
sudo systemctl set-default graphical.target

echo 'Section "InputClass"
        Identifier "system-keyboard"
        MatchIsKeyboard "on"
        Option "XkbLayout" "hu"
EndSection' > /etc/X11/xorg.conf.d/00-keyboard.conf

echo 'A TELEPÍTÉS BEFEJEZŐDÖTT, KÉREM, HOGY INDÍTSA ÚJRA A SZÁMÍTÓGÉPÉT!'
