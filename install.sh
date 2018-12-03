#!/bin/sh

mkdir ~/Repos

# Common Programs
echo "Installing programs with apt"
sudo apt-get install vim i3 git stow i3status zsh feh rxvt-unicode-256color tmux rofi automake xbacklight atom scrot cmatrix python3 Firefox npm

# Background
echo "Downloading background"
wget https://cs.utexas.edu/~abellon/images/background.png -o ~/Pictures/background.png

# BootISO
echo "Installing BootISO"
cd ~/Repos/
git clone https://github.com/jsamr/bootiso.git
cd bootiso/
chmod +x bootiso

# i3 dependencies
# add PPA
# clone i3-gaps repo

# i3lock-color
echo "Installing i3lock-color"
sudo apt-get install libev-dev libxcb-composite0 libxcb-composite0-dev libxcb-xinerama0 libxcb-randr0 libxcb-xinerama0-dev libxcb-xkb-dev libxcb-image0-dev libxcb-util-dev libxkbcommon-x11-dev libjpeg-turbo8-dev libpam0g-dev #dependecies
cd ~/Repos/
git clone https://github.com/PandorasFox/i3lock-color.git
cd i3lock-color
autoreconf -i && ./configure && make
cd x86_64-pc-linux-gnu
sudo cp i3lock /usr/local/bin

# Materia Theme
echo "Installing Materia theme"
cd ~/Repos/
wget -qO - https://github.com/nana-4/materia-theme/archive/master.tar.gz | tar xz
cd materia-theme-master
sudo ./install.sh

# Mantablockscreen
echo "Installing Mantablockscreen"
cd ~/Repos/
git clone https://github.com/reorr/mantablockscreen
cd mantablockscreen
./mantablockscreen -i ~/Pictures/background.png

# Neofetch
echo "Installing neofetch"
cd ~/Repos/
git clone https://github.com/dylanaraps/neofetch
cd neofetch
make install

# clone oh my zsh and make
# download zsh theme

# Paper Icons
echo "Installing Paper icons"
sudo add-apt-repository ppa:snwh/ppa
sudo apt-get update
sudo apt-get install paper-icon-theme

# pywal
echo "Installing pywal"
sudo pip3 install pywal

# Install Telegram

# wal_steam
echo "Installing wal_steam"
cd ~/Repos/
git clone https://github.com/kotajacob/wal_steam.git

#stow everything
stow Firefox
stow i3
stow neofetch
stow oh-my-zsh
stow rofi
stow Steam
stow Telegram
stow Thunar
stow tmux
stow vim
stow X
stow zsh
