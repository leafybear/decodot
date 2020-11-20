#!/bin/sh
# ucode: Print valid unicode characters from given code points
# usage: ucode N  - where `N` is a glyph code
# Accepts multiple arguments

for CODE in $@; do
	/usr/bin/printf "%s - \u$CODE\n" $CODE
done

exit $?
