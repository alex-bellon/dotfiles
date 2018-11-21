export ZSH=/home/alex/.oh-my-zsh #point to where oh my zsh is

ZSH_THEME="bullet-train" #theme

################
# PROG ALIASES #
################

alias charles="~/Repos/charles/bin/charles"
alias eclipse="~/eclipse/eclipse"
alias matrix="cmatrix"
alias metasploit="msfconsole"
alias python="python3"
alias telegram="~/Repos/Telegram/Telegram"

###################
# COMMAND ALIASES #
###################

alias accio="sudo apt-get install"
alias c="clear"
alias home="cd"
alias lock="mantablockscreen"
alias scrot='scrot ~/Pictures/scrots/%b-%d-%H:%M.png'
alias shutdown="shutdown -h now"
alias x="bye"
alias ..="cd .."

###############
# SSH ALIASES #
###############

alias cancer="ssh abellon@cancer.cs.utexas.edu"
alias kali="cd ~/Vagrant/Kali/; vagrant up; vagrant ssh"

###################
# DOTFILE ALIASES #
###################

alias config="vim ~/.i3/config"
alias defaults="vim ~/.Xdefaults"
alias power="sudo vim /etc/systemd/logind.conf"
alias resources="vim ~/.Xresources"
alias status="vim ~/.i3statusbar.conf"
alias tmux="vim ~/.tmux.conf"
alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc"

###############
# GIT ALIASES #
###############

alias gy="git pull"
alias gp="git push"
alias ga="git add -A"

#############
# FUNCTIONS #
#############

# git commit
gc() { builtin git commit -m "$@" }

#make directory and cd into it
mcd (){
  mkdir $1
  cd $1
}

#ls every time you cd
cd() { builtin cd "$@" && ls; }

###########
# PLUGINS #
###########

plugins=(
  git
  colored-man-pages
)

source $ZSH/oh-my-zsh.sh

export VISUAL=vim
export EDITOR="$VISUAL"
export PATH="${PATH}:${HOME}/.local/bin/"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

#load tmux automatically
if [[ ! $TERM =~ screen ]]; then
    exec tmux
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/alex/Repos/gcloud/google-cloud-sdk/path.zsh.inc' ]; then source '/home/alex/Repos/gcloud/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/alex/Repos/gcloud/google-cloud-sdk/completion.zsh.inc' ]; then source '/home/alex/Repos/gcloud/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
