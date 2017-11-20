#!/bin/bash

export EDITOR="vim"
export PATH=$PATH
export PATH=$HOME/Dropbox/scripts:$HOME/.local/bin:$HOME/.bins:$HOME/Downloads/bin:$PATH
export HISTCONTROL=ignoredups

# Keep line length same as window
shopt -s checkwinsize

# my settings
source $HOME/.bash/lscolors
source $HOME/.alias
source $HOME/.bash/prompt
