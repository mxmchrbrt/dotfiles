# Installation

``` bash
cd ~/
git clone https://github.com/mxmchrbrt/dotfiles
cp -rf ~/.config/i3/config ~/.config/i3/config.bak
cp -rf ~/.vimrc ~/.vimrc.bak
rm -rf ~/.config/i3/config
rm -rf ~/.vimrc
ln -s ~/dotfiles/.config/i3/config ~/.config/i3/config
ln -s ~/dotfiles/.vimrc ~/.vimrc
```
