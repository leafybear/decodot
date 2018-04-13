# README.md

v1.2 2018.4.10
Added configs for BSPWM and SXHKD. Both are up to date with changes in bspwm 0.90 and on.

v1.1 2017.11.26
Decodot and Decotheme scripts added. First two themes added.

v1 2017.11.18
Created Readme and first version of dots repo. It works with STOW for now, but I'm planning something better. You'll see.

## Who it's for
I aim to make it easy to use this folder as a command-line bootstrap. So, its for cli fiends and beginners alike. Linux and mac are the most compatible at the moment.

## How to use

### DECODOT
Put this project's folder wherever you want. Export an environment variable for the location.

	export DOTDIR=/home/amy/dots

Then run `decodot` from the bin directory. You can create links to any, some, or ALL of the included app configs.

### DECOTHEME
Some of the config files in this project are linked to the colors/ directory for color values. The current theme in colors is linked to `current`.

* i3 / bspwm
* vim
* xresources
* wallpaper

Run decotheme to switch theme to one of the themes in the folder.
Current themes included:
* day
* night

## What's Included
Configuration files for:

* shells
    - bash
    - zsh
* x
    - xresources and colors theming
    - urxvt
    - i3wm
    - bspwm
    - sxhkd
    - compton
    - polybar
    - lemonbar
    - conky
    - mpv
* cli apps
    - irssi
    - ranger
    - ncmpcpp
    - mpd
    - tmux
    - vim

