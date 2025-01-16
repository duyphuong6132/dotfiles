selected=$(ls ~/.config/hypr/themes/scripts/ | sed 's/\.sh$//' | rofi -dmenu -p "Run: " -theme ~/.config/rofi/theme-switcher.rasi) && bash ~/.conifg/hypr/themes/scripts/$selected.sh
