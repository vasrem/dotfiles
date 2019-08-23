#!/bin/bash
set -euo pipefail

path=$(cd "$(pwd)/$(dirname $0)" && pwd)

source $path/../lib.sh

mkdir -p $HOME/.urxvt
mkdir -p $HOME/.urxvt/ext

backup ".Xresources"

ln -s $path/Xresources $HOME/.Xresources

wget https://raw.githubusercontent.com/majutsushi/urxvt-font-size/master/font-size -O $HOME/.urxvt/ext/font-size
