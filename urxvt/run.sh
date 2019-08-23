#!/bin/bash
set -euo pipefail

path=$(cd "$(pwd)/$(dirname $0)" && pwd)

mkdir -p $HOME/.urxvt
mkdir -p $HOME/.urxvt/ext

[[ -f "$HOME/.Xresources" || -L "$HOME/.Xresources" ]] && mv $HOME/.Xresources $HOME/.Xresources.old
[[ -f "$HOME/.urxvt/ext/font-size" || -L "$HOME/.urxvt/ext/font-size" ]] && mv $HOME/.urxvt/ext/font-size $HOME/.urxvt/ext/font-size.old

ln -s $path/Xresources $HOME/.Xresources

wget https://raw.githubusercontent.com/majutsushi/urxvt-font-size/master/font-size -O $HOME/.urxvt/ext/font-size
