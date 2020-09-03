export ZSH=~/.oh-my-zsh #point to where oh my zsh is

ZSH_THEME="punctual"

wal -i ~/Pictures/wallpaper.jpg > /dev/null

###################
# COMMAND ALIASES #
###################

alias batt='upower -i /org/freedesktop/UPower/devices/battery_BAT0| grep -E "state|to\ full|percentage"'
alias c="clear"
alias car="cat"
alias f="fzf"
alias h="cd"
alias lock="gnome-screensaver-command -l"
alias ls="ls -a"
alias nf="neofetch"
alias scrot='scrot ~/Pictures/scrots/%b-%d-%H:%M:%S.png'
alias shutdown="shutdown -h now"
alias spr="sudo pacman -R"
alias sps="sudo pacman -S"
alias t1="tree . -L 1"
alias t2="tree . -L 2"
alias t3="tree . -L 3"
alias timezone="cp /usr/share/zoneinfo/America/Chicago /etc/localtime"
alias udpdate="sudo pacman -Syu"
alias x="bye"
alias ..="cd .."

#####################
# DIRECTORY ALIASES #
#####################

# Classes
alias chem="cd ~/Classes/CH301-chemistry"
alias con="cd ~/Classes/CS349-contemporary-issues"
alias jazz="cd ~/Classes/MUS307-jazz-appreciation"
alias con="cd ~/Classes/CS358H-quantum"

alias ccdc="cd ~/GitHub/CCDC"
alias cl="cd ~/Classes/"
alias cs101="cd ~/GitHub/CS101"
alias df="cd ~/Dotfiles"
alias dl="cd ~/Downloads"
alias gh="cd ~/GitHub"
alias isss="cd ~/GitHub/isss-challenges/2020/fall"
alias notes="cd ~/GitHub/notes"
alias otw="cd ~/GitHub/ctf-writeups/Wargames/overthewire"
alias rp="cd ~/Repos/"
alias rs="cd ~/GitHub/cybersecurity-resources"
alias site="cd ~/GitHub/website"
alias tl="cd ~/GitHub/ctf-tools"
alias wiki="cd ~/GitHub/wikipedia"
alias wp="cd ~/GitHub/ctf-writeups-private"

###################
# DOTFILE ALIASES #
###################

alias config="vim ~/.config/i3/config"
alias defaults="vim ~/.Xdefaults"
alias gconfig="vim ~/.gitconfig"
alias pm="vim ~/Dotfiles/scripts/pacman.sh"
alias power="sudo vim /etc/systemd/logind.conf"
alias rc="vim ~/.config/awesome/rc.lua"
alias resources="vim ~/.Xresources"
alias tmux="vim ~/.tmux.conf"
alias vimrc="vim ~/.vimrc"
alias vundle="vim +PluginInstall +qall"
alias zshrc="vim ~/.zshrc"

###############
# GIT ALIASES #
###############

alias gp="git push"
alias gr="~/Repos/git-summary/git-summary"
alias gs="git status"
alias gu="git-summary"
alias gy="git pull"

################
# PROG ALIASES #
################

alias charles="~/Repos/charles/bin/charles"
alias eclipse="~/eclipse/eclipse"
alias matrix="cmatrix"
alias metasploit="msfconsole"
alias python="python3"
alias taizen="~/Repos/taizen/target/release/taizen"
alias telegram="~/Repos/Telegram/Telegram"

###############
# SSH ALIASES #
###############

alias cancer="ssh abellon@cancer.cs.utexas.edu"
alias kali="cd ~/Vagrant/Kali/; vagrant up; vagrant ssh"

#############
# FUNCTIONS #
#############

# auto extract archive files (stolen from https://github.com/ajvb/configfiles)
extract () {
 if [ -f $1 ] ; then
     case $1 in
         *.tar.bz2)   tar xvjf $1 && cd $(echo $1 | sed 's/.tar.bz2//')    ;;
         *.tar.gz)    tar xvzf $1 && cd $(echo $1 | sed 's/.tar.gz//')    ;;
         *.bz2)       bunzip2 $1 && cd $(echo $1 | sed 's/.bz2//')    ;;
         *.rar)       unrar x $1 && cd $(echo $1 | sed 's/.rar//')    ;;
         *.gz)        gunzip $1 && cd $(echo $1 | sed 's/.gz//')    ;;
         *.tar)       tar xvf $1 && cd $(echo $1 | sed 's/.tar//')    ;;
         *.tbz2)      tar xvjf $1 && cd $(echo $1 | sed 's/.tbz2//')    ;;
         *.tgz)       tar xvzf $1 && cd $(echo $1 | sed 's/.tgz//')    ;;
         *.zip)       unzip $1 && cd $(echo $1 | sed 's/.zip//')    ;;
         *.Z)         uncompress $1 && cd $(echo $1 | sed 's/.Z//')    ;;
         *.7z)        7z x $1 && cd $(echo $1 | sed 's/.7z//')    ;;
         *)           echo "don't know how to extract '$1'..." ;;
     esac
 else
     echo "'$1' is not a valid file!"
 fi
}

###########
# PLUGINS #
###########

plugins=(
  colored-man-pages
  #fzf
  git
  #vi-mode
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
. ~/.oh-my-zsh/custom/plugins/z/z.sh

export VISUAL=vim
export EDITOR="$VISUAL"
export PATH="${PATH}:${HOME}/.local/bin/"

#eval $(thefuck --alias fuck)
#eval $(thefuck --alias FUCK)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
