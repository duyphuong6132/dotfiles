#!/bin/bash

# Install all needed
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ~

paru -S --needed mesa vulkan-intel libva-vdpau-driver libvdpau gst-libav gst-plugins-good gst-plugins-bad gst-plugins-ugly ffmpeg libjpeg-turbo libpng libtiff libvpx libx264 libx256 ntfs-3g exfat-utils dosftools btrfs-progs f2fs-tools base-devel linux-headers zip unzip p7zip rsync gtk3 gtk4 qt5-base qt6-base wayland wayland-protocols xorg-xwayland wlroots libdecor wl-clipboard grim slurp

# Install dependentcy
paru -S hyprland swww hyprshot gnome-polkit hyprpaper eza mate-polkit cliphist xdg-desktop-portal-hyprland qt5-wayland qt6-wayland pipewire wireplumber hyprlock hypridle bluez bluez-utils blueman

# Install fonts
paru -S ttf-jetbrains-mono ttf-jetbrains-mono-nerd ttf-hack-nerd otf-san-francisco-mono awesome-terminal-fonts otf-font-awesome ttf-font-awesome

# Install program
paru -S kitty nwg-look alacritty dunst waybar rofi-wayland wofi tmux fish neovim starship fastfetch

# Install thunar + dependentcy
paru -S thunar thunar-archive-plugin thunar-volman gvfs gvfs-smb gvfs-mtp gvfs-afc udisks2 tumbler ffmpegthumbnailer file-roller

# Install rofi github ver for animation
git clone --depth=1 https://github.com/adi1090x/rofi.git
cd rofi
chmod +x setup.sh
./setup.sh

# Install LazyVim
git clone https://github.com/LazyVim/starter ~/.config/nvim

# clone repo
git clone https://github.com/duyphuong6132/dotfiles.git
cd dotfiles
# Copy dotfiles
sudo cp -r .config ~/
cd .local/
sudo cp -r .bin ~/.local
cd ..
sudo cp -r wallpaper ~/Pictures
sudo cp -r Wallpapers ~/Pictures
sudo cp -r themes ~/Documents
