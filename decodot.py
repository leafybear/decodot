#!/usr/bin/python
##- - - - - - - - - - - - -
##    DECO-DOT
##
##    leafybear 2017
##- - - - - - - - - - - - -

import os, sys


def usage(error):
	print(error)
	print("------------------------------------")
	print("DECODOT - the dotfile symlink farmer")
	print("	usage: decodot [l/r] nameOfApp")
	print("	r	remove links")
	print("	l 	create symlinks")
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
if len(sys.argv) != 3:
	usage("Too few arguments.")

if sys.argv[1] != "r" and sys.argv[1] != "l":
	usage("Bad arguments.")

do = sys.argv[1]
folder = sys.argv[2]
wutwhere = dotdir + "/" + folder + ".wutwhere"
if not os.path.exists(wutwhere):
	usage(wutwhere+" doesn't exist.")

## PROCEED
os.chdir(dotdir)
with open(wutwhere) as fp:
	for line in fp:
		original, link = line.split("\t")
		original = dotdir + "/" + folder + "/" + original

		if do == "l":
			os.system("ln -sf "+original+" "+link)
			print(link + "  ---->  " + original)
		else:
			os.system("rm "+link)
			print("rm  " + link)