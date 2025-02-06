# Install dependency
yay -Sy hyprland hyprlock hypridle xdg-desktop-portal-hyprland /
hyprpicker swww waybar waybar-updates rofi-wayland swaync wl-clipboard /
cliphist swayosd-git brightnessctl udiskie devify polkit-gnome playerctl /
pyprland grim slurp fastfetch fzf jq eza fd vivid fish starship ripgrep /
bat yazi pavucontrol satty nemo zathura zathura-pdf-mupdf qimgv-light /
mpv catppuccin-gtk-theme-macchiato catppuccin-cursors-macchiato /
qt5ct qt5-wayland qt6-wayland kvantum kvantum-qt5 nwg-look /
ttf-jetbrains-mono-nerd ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-mono /
ttf-nerd-fonts-symbols-common ttf-font-awesome noto-fonts-cjk ttf-ms-win11-auto /
yadm ansible atuin cava easyeffects keyb btop nvtop satty spicetify /
cmake cpio pkg-config meson

# Install Hyprpanel
yay -S ags-hyprpanel-git

# Install OpenSources Dirver
yay -S mesa vulkan-intel intel-media-driver libva-intel-driver xf86-video-nouveau vulkan-mesa-layers lib32-mesa vulkan-radeon

# Refresh font cache

fc-cache -fv

curl -LJO https://github.com/ljmill/catppuccin-icons/releases/download/v0.2.0/Catppuccin-SE.tar.bz2
tar -xf Catppuccin-SE.tar.bz2
mkdir ~/.local/share/icons/
mv Catppuccin-SE ~/.local/share/icons/
rm -rf Catppuccin-SE.tar.bz2

cd ~/MyHypr/
mkdir ~/.local/bin
cp -r firefox-theme/home/* ~/
cp -r firefox-theme/local-share/* ~/.local/share
cp -r dotfiles/* ~/.config
cp -r local-bin/* ~/.local/bin

#yadm clone https://github.com/Matt-FTW/dotfiles.git
