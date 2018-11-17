#!/bin/sh

sudo apt-get install vim i3 git stow i3status zsh feh rxvt-unicode-256color tmux rofi automake i3lock xbacklight

#ADD IN YES TO ALL INSTALLATION STUFF

cd ~/Repos

#i3lock-color dependencies
sudo apt-get install libev-dev libxcb-composite0 libxcb-composite0-dev libxcb-xinerama0 libxcb-randr0 libxcb-xinerama0-dev libxcb-xkb-dev libxcb-image0-dev libxcb-util-dev libxkbcommon-x11-dev libjpeg-turbo8-dev libpam0g-dev

#i3lock-color
git clone https://github.com/PandorasFox/i3lock-color.git 
cd i3lock-color
autoreconf -i && ./configure && make

#i3lock-fancy
cd ..
sudo apt-get install imagemagick util-linux


#i3 dependencies
#add PPA
#clone i3-gaps repo

#Neofetch
git clone https://github.com/dylanaraps/neofetch
cd neofetch
make install

#Install stuff I use
sudo apt-get install atom scrot cmatrix 

#clone oh my zsh and make
#download zsh theme
#stow everything

#install write
#wget the tar
sudo apt install libqt5widgets5 libqt5network5 libqt5svg5

