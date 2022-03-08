# README.md

* Decodot is a symlink farmer
* Decotheme is a color theme swapper for config files

You can use these scripts alone or together. If you like to change your color scheme a lot, decotheme makes it easier to swap out config files.

This is also Leafybear's dotfiles repo. Bonus files! Use what you want and delete anything else with wild abandon. 😺

The only files you need are `decodot` and `decotheme` - plus a folder to store dot files in.

#### Who it's for
I aim to make it easy to use this folder as a command-line bootstrap. So, its for cli fiends and beginners alike. Linux and mac are the target environments.


## DECODOT
Example directory structure:

	decodot folder/
		decodot.py
		kitty/
			kitty.conf
			dotwhere

Each config group (probably per app) has a folder with a `dotwhere` inside that tells decodot where to make the symlinks in your actual $HOME. In this example, the `dotwhere` for Kitty reads

	 .	$HOME/.config/kitty

It tells the decodot script to make a symlink between this folder and `$HOME/.config/kitty`. So when you look inside `$HOME/.config` you would see
	
	kitty -> /home/leafybear/dots/kitty

### How to use

Put this project's folder wherever you want. Export an environment variable for the location.

	export DOTDIR=/home/leafybear/dots

Then run `decodot` from the bin directory inside DOTDIR. You can create links to any, some, or ALL of the included app configs. You need to invoke python3 specifically for the scripts to run correctly. YMMV.

For example, to link all of the folders.

	python3 decodot.py l ALL

To link just zsh and vim:

	python3 decodot.py l zsh vim

To remove all the links:

	python3 decodot.py r ALL

There are two scripts inside `bin` to tailor linking for mac or linux (macDots.sh and linuxDots.sh). I don't have the same dot files on each system so I needed a quick way to pick just mac/linux configs.

## DECOTHEME
Some of the config files (polybar, bspwm, kitty, rofi, nvim) in my dot files are linked to the deco-themes/ directory for color values.

Run _decotheme_ to switch theme to one of the themes in the folder.

	python3 decotheme.py day

To set the theme and use the included wallpaper:

	python3 decotheme.py w day

Current themes:
* day
* night
* neonGods (this is the only really complete one atm)

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
