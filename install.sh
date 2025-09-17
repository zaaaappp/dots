#!/bin/bash

echo "--- Setting up yay"
sleep 1
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..

echo "--- Installing packages"
sleep 1
sudo pacman -S --noconfirm zsh sddm hyprland rofi-wayland swww kitty waybar cliphist playerctl pavucontrol wl-clipboard xdg-desktop-portal-hyprland git vim noto-fonts base-devel nerd-fonts lsd
yay -S --noconfirm otf-minecraft

echo "--- Setting up dots"
sleep 1
systemctl enable sddm.service
chsh -s $(which zsh)
sudo cp -r .config/* ~/.config/
sudo cp -r zsh/.zshrc ~/
sudo cp -r zsh/.p10k.zsh ~/
sudo cp -r vim/.vimrc ~/
mkdir -p ~/Pictures/wallpapers/
sudo cp -r assets/wallpapers ~/Pictures/
sudo cp -r assets/windows-cursor /usr/share/icons/
echo "--- Setup has finished
read -p "Do you want to restart the system now? (y/n): " RESTART

if [[ "$RESTART" =~ ^[Yy]$ ]]; then
    echo "Rebooting..."
    sudo reboot now
else
    echo "Starting SDDM..."
    sudo systemctl start sddm
fi
