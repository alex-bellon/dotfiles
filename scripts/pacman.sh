#!/bin/sh

mkdir ~/Repos

# Common Programs
echo "Installing programs with pacman"
sudo pacman -S atom arandr autoconf automake bat bc calcurse chafa colordiff cmatrix cura discord entr fakeroot fcrackzip fd feh figlet fzf firefox flameshot gcc gimp git hexyl i3status i3lock-color imagemagick make rxvt-unicode-256color otf-fira-code patch python3 python-pip python-setuptools mpv npm nnn rofi steam stow telegram-desktop thefuck thunar thunar-archive-plugin tig tree ttf-fira-code vim w3m wine xorg-xbacklight xorg-xev xorg-xmodmap yay zathura zathura-pdf-mupdf zsh

# yay
yay -S bless ffsend-bin grv minecraft-launcher slack-desktop-dark spotify zijiang-pos58-driver

# slack desktop, notion.so, franz, telegram, leonflix, 

# Background
echo "Downloading background"
wget https://cs.utexas.edu/~abellon/images/background.png -o ~/Pictures/wallpaper.png

# betterlockscreen

#    i3lock-color - i3lock fork with additional features( >= 2.11-c )
#    imagemagick - To apply effects to images
#    xdpyinfo, xrandr, bc and feh - To find screen resolution, set custom blur level and wallpaper handling.

git clone https://github.com/pavanjadhaw/betterlockscreen ~/Repos/betterlockscreen
cd ~/Repos/betterlockscreen
cp betterlockscreen ~/.local/bin/

# cheat.sh
curl https://cht.sh/:cht.sh | sudo tee /usr/local/bin/cht.sh
sudo chmod +x /usr/local/bin/cht.sh

# GIMP Theme
cd ~/Repos
git clone https://github.com/draekko/gimp-cc-themes.git
cd gimp-cc-themes
cp -r Gimp-CC-Theme-Darkest ~/.gimp-2.8/themes

# Git Summary
cd ~/Repos
git clone https://github.com/MirkoLedda/git-summary.git
cd git-summary
sudo cp git-summary /usr/local/bin/git-summary

#Leonflix

# Materia Theme
echo "Installing Materia theme"
cd ~/Repos/
wget -qO - https://github.com/nana-4/materia-theme/archive/master.tar.gz | tar xz
cd materia-theme-master
sudo ./install.sh

# Neofetch
echo "Installing neofetch"
sudo pacman -S neofetch

# Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# pywal
echo "Installing pywal"
sudo pacman -S python-pywal

# rclone
curl https://rclone.org/install.sh | sudo bash

# youtube_dl
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl

# zsh-autosuggestion
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#stow everything
stow awesome
stow Firefox
stow neofetch
stow oh-my-zsh
stow rofi
stow Telegram
stow Thunar
stow tmux
stow vim
stow X
stow zsh
