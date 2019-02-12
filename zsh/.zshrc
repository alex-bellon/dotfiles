export ZSH=/home/alex/.oh-my-zsh #point to where oh my zsh is
#source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

ZSH_THEME="punctual"

###################
# COMMAND ALIASES #
###################

alias accio="sudo apt-get install"
alias c="clear"
alias float="i3-msg floating enable"
alias h="cd"
alias lock="mantablockscreen"
alias ls="ls -a --color=auto"
alias nf="neofetch"
alias scrot='scrot ~/Pictures/scrots/%b-%d-%H:%M:%S.png'
alias shutdown="shutdown -h now"
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
alias tl="cd ~/GitHub/ctf-tools"

###################
# DOTFILE ALIASES #
###################

alias config="vim ~/.i3/config"
alias defaults="vim ~/.Xdefaults"
alias gconfig="vim ~/.gitconfig"
alias power="sudo vim /etc/systemd/logind.conf"
alias resources="vim ~/.Xresources"
alias status="vim ~/.i3statusbar.conf"
alias tmux="vim ~/.tmux.conf"
alias vimrc="vim ~/.vimrc"
alias vundle="vim +PluginInstall +qall"
alias zshrc="vim ~/.zshrc"

###############
# GIT ALIASES #
###############

alias gp="git push"
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

#update colors and lockscreen with new wallpaper
theme() {
    wal -i ~/Pictures/$1
    mantablockscreen -i ~/Pictures/$1
    #python3 ~/Repos/wal_steam.py -w
}

# git commit
gc() { builtin git commit -m "$@" }

#make directory and cd into it
mcd (){
  builtin mkdir $1
  cd $1
}

#ls every time you cd
cd() { builtin cd "$@" && ls -a --color=auto; }

###########
# PLUGINS #
###########

plugins=(
  git
  colored-man-pages
  zsh-autosuggestions
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
export PATH=$PATH:/usr/local/bin
export GOPATH=$HOME
export ANDROID_HOME="$HOME/Repos/android-cli"
