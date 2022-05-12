#!/bin/sh

mkdir ~/Repos

# Common Programs
echo "Installing programs with pacman"
sudo pacman -S acpi atom arandr autoconf automake bat bc bison calcurse chafa colordiff cmatrix cura discord dunst entr fakeroot fcrackzip fd feh figlet filezilla fzf firefox flameshot gcc gimp git hexyl i3status imagemagick kitty lxappearance make materia-gtk-theme moreutils neofetch patch pavucontrol python3 python-pip python-pywal python-setuptools mpv npm nnn steam stow syncthing telegram-desktop texlive-most thefuck thunar thunar-archive-plugin tig tmux tree ttf-fira-code ttf-comfortaa vim w3m wine xorg-xbacklight xorg-xev xorg-xmodmap yay zathura zathura-pdf-mupdf zsh

# yay
yay -S betterlockscreen bless compton-tryone-git ffsend-bin grv i3-gaps-rounded-git minecraft-launcher nerd-fonts-noto-sans-mono nerd-fonts-hermit obsidian otf-fantasque-sans-mono rofi-git slack-desktop spotify ttf-iosevka vundle-git zijiang-pos58-driverzoom

# Background
echo "Downloading background"
wget https://alex-bellon.com/images/wallpaper.jpg -o ~/Pictures/wallpaper.jpg

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

# Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
rm -rf ~/.oh-my-zsh/
rm ~/.zshrc

# rclone
curl https://rclone.org/install.sh | sudo bash

# zsh-autosuggestion
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# change shell
chsh -s /bin/zsh

#stow everything
cd ~/Dotfiles

stow neofetch
stow oh-my-zsh
stow rofi
stow Telegram
stow vim
stow X
stow zsh
stow tmux
stow latex
stow kitty
stow dunst
stow compton
stow libinput
stow atom
stow git
stow zathura

# update xmodmap
xmodmap ~/.Xmodmap
