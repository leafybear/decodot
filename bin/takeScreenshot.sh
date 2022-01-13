# :::::::::::::::::::::::::::::::::::::::::::
#  Take Screenshot
#  get a screenshot with scrot and notify me
# 
#  A. Bentley (leafybear@icloud.com)
#  edit: 2018
# :. : . : . : . : . : . : . : . : . : . : .:
#!/bin/bash

scrot ~/screens/%Y-%m-%d_%H%M%S.png
dunstify -h string:x-dunst-stack-tag:scrot screenshot!
