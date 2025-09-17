#!/bin/bash

echo ""
echo "--- Setting up yay"
echo ""
sleep 1
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..
rm -rf yay
echo ""
echo "--- Installing packages"
echo ""
sleep 1
sudo pacman -S --noconfirm wlogout gparted zsh lxappearance sddm hyprland rofi-wayland swww kitty waybar cliphist playerctl pavucontrol wl-clipboard xdg-desktop-portal-hyprland git vim noto-fonts base-devel nerd-fonts lsd fastfetch swaync thunar cava btop bc
yay -S --noconfirm otf-minecraft
yay -S --noconfirm matugen-bin
yay -S --noconfirm brave-bin
echo ""
echo "--- Setting up dots"
echo ""
sleep 1
systemctl enable sddm.service
chsh -s $(which zsh)
sudo cp -r .config/* ~/.config/
sudo cp -r zsh/.zshrc ~/
sudo cp -r zsh/.p10k.zsh ~/
sudo cp -r zsh/powerlevel10k ~/
sudo cp -r vim/.vimrc ~/
mkdir -p ~/Pictures/wallpapers/
sudo cp -r assets/wallpapers ~/Pictures/
sudo cp -r assets/windows-cursor /usr/share/icons/
sudo matugen image ~/Pictures/wallpapers/941959.png
echo ""
echo "--- Installation has finished"
echo "Installation has successfully finished."
echo ""
