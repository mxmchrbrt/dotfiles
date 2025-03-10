#!/bin/bash
echo "Setting up dotfiles for Arch-based system..."

# Get the current username
user=$(whoami)

# Update the system and install necessary packages
sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm i3 git rofi feh i3status i3lock flameshot picom alacritty

# Ensure directories exist
mkdir -p /home/$user/.config
mkdir -p /home/$user/.themes
mkdir -p /home/$user/.local/share/rofi/themes
mv spotlight-dark.rasi /home/$user/.local/share/rofi/themes

# Move configuration files to the appropriate locations
echo "Moving configuration files..."
cp -rf config/* /home/$user/.config/
cp -rf Rofi /home/$user
cp -rf themes/* /home/$user/.themes/

# Fix permissions if needed
chown -R $user:$user /home/$user/.config /home/$user/.themes /home/$user/.local/share/rofi

# Clone Auto-Wallpaper repository
echo "Cloning Auto-Wallpaper repository..."
git clone https://github.com/mxmchrbrt/Auto-Wallpaper /home/$user/Auto-Wallpaper

#Installing the font
git clone https://aur.archlinux.org/ttf-iosevka.git
cd ttf-iosevka
makepkg -si
cd ..

# Cleanup the dotfiles directory (if applicable)
echo "Cleaning up the dotfiles directory..."
cd ..
rm -rf dotfiles
echo "Setup complete for Arch-based system. Please reboot."
