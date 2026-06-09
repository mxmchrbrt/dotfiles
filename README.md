# Installation

``` bash
sudo apt install git vim emacs net-tools gcc gdb alacritty 
cd ~/
git clone https://github.com/mxmchrbrt/dotfiles
cp -rf ~/.config/i3/config ~/.config/i3/config.bak
cp -rf ~/.vimrc ~/.vimrc.bak
cp -rf ~/.emacs.d/init.el ~/.emacs.d/init.el.bak
rm -rf ~/.emacs.d/init.el
rm -rf ~/.config/i3/config
rm -rf ~/.vimrc
ln -s ~/dotfiles/.config/i3/config ~/.config/i3/config
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.config/emacs/init.el ~/.emacs.d/init.el
```
