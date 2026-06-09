# Installation

``` bash
sudo apt install git vim emacs net-tools gcc gdb alacritty i3 feh mpv flameshot network-manager network-manager-applet budgie-network-manager-applet
cd ~/
git clone https://github.com/mxmchrbrt/dotfiles
mkdir -p ~/.config/alacritty
mkdir -p ~/.emacs.d
mkdir -p ~/.config/i3
cp -rf ~/.config/i3/config ~/.config/i3/config.bak
cp -rf ~/.vimrc ~/.vimrc.bak
cp -rf ~/.emacs.d/init.el ~/.emacs.d/init.el.bak
cp -rf ~/.config/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml/bak
rm -rf ~/.config/alacritty/alacritty.toml
rm -rf ~/.emacs.d/init.el
rm -rf ~/.config/i3/config
rm -rf ~/.vimrc
ln -s ~/dotfiles/.config/i3/config ~/.config/i3/config
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.config/emacs/init.el ~/.emacs.d/init.el
ln -s ~/dotfiles/.config/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml
```
On laptop only:

``` bash
sudo apt install tlp
```
