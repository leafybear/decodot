# README.md

* Decodot is a symlink farmer
* Decotheme is a color theme swapper for config files

This is also Leafybear's dotfiles repo. Bonus files! Feel free to delete anything you don't want with wild abandon. Or use them. Whatever.

The only files you need are `decodot` and `decotheme` - plus a folder to store dot files in.

## Who it's for
I aim to make it easy to use this folder as a command-line bootstrap. So, its for cli fiends and beginners alike. Linux and mac are the target environments.

## How to use

### DECODOT
Put this project's folder wherever you want. Export an environment variable for the location.

	export DOTDIR=/home/amy/dots

Then run `decodot` from the bin directory inside DOTDIR. You can create links to any, some, or ALL of the included app configs. You need to invoke python3 specifically for the scripts to run correctly. YMMV.

For example, to link all of the folders.

	python3 decodot.py l ALL

To link just zsh and vim:

	python3 decodot.py l zsh vim

To remove all the links:

	python3 decodot.py r ALL

There are two scripts inside `bin` to tailor linking for mac or linux (macDots.sh and linuxDots.sh). I don't have the same dot files on each system so I needed a quick way to pick just mac/linux configs.

### DECOTHEME
Some of the config files (polybar, bspwm, kitty, rofi, nvim) in my dot files are linked to the deco-themes/ directory for color values.

Run _decotheme_ to switch theme to one of the themes in the folder.

	python3 decotheme.py day

To set the theme and use the included wallpaper:

	python3 decotheme.py w day

Current themes:
* day
* night
* neonGods

## Changes

Update 2022.03.06
Long overdue clean-up of polybar and dot folder organisation.

Update 2020.11.21
Many config changes to suit the display/desktop combo I'm using. Also updated the folder structure for decotheme to be simpler to understand and use. I'm using these configs on 3 systems right now, and they translate really well to multiple places.

v1.3 2020.03.01
Shell config changes.

v1.2 2018.4.10
Added configs for BSPWM and SXHKD. Both are up to date with changes in bspwm 0.90 and on.

v1.1 2017.11.26
Decodot and Decotheme scripts added. First two themes added.

v1 2017.11.18
Created Readme and first version of dots repo. It works with STOW for now, but I'm planning something better. You'll see.
