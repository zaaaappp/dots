#!/bin/bash

echo "--- Setting up yay ---"
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..
echo "--- Installing packages ---"
sudo pacman -S --noconfirm zsh sddm hyprland rofi-wayland swww kitty waybar cliphist playerctl pavucontrol wl-clipboard xdg-desktop-portal-hyprland git vim noto-fonts base-devel nerd-fonts lsd
yay -S --noconfirm otf-minecraft
echo "--- Setting up dots ---"
systemctl enable sddm.service
chsh -s $(which zsh)
sudo cp -r .config/* ~/.config/
sudo cp -r zsh/.zshrc ~/
sudo cp -r zsh/.p10k.zsh ~/
sudo cp -r vim/.vimrc ~/
mkdir -p ~/Pictures/wallpapers/
sudo cp -r assets/wallpapers ~/Pictures/
sudo cp -r assets/windows-cursor /usr/share/icons/
