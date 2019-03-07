#!/bin/sh

mkdir ~/Repos

# Common Programs
echo "Installing programs with apt"
sudo apt-get install calcurse vim i3 gimp git stow i3status zsh feh rxvt-unicode-256color tmux rofi automake xbacklight atom scrot cmatrix python3 Firefox npm mpv w3m

# Background
echo "Downloading background"
wget https://cs.utexas.edu/~abellon/images/background.png -o ~/Pictures/background.png

# BootISO
echo "Installing BootISO"
cd ~/Repos/
git clone https://github.com/jsamr/bootiso.git
cd bootiso/
chmod +x bootiso

# Brave Browser
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key add -

UBUNTU_CODENAME=$( (grep DISTRIB_CODENAME /etc/upstream-release/lsb-release || grep DISTRIB_CODENAME /etc/lsb-release) 2>/dev/null | cut -d'=' -f2 )
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/brave-browser-release-$UBUNTU_CODENAME.list
sudo apt update
sudo apt install brave-browser brave-keyring

# Docker
sudo curl -sSL https://get.docker.com/ | sh
sudo apt-get update && sudo apt-get upgrade

# GIMP Theme
cd ~/Repos
git clone https://github.com/draekko/gimp-cc-themes.git
cd gimp-cc-themes
cp -r Gimp-CC-Theme-Darkest ~/.gimp-2.8/themes

# GTK Theme things
sudo apt-get install lxappearance gtk-chtheme qt4-qtconfig

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
sudo cp i3lock /usr/local/bin/i3lock

#i3-quickterm
pip3 install --user i3ipc
cd ~/Repos
git clone https://github.com/lbonn/i3-quickterm.git
cd i3-quickterm
sudo cp i3-quickterm /usr/local/bin/i3_quickterm

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

# Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Paper Icons
echo "Installing Paper icons"
sudo add-apt-repository ppa:snwh/ppa
sudo apt-get update
sudo apt-get install paper-icon-theme

# pywal
echo "Installing pywal"
sudo pip3 install pywal

# rclone
curl https://rclone.org/install.sh | sudo bash

# Install Telegram

# wal_steam
echo "Installing wal_steam"
cd ~/Repos/
git clone https://github.com/kotajacob/wal_steam.git

# youtube_dl
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl

# zsh-autosuggestion
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

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
