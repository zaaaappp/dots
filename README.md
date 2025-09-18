# Dotfiles
My hyprland dots (mix of JaKooLit, HyDE and binnewbs) for me to restore on a new system
You shouldn't use this as it's not the "nicest" setup, however i like this alot, wallpapers were gathered from various places. 

# Installation

To install, run the commands below

WARNING: This will replace your current configuration
```shell
sudo pacman -S git
git clone https://github.com/zaaaappp/dots.git
cd dots
./install.sh
```

# Configuration
If you are on a Nvidia GPU, make sure you've [configured](https://wiki.hypr.land/Nvidia/) hyprland correctly.

Otherwise edit "~/.config/hypr/hyprland.conf", and comment out/remove
"env = LIBVA_DRIVER_NAME,nvidia" and 
"env = __GLX_VENDOR_LIBRARY_NAME,nvidia" near the top of the file

Set a wallpaper using the wallpaper switcher, SUPER CTRL + D.
Next up, edit "~/.config/monitors.conf" and adjust it to your [monitors](https://wiki.hypr.land/Configuring/Monitors/), You can access the keybinds in ~/.config/monitors.conf and adjust it to your monitors.

# Credits
╺╸[JaKooLit](https://github.com/JaKooLit/Hyprland-Dots) for most of the files.  
╺╸[Binnewbs](https://github.com/binnewbs/arch-hyprland) for the waybar configuration.  
╺╸[HyDE](https://github.com/Hyde-project/hyde) for some animations.  
╺╸[Gnome-look](https://www.gnome-look.org/browse/) for the cursor.  
(almost all the files in this repo are not mine)
