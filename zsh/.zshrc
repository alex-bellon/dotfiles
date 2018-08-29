export ZSH=/home/alex/.oh-my-zsh #point to where oh my zsh is

ZSH_THEME="bullet-train" #theme

alias python="python3"
alias telegram="~/Repositories/Telegram/Telegram"

alias accio="sudo apt-get install"
alias c="clear"
alias scrot='scrot ~/Pictures/scrots/%b-%d-%H:%M.png'
alias x="bye"
alias matrix="cmatrix"
alias shutdown="shutdown -h now"
alias cancer="ssh abellon@cancer.cs.utexas.edu"
alias ..="cd .."

alias power="sudo vim /etc/systemd/logind.conf"
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias tmux="vim ~/.tmux.conf"
alias config="vim ~/.i3/config"
alias status="vim ~/.i3statusbar.conf"
alias resources="vim ~/.Xresources"
alias defualts="vim ~/.Xdefaults"

alias gy="git pull"
alias ga="git add --all"
alias gc="git commit"
alias gp="git push"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

export VISUAL=vim
export EDITOR="$VISUAL"
export PATH="${PATH}:${HOME}/.local/bin/"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

if [[ ! $TERM =~ screen ]]; then 
    exec tmux #load tmux automatically
fi
