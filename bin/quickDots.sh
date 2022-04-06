#!/bin/sh
# a quick decodot setup script for my linux machines

system=

# Use the correct options on macOS and Linux
if [[ `uname` == Darwin ]]; then
	DOTDIR=$HOME/amy/dots
	system="macOS"
else
	DOTDIR=$HOME/dots
	system="linux"
fi

export DOTDIR=$DOTDIR
cd $DOTDIR

case $system in
	linux)
		python3 decodot.py $1 apps bin bspwm cheat deco-themes dunst git htop kitty mpv neofetch picom polybar qimgv ranger rofi shell sxhkd tmux x nnn nvim gitui
		;;
	macOS)
		python3 decodot.py $1 bin git gitui nvim nnn ranger shell tmux
		;;
	*)
		echo "Couldn't match this system."
		;;
esac
