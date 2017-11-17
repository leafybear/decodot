#!/bin/bash

export EDITOR="vim"
export PATH=$PATH
export PATH=$HOME/Dropbox/scripts:$HOME/.local/bin:$HOME/.bins:$HOME/Downloads/bin:$PATH
export HISTCONTROL=ignoredups

# Keep line length same as window
shopt -s checkwinsize

# my settings
source $HOME/.bash/lscolors
source $HOME/.bash/alias
source $HOME/.bash/prompt

# tab completion menu
#bind 'set show-all-if-ambiguous on'
#bind 'TAB:menu-complete'

# TMUX
# if not inside a tmux session, and if no session is started, start a new session
#if which tmux >/dev/null 2>&1; then
#    test -z "$TMUX" && (tmux attach || tmux new-session)
#fi
