if [ "$TMUX" = "" ]; then tmux; fi

export ZSH=~/.oh-my-zsh #point to where oh my zsh is

bindkey  "^[[1~"   beginning-of-line # Home
bindkey  "^[[4~"   end-of-line # End
bindkey  "^H"      backward-kill-word

ZSH_THEME="punctual"

#xmodmap ~/.Xmodmap

#xset s off
#xset -dpms

export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/bin/virtualenv
#source /usr/bin/virtualenvwrapper.sh

###################
# COMMAND ALIASES #
###################

alias c="clear"
alias car="cat"
alias f="fzf"
alias h="cd"
alias lock="gnome-screensaver-command -l"
alias s="exa --group-directories-first"
alias scrot='scrot ~/Pictures/scrots/%b-%d-%H:%M:%S.png'
alias shutdown="shutdown -h now"
alias spr="sudo pacman -R"
alias sps="sudo pacman -S"
alias t1="tree . -L 1"
alias t2="tree . -L 2"
alias t3="tree . -L 3"
alias update="sudo pacman -Syu"
alias x="bye"
alias ..="cd .."

#####################
# DIRECTORY ALIASES #
#####################

# Classes
alias sys="cd ~/Classes/syslunch"
alias sec="cd ~/Classes/seclunch"
alias pl="cd ~/Classes/pl"
alias emb="cd ~/Classes/embsyslunch"

alias aero="cd ~/GitHub/aero"
alias brain="cd ~/GitHub/brain"
alias cl="cd ~/Classes/"
alias df="cd ~/dotfiles"
alias dl="cd ~/Downloads"
alias gh="cd ~/git"
alias phd="cd ~/git/phd"
alias rp="cd ~/repos/"
alias rs="cd ~/git/cybersecurity-resources"
alias site="cd ~/git/website"
alias til="cd ~/git/til"
alias tl="cd ~/git/ctf-tools"
alias tslim="cd ~/git/tslim-re"
alias wiki="cd ~/git/wikipedia"

###################
# DOTFILE ALIASES #
###################

alias config="vim ~/.config/i3/config"
alias gconfig="vim ~/.gitconfig"
alias pm="vim ~/dotfiles/scripts/pacman.sh"
alias power="sudo vim /etc/systemd/logind.conf"
alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc"

###############
# GIT ALIASES #
###############

alias gp="git push"
alias gr="~/repos/git-summary/git-summary"
alias gs="git status"
alias gu="git-summary"
alias gy="git pull"

################
# PROG ALIASES #
################

alias metasploit="msfconsole"
alias python="python3"

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


export WASMTIME_HOME="$HOME/.wasmtime"

export PATH="$HOME/.emacs.d/bin:$PATH"

export PATH="$WASMTIME_HOME/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

echo "cheese"
