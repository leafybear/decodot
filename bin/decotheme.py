#!/usr/bin/python
##- - - - - - - - - - - - -
##    DECO THEME
##
##    (leafybear) 2017
##		Amy Bentley
##- - - - - - - - - - - - -
import sys, os, random

args = sys.argv
del args[0]

def usage(error):
    print()
    print(error)
    print("------------------------------------")
    print("DECOTHEME - dotfile theme chooser")
    print("usage: decotheme (flags) nameOfTheme")
    print("examples:")
    print("   $ decotheme light     :choose LIGHT theme")
    print("   $ decotheme dark     :choose DARK theme")
    print("   $ decotheme w dark     :choose DARK theme and set wallpaper")
    print("options:")
    print("         w    set the wallpaper from the theme")
    print()
    sys.exit()

## check environment variable
if "DOTDIR" in os.environ:
    dotdir = os.environ["DOTDIR"]
else:
    usage("DOTDIR environment variable not defined.")

## check folder and wutwhere exist
if not os.path.isdir(dotdir):
	usage(dotdir+" doesn't exist.")

## check / get args
if len(args) < 1:
	usage("Too few arguments.")
elif len(args) == 1:
    switch = "none"
    theme = args.pop(0)
else:
    switch = args.pop(0)
    theme = args.pop(0)

theme = dotdir + "/colour/" + theme
link = "$HOME/.theme"

if not os.path.exists(theme):
    usage("Theme '"+theme+"' doesn't exist.")
else:
    os.system("ln -sfn "+theme+" "+link)
    if switch == "w":
        walldir=theme+"/wallpaper"
        if os.path.isdir(walldir):
            walls = [f.path for f in os.scandir(walldir)]
            index = random.randint(0,len(walls))
            os.system("feh --bg-fill "+walls[index])
    os.system("xrdb ~/.Xresources")
    os.system("$DOTDIR/bspwm/bspwmrc")
