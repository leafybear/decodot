HISTFILE=~/.zsh/history
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd nomatch notify
unsetopt beep
bindkey -e
. $HOME/.alias

zstyle :compinstall filename '/home/amy/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit

prompt adam2
