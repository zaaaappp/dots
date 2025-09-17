# Dotfiles
My hyprland dots (mix of JaKooLit, HyDE and binnewbs) for me to restore on a new system
You shouldn't use this as it's not the "nicest" setup, however i like this alot, wallpapers were gathered from various places. 

# Installation

To install, run the commands below (No installer)

WARNING: This will replace your current configuration
```shell
sudo pacman -S zsh sddm hyprland rofi-wayland swww kitty waybar cliphist playerctl pavucontrol wl-clipboard xdg-desktop-portal-hyprland git vim noto-fonts base-devel nerd-fonts
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
systemctl enable sddm.service
chsh -s $(which zsh)
git clone https://github.com/zaaaappp/dots.git
sudo cp -r dots/.config/ ~/.config/
sudo cp -r dots/zsh/.zshrc ~/
sudo cp -r dots/zsh/.p10k.zsh ~/
sudo cp -r dots/vim/.vimrc ~/
sudo cp -r dots/assets/wallpapers ~/Pictures/wallpapers/
mkdir -p ~/Pictures/wallpapers/
```

# Configuration
If you are on a Nvidia GPU, make sure you've [configured](https://wiki.hypr.land/Nvidia/) hyprland correctly.

Otherwise please edit "~/.config/hypr/hyprland.conf", and comment out/remove
"env = LIBVA_DRIVER_NAME,nvidia" and 
"env = __GLX_VENDOR_LIBRARY_NAME,nvidia" near the top of the file

Set a wallpaper using the wallpaper switcher, SUPER CTRL + D.
Next up, edit "~/.config/monitors.conf" and adjust it to your [monitors](https://wiki.hypr.land/Configuring/Monitors/), You can access the keybinds in ~/.config/monitors.conf and adjust it to your monitors.


# Pictures
Shows cava, btop, tty clock, and pipes.

<img src="assets/blue.png" width="1920" height="1080"/>
<img src="assets/green.png" width="1920" height="1080"/>
<img src="assets/purple.png" width="1920" height="1080"/>
<img src="assets/orange.png" width="1920" height="1080"/>
<img src="assets/red.png" width="1920" height="1080"/>
(colors sync with your wallpaper)

# Credits
╺╸[JaKooLit](https://github.com/JaKooLit/Hyprland-Dots) for most of the files.  
╺╸[Binnewbs](https://github.com/binnewbs/arch-hyprland) for the waybar configuration.  
╺╸[HyDE](https://github.com/Hyde-project/hyde) for some animations.  
╺╸[Gnome-look](https://www.gnome-look.org/browse/) for the cursor.  
(nearly all the files in this repo are not mine)
