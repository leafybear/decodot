pacman -Qu | awk '{ print $1 }' | sed 's/^blender//' | sudo pacman -S -
# There's also the obvious and recommended method of editing /etc/pacman.conf and adding the packages to IgnorePkg = in there.
