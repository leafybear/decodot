# :::::::::::::::::::::::::::::::::::::::::::
#  Deco-Dot
#  symlink farmer for dot files
# 
#  A. Bentley (leafybear@icloud.com)
#  edit: 2017
# :. : . : . : . : . : . : . : . : . : . : .:
#!/usr/bin/python

import os, sys

# handle arguments my way
args = sys.argv
del args[0]

def usage(error):
	print()
	print(error)
	print("------------------------------------")
	print("DECODOT - the dotfile symlink farmer")
	print("examples:")
	print("   $ decodot l bash     :create dotfile links for bash config files")
	print("   $ decodot r ALL      :rm all dotfile symlinks")
	print("usage: decodot [l/r] nameOfApp ..")
	print("flags:")
	print("	  r     remove links")
	print("	  l     create symlinks")
	print("	  ALL   perform on every folder in dots")
	print()
	sys.exit()

## check environment variable
if "DOTDIR" in os.environ:
	dotdir = os.environ["DOTDIR"]
else:
	usage("DOTDIR env variable isn't defined.")
#    dotdir = input ("Where should I look for dotfiles? ")

## check folder and dotwhere exist
if not os.path.isdir(dotdir):
	usage(dotdir+" doesn't exist.")

## check / get args
if len(args) < 2:
	usage("Too few arguments.")
do = args.pop(0)
if do != "r" and do != "l":
	usage("Bad arguments.")

if args[0] == "ALL":
	folders = [f.name for f in os.scandir(dotdir) if f.is_dir() ]
else:
	folders = args

### DO SOMETHING
for folder in folders:

	dotwhere = dotdir + "/" + folder + "/dotwhere"
	if not os.path.exists(dotwhere):
		print(dotwhere+" doesn't exist.")
	else:
		## PROCEED
		with open(dotwhere) as fp:
			for line in fp:
				original, link = line.split("\t")
				if original == ".":
					original = dotdir + "/" + folder
				else:
					original = dotdir + "/" + folder + "/" + original
				link =link.rstrip() # remove newline from link

				if do == "l":
					parent, target = os.path.split(link)
					if not os.path.exists(parent):
						os.system("mkdir -p "+parent)
					os.system("ln -sfn \""+original+"\" "+link)
					log = "Linking  "+link+"  --to-->  "+original
					print(log)
				else:
					os.system("rm "+link)
					print("Removed  "+link)
