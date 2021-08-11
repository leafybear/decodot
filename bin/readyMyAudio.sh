# :::::::::::::::::::::::::::::::::::::::::::
#  Ready My Audio
#  unmute all devices and set volume to 70%
# 
#  A. Bentley (leafybear@icloud.com)
#  edit: 2019
# :. : . : . : . : . : . : . : . : . : . : .:
#!/bin/sh

# unmute all devices
for x in `amixer controls  | grep layback` ; do amixer cset "${x}" on ; done
# set all devices to 70% volume
for x in `amixer controls  | grep layback` ; do amixer cset "${x}" 70% ; done
