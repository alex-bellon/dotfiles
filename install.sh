#!/bin/sh

# Common Programs
sudo apt-get install vim i3 git stow i3status zsh feh rxvt-unicode-256color tmux rofi automake xbacklight atom scrot cmatrix

# Background
wget https://cs.utexas.edu/~abellon/images/background.png -o ~/Pictures/background.png

cd
mkdir Repos

#ADD IN YES TO ALL INSTALLATION STUFF

cd ~/Repos

# i3lock-color dependencies
sudo apt-get install libev-dev libxcb-composite0 libxcb-composite0-dev libxcb-xinerama0 libxcb-randr0 libxcb-xinerama0-dev libxcb-xkb-dev libxcb-image0-dev libxcb-util-dev libxkbcommon-x11-dev libjpeg-turbo8-dev libpam0g-dev

# i3lock-color
cd ~/Repos/
git clone https://github.com/PandorasFox/i3lock-color.git 
cd i3lock-color
autoreconf -i && ./configure && make
cd x86_64-pc-linux-gnu
sudo cp i3lock /usr/local/bin

# Mantablockscreen
cd ~/Repos
git clone https://github.com/reorr/mantablockscreen
cd mantablockscreen
./mantablockscreen -i ~/Pictures/background.png

# i3 dependencies
# add PPA
# clone i3-gaps repo

# Neofetch
cd ~/Repos/
git clone https://github.com/dylanaraps/neofetch
cd neofetch
make install

# Materia Theme
cd ~/Repos/
wget -qO - https://github.com/nana-4/materia-theme/archive/master.tar.gz | tar xz
cd materia-theme-master
sudo ./install.sh

# Paper Icons
sudo add-apt-repository ppa:snwh/ppa
sudo apt-get update
sudo apt-get install paper-icon-theme

#clone oh my zsh and make
#download zsh theme
#stow everything


# BootISO
git clone https://github.com/jsamr/bootiso.git
cd bootiso/
chmod +x bootiso

#install write
#wget the tar
sudo apt install libqt5widgets5 libqt5network5 libqt5svg5

