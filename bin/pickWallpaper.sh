# :::::::::::::::::::::::::::::::::::::::::::
#  Pick Wallpaper
#  open a folder as thumbnails and set the marked one as
#  the wallpaper.
# 
#  A. Bentley (leafybear@icloud.com)
#  edit: aug 2021
# :. : . : . : . : . : . : . : . : . : . : .:
#!/bin/sh

sxiv -t -f -r -o ~/wallpaper | xargs -d '\n' feh --bg-fill
