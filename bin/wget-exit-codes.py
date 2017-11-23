#!/usr/bin/python
## WGET EXIT CODES

import os

result = os.system("wget -c -N -q --show-progress http://10.0.1.200:8200/MediaItems/4872.mkv")
print(result)