# Path to your oh-my-zsh installation.
export ZSH=/home/alex/.oh-my-zsh

ZSH_THEME="bullet-train"

alias x="bye"
alias c="clear"
alias cancer="ssh abellon@cancer.cs.utexas.edu"
alias ls="ls -a"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

if command -v tmux>/dev/null; then
  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
fi
