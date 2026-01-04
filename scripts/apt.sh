#!/bin/sh

sudo apt-get update

# Common Programs
echo "Installing programs with apt"
sudo apt-get install automake curl feh firefox gimp git i3wm i3status npm picom python3 python3-pip python3-setuptools rofi scrot stow thunar thunar-archive-plugin vim xbacklight zsh zsh-syntax-highlighting

# Background
echo "Downloading background"
wget https://alex-bellon.com/images/wallpaper.jpg ~/Pictures/wallpaper.jpg
feh --bg-scale ~/Pictures/wallpaper.jpg

# betterlockscreen
cd ~/repos/
git clone https://github.com/pavanjadhaw/betterlockscreen
cd betterlockscreen
cp betterlockscreen ~/.local/bin/

# Docker
sudo curl -sSL https://get.docker.com/ | sh
sudo apt-get update && sudo apt-get upgrade

# Git Summary
cd ~/Repos
git clone https://github.com/MirkoLedda/git-summary.git
cd git-summary
sudo cp git-summary /usr/local/bin/git-summary

# Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# zsh-autosuggestion
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# change shell
chsh -s /bin/zsh

#stow everything
cd ~/dotfiles

stow dunst
stow git
stow i3
stow kitty
stow rofi
stow tmux
stow vim
stow X
stow zsh

# update keymap
xmodmap ~/.Xmodmap
