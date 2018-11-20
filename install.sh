#!/bin/sh

# Common Programs
sudo apt-get install vim i3 git stow i3status zsh feh rxvt-unicode-256color tmux rofi automake i3lock xbacklight atom scrot cmatrix

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

# i3lock-fancy
cd ~/Repos/i3lock-fancy
sudo apt-get install imagemagick util-linux


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
sudo add-apt-repository -u ppa:snwh/ppa
sudo apt-get install paper-icon-theme

#clone oh my zsh and make
#download zsh theme
#stow everything


#BootISO
git clone https://github.com/jsamr/bootiso.git
cd bootiso/
chmod +x bootiso

#install write
#wget the tar
sudo apt install libqt5widgets5 libqt5network5 libqt5svg5

