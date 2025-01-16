#!/bin/bash
echo "Setting up dotfiles for Debian-based system..."

# Get the current username
user=$(whoami)

# Update the system and install necessary packages
sudo apt update && sudo apt upgrade -y
sudo apt install -y i3 git rofi feh i3status i3lock flameshot picom alacritty

# Ensure directories exist
mkdir -p /home/$user/.config
mkdir -p /home/$user/.themes
mkdir -p /home/$user/.local/share/rofi/themes
mv spotlight-dark.rasi /home/$user/.local/share/rofi/themes

# Move the Rofi theme
echo "Moving Rofi theme..."
mv spotlight-dark.rasi /home/$user/.local/share/rofi/themes/

# Move configuration files to the appropriate locations
echo "Moving configuration files..."
cp -rf config/* /home/$user/.config/
cp -rf Rofi /home/$user
cp -rf themes/* /home/$user/.themes/

# Fix permissions if needed
sudo chown -R $user:$user /home/$user/.config /home/$user/.themes /home/$user/.local/share/rofi

# Clone Auto-Wallpaper repository
echo "Cloning Auto-Wallpaper repository..."
git clone https://github.com/mxmchrbrt/Auto-Wallpaper /home/$user/Auto-Wallpaper

# Cleanup the dotfiles directory (if applicable)
echo "Cleaning up the dotfiles directory..."
cd ..

# Install Iosevka font
echo "Installing Iosevka font..."
VERSION="14.0.0"  # Change this to the desired version
FONT_DIR="$HOME/.local/share/fonts"

# Create the font directory if it doesn't exist
mkdir -p "$FONT_DIR"

# Download the Iosevka font
wget "https://github.com/be5invis/Iosevka/releases/download/v$VERSION/ttf-iosevka-$VERSION.zip" -O /tmp/ttf-iosevka.zip

# Unzip the downloaded font
unzip /tmp/ttf-iosevka.zip -d /tmp/ttf-iosevka

# Move the font files to the font directory
mv /tmp/ttf-iosevka/*.ttf "$FONT_DIR"

# Clean up
rm -rf /tmp/ttf-iosevka.zip /tmp/ttf-iosevka

# Update font cache
fc-cache -fv

echo "Iosevka font installed successfully!"
echo "Setup complete for Debian-based system."
