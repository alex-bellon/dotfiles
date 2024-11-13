#!/bin/sh

mkdir ~/Repos

# Common Programs
echo "Installing programs with pacman"
sudo pacman -S acpi atom arandr autoconf automake bat bc calcurse colordiff discord dunst fakeroot fcrackzip fd feh fzf firefox flameshot gcc gimp git i3status imagemagick kitty lxappearance make materia-gtk-theme moreutils patch pavucontrol python3 python-pip python-pywal python-setuptools mpv npm nnn steam stow syncthing texlive-most thunar thunar-archive-plugin tig tmux tree ttf-fira-code ttf-comfortaa vim w3m wine xorg-xbacklight xorg-xev xorg-xmodmap yay zathura zathura-pdf-mupdf zsh

# yay
yay -S betterlockscreen bless compton-tryone-git ffsend-bin grv i3-gaps-rounded-git minecraft-launcher nerd-fonts-noto-sans-mono nerd-fonts-hermit otf-fantasque-sans-mono rofi-git slack-desktop spotify ttf-iosevka zijiang-pos58-driverzoom

# Background
echo "Downloading background"
wget https://alex-bellon.com/images/wallpaper.jpg -o ~/Pictures/wallpaper.jpg

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

# zsh-autosuggestion
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# change shell
chsh -s /bin/zsh

#stow everything
cd ~/dotfiles

stow rofi
stow vim
stow X
stow zsh
stow tmux
stow kitty
stow dunst
stow compton
stow libinput
stow atom
stow git
stow zathura
stow desktop_entries

# update xmodmap
xmodmap ~/.Xmodmap
