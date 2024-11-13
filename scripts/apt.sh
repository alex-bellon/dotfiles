#!/bin/sh

mkdir ~/repos

# Add PPAs
sudo apt-get update

# Common Programs
echo "Installing programs with apt"
sudo apt-get install automake calcurse cmatrix compton curl feh firefox gimp git gtk-chtheme i3wm i3status lxappearance moreutils mpv npm python3 python3-pip python3-setuptools rofi scrot stow thunar thunar-archive-plugin tmux vim xbacklight zsh zsh-syntax-highlighting

# Background
echo "Downloading background"

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

# zsh-autosuggestion
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# =======================
#       i3 things :)
# =======================

if  [[ $1 = "-i" ]]; then
    echo "Installing i3 packages"
    
    # i3-gaps rounded
    cd ~/Repos
    git clone https://github.com/terroo/i3-radius
    cd i3-radius
    ./build.sh

    # i3-quickterm
    pip3 install --user i3ipc
    cd ~/Repos
    git clone https://github.com/lbonn/i3-quickterm.git
    cd i3-quickterm
    sudo cp i3-quickterm /usr/local/bin/i3_quickterm
    cd

    stow i3
fi

#stow everything
cd ~/dotfiles

stow rofi
stow tmux
stow vim
stow X
stow zsh
