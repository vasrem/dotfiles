#!/bin/bash
set -euo pipefail

path=$(cd "$(pwd)/$(dirname $0)" && pwd)

source $path/../lib.sh

mkdir -p $HOME/.config
mkdir -p $HOME/.config/i3
 
backup ".xinitrc"
backup ".config/i3/config"
backup ".config/i3/i3blocks.conf"

ln -s $path/xinitrc $HOME/.xinitrc
ln -s $path/config $HOME/.config/i3/
ln -s $path/i3blocks.conf $HOME/.config/i3/
