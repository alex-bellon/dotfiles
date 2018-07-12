export ZSH=/home/alex/.oh-my-zsh #point to where oh my zsh is

ZSH_THEME="bullet-train" #theme

alias python="python3"
alias telegram="/opt/Telegram/Telegram"

alias accio="sudo apt-get install"
alias c="clear"
alias scrot='scrot ~/Pictures/scrots/%b-%d-%H:%M.png'
alias x="bye"
alias matrix="cmatrix"
alias shutdown="shutdown -h now"

alias power="sudo vim /etc/systemd/logind.conf"
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias tmux="vim ~/.tmux.conf"
alias config="vim ~/.i3/config"
alias status="vim ~/.i3statusbar.conf"
alias resources="vim ~/.Xresources"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

export PATH="${PATH}:${HOME}/.local/bin/"

if [[ ! $TERM =~ screen ]]; then 
    exec tmux #load tmux automatically
fi
