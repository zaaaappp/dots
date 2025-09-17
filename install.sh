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
sudo pacman -S --noconfirm zsh sddm hyprland rofi-wayland swww kitty waybar cliphist playerctl pavucontrol wl-clipboard xdg-desktop-portal-hyprland git vim noto-fonts base-devel nerd-fonts lsd fastfetch
yay -S --noconfirm otf-minecraft
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
echo ""
echo "--- Installation has finished
echo "Installation has successfully finished."
echo "Restarting in 3 seconds"
sleep 1
echo "Restarting in 2 seconds"
sleep 1
echo "Restarting in 1 second"
sleep 1
sudo reboot now
