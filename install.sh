#!/bin/bash

sudo pacman -S --noconfirm zsh sddm hyprland rofi-wayland swww kitty waybar cliphist playerctl pavucontrol wl-clipboard xdg-desktop-portal-hyprland git vim noto-fonts base-devel nerd-fonts
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..
yay -S --noconfirm otf-minecraft
systemctl enable sddm.service
chsh -s $(which zsh)
git clone https://github.com/zaaaappp/dots.git
sudo cp -r dots/.config/* ~/.config/
sudo cp -r dots/zsh/* ~/
sudo cp -r dots/vim/.vimrc ~/
mkdir -p ~/Pictures/wallpapers/
sudo cp -r dots/assets/wallpapers ~/Pictures/
sudo cp -r dots/assets/windows-cursor /usr/share/icons/
