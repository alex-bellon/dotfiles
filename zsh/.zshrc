if [ "$TMUX" = "" ]; then tmux; fi

export ZSH=~/.oh-my-zsh #point to where oh my zsh is
export TERM='tmux'
export COLORTERM='tmux-256color'

bindkey  "^[[1~"   beginning-of-line # Home
bindkey  "^[[4~"   end-of-line # End
bindkey  "^H"      backward-kill-word

ZSH_THEME="punctual"

xmodmap ~/.Xmodmap

xset s off
xset -dpms

###################
# COMMAND ALIASES #
###################

alias c="clear"
alias car="cat"
alias f="fzf"
alias h="cd"
alias lock="gnome-screensaver-command -l"
alias la="ls -a"
alias ll="ls -lh"
alias lla="ls -lha"
alias nf="neofetch"
alias scrot='scrot ~/Pictures/scrots/%b-%d-%H:%M:%S.png'
alias shutdown="shutdown -h now"
alias spr="sudo pacman -R"
alias sps="sudo pacman -S"
alias t1="tree . -L 1"
alias t2="tree . -L 2"
alias t3="tree . -L 3"
alias timezone="cp /usr/share/zoneinfo/America/Chicago /etc/localtime"
alias update="sudo pacman -Syu"
alias x="bye"
alias ..="cd .."

#####################
# DIRECTORY ALIASES #
#####################

# Classes
alias security="cd ~/Classes/security"
alias crypto="cd ~/Classes/crypto"

alias sys="cd ~/Classes/syslunch"
alias sec="cd ~/Classes/seclunch"
alias pl="cd ~/Classes/pl"
alias emb="cd ~/Classes/embsyslunch"

alias aero="cd ~/GitHub/aero"
alias brain="cd ~/GitHub/brain"
alias cl="cd ~/Classes/"
alias cs101="cd ~/GitHub/CS101"
alias df="cd ~/Dotfiles"
alias dl="cd ~/Downloads"
alias gh="cd ~/GitHub"
alias notes="cd ~/GitHub/notes"
alias phd="cd ~/GitHub/phd"
alias rp="cd ~/Repos/"
alias rs="cd ~/GitHub/cybersecurity-resources"
alias site="cd ~/GitHub/website"
alias til="cd ~/GitHub/til"
alias tl="cd ~/GitHub/ctf-tools"
alias tslim="cd ~/GitHub/tslim-re"
alias wiki="cd ~/GitHub/wikipedia"
alias wp="cd ~/GitHub/ctf-writeups-private"

###################
# DOTFILE ALIASES #
###################

alias config="vim ~/.config/i3/config"
alias gconfig="vim ~/.gitconfig"
alias pm="vim ~/Dotfiles/scripts/pacman.sh"
alias power="sudo vim /etc/systemd/logind.conf"
alias rc="vim ~/.config/awesome/rc.lua"
alias resources="vim ~/.Xresources"
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

alias matrix="cmatrix"
alias metasploit="msfconsole"
alias python="python3"
alias telegram="~/Repos/Telegram/Telegram"

###############
# SSH ALIASES #
###############

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
  git
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

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

