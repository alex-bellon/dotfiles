#!/bin/sh

mkdir ~/Repos

# Add PPAs
sudo apt-get update

# Common Programs
echo "Installing programs with apt"
sudo apt-get install automake calcurse cmatrix compton curl feh firefox gimp git gtk-chtheme lxappearance moreutils mpv npm python3 python3-pip python3-setuptools rxvt-unicode-256color scrot stow thunar thunar-archive-plugin tmux vim xbacklight zsh zsh-syntax-highlighting

# Background
echo "Downloading background"
wget https://cs.utexas.edu/~abellon/images/background.png -o ~/Pictures/background.png

# Docker
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

# Materia Theme
echo "Installing Materia theme"
cd ~/Repos/
wget -qO - https://github.com/nana-4/materia-theme/archive/master.tar.gz | tar xz
cd materia-theme-master
sudo ./install.sh
cd

# Neofetch
echo "Installing neofetch"
cd ~/Repos/
git clone https://github.com/dylanaraps/neofetch
cd neofetch
make install
cd

# rclone
curl https://rclone.org/install.sh | sudo bash

# vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

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
cd ~/Dotfiles

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
