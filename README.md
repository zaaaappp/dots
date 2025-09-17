# Dotfiles
My hyprland dots (mix of JaKooLit and binnewbs) for me to restore on a new system
You shouldn't use this as it's not the "nicest" setup, however i like this alot, wallpapers were gathered from various places therefore i've decided not to post them.

# Installation
Read **~/.config/hypr/configs/Keybinds.conf** and **~/.config/hypr/UserConfigs/UserKeybinds.conf** for keybinds
Clone the git and copy the files into **~/.config/**, then edit **~.config/hyprland.conf** and adjust it to your monitors (list monitors with hyprctl monitors)

To install, run the commands below

WARNING: This will replace your current configuration
```shell
sudo pacman -S rofi-wayland swww kitty waybar cliphist playerctl pavucontrol wl-clipboard xdg-desktop-portal-hyprland
git clone https://github.com/zaaaappp/dots.git
sudo cp -r dots/.config/ ~/.config/
```

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
