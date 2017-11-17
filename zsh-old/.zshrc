HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

export TERM=xterm-256color

setopt autocd extendedglob
bindkey -v

autoload -Uz compinit
compinit

COMPLETION_WAITING_DOTS="true"
unsetopt correctall

zstyle :compinstall filename '$HOME/.zshrc'
zstyle ':completion:*' menu select
setopt completealiases

source $HOME/.lscolors
source $HOME/.zsh/aliases
source $HOME/.zsh/prompts/amy-min

# print out my todo list
[[ -f $HOME/todo ]] && cat $HOME/todo
