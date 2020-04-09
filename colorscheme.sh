#!/bin/bash

set -e

[[ -z "$1" ]] && echo "colorscheme not specified" && exit
[[ $1 == "l" ]] && COLORSCHEME="light"
[[ $1 == "d" ]] && COLORSCHEME="dark"

sed -ri "s/(solarized\.)[a-z]{4,5}/\1$COLORSCHEME/" ~/.Xresources
sed -ri "s/(set background=)[a-z]{4,5}/\1$COLORSCHEME/" ~/.vimrc
sed -ri "s/(solarized-)[a-z]{4,5}/\1$COLORSCHEME/" ~/.taskrc
xrdb -load ~/.Xresources
