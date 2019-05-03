export ZSH=/home/alex/.oh-my-zsh #point to where oh my zsh is
#source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

ZSH_THEME="punctual"

###################
# COMMAND ALIASES #
###################

alias c="clear"
alias car="cat"
alias f="fzf"
alias h="cd"
alias lock="gnome-screensaver-command -l"
alias ls="ls -a --color=auto"
alias nf="neofetch"
alias scrot='scrot ~/Pictures/scrots/%b-%d-%H:%M:%S.png'
alias shutdown="shutdown -h now"
alias spr="sudo pacman -R"
alias sps="sudo pacman -S"
alias udpate="sudo pacman -Syu"
alias x="bye"
alias ..="cd .."

#####################
# DIRECTORY ALIASES #
#####################

alias ccdc="cd ~/GitHub/CCDC"
alias df="cd ~/Dotfiles"
alias dl="cd ~/Downloads"
alias gh="cd ~/GitHub"
alias graphics="cd ~/Classes/CS378H"
alias isss="cd ~/GitHub/isss-challenges"
alias netsec="cd ~/Classes/CS361S"
alias notes="cd ~/GitHub/notes"
alias rp="cd ~/Repos/"
alias rs="cd ~/GitHub/cybersecurity-resources"
alias ta="cd ~/Classes/CS361-TA"
alias tl="cd ~/GitHub/ctf-tools"
alias wiki="cd ~/GitHub/wikipedia"
alias wp="cd ~/GitHub/ctf-writeups-private"

###################
# DOTFILE ALIASES #
###################

alias config="vim ~/.config/i3/config"
alias defaults="vim ~/.Xdefaults"
alias gconfig="vim ~/.gitconfig"
alias in="vim ~/Dotfiles/scripts/pacman.sh"
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
alias gy="git pull"

################
# PROG ALIASES #
################

alias charles="~/Repos/charles/bin/charles"
alias eclipse="~/eclipse/eclipse"
alias matrix="cmatrix"
alias metasploit="msfconsole"
alias notion="~/Repos/notion-app/notion-app"
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

#update colors and lockscreen with new wallpaper
theme() {
    wal -i ~/Pictures/$1
#    mantablockscreen -i ~/Pictures/$1
#    #python3 ~/Repos/wal_steam.py -w
}

#ls every time you cd
cd() { builtin cd "$@" && ls -a --color=auto; }

###########
# PLUGINS #
###########

plugins=(
  colored-man-pages
  #fzf
  git
  #vi-mode
  #zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

export VISUAL=vim
export EDITOR="$VISUAL"
export PATH="${PATH}:${HOME}/.local/bin/"

eval $(thefuck --alias fuck)
eval $(thefuck --alias FUCK)

unalias grv
