#!/bin/bash

SCR=~/.local

{ test -d "/media/${USER}/Kindle/documents" || \
test -d "/media/Kindle/documents" || \
test -d "/Volumes/Kindle/documents" || \
test -d "/mnt/*/documents"; } && kindle="$_"

test -f $SCR/share/booker/log || touch $_
test -f $SCR/share/booker/cache/My\ Clippings.txt || touch $_