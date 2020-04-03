#!/bin/bash

test -f "plaintext-library/bin/booker" || exit
mkdir plaintext-library/library plaintext-library/cache
touch plaintext-library/log plaintext-library/cache/My\ Clippings.txt
test -f "/usr/local/bin/booker" || cp plaintext-library/bin/booker /usr/local/bin/booker
mkdir -p ~/.local/share
mv plaintext-library ~/.local/share/booker
