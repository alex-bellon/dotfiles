#!/bin/sh

mkdir ~/Repos

# Common Programs
echo "Installing programs with pacman"
sudo pacman -S acpi atom arandr autoconf automake bat bc bison calcurse chafa colordiff cmatrix cura discord dunst entr fakeroot fcrackzip fd feh figlet fzf firefox flameshot gcc gimp git hexyl i3status imagemagick make moreutils rxvt-unicode otf-fira-code patch python3 python-pip python-pywal python-setuptools mpv npm nnn steam stow telegram-desktop texlive-core thefuck thunar thunar-archive-plugin tig tree ttf-fira-code ttf-comfortaa vim w3m wine xorg-xbacklight xorg-xev xorg-xmodmap yay zathura zathura-pdf-mupdf zsh

# yay
yay -S betterlockscreen bless compton-tryone-git ffsend-bin grv i3-gaps-rounded minecraft-launcher nerd-fonts-noto-sans-mono nerd-fonts-hermit otf-fantasque-sans-mono slack-desktop-dark rofi-git spotify ttf-iosevka vundle-git zijiang-pos58-driver

# Background
echo "Downloading background"
wget https://cs.utexas.edu/~abellon/images/wallpaper.jpg -o ~/Pictures/wallpaper.jpg

# betterlockscreen
git clone https://github.com/pavanjadhaw/betterlockscreen ~/Repos/betterlockscreen
cd ~/Repos/betterlockscreen
cp betterlockscreen ~/.local/bin/

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

# rclone
curl https://rclone.org/install.sh | sudo bash
# zsh-autosuggestion
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# change shell
chsh -s /bin/zsh

#stow everything
cd ~/Dotfiles

stow Firefox
stow neofetch
stow oh-my-zsh
stow rofi
stow Telegram
stow vim
stow X
stow zsh

# update xmodmap
xmodmap ~/.Xmodmap
