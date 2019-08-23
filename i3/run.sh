#!/bin/bash
set -euo pipefail

path=$(cd "$(pwd)/$(dirname $0)" && pwd)

mkdir -p $HOME/.config
mkdir -p $HOME/.config/i3
 
[[ -f "$HOME/.xinitrc" || -L "$HOME/.xinitrc" ]] && mv $HOME/.xinitrc $HOME/.xinitrc.old
[[ -f "$HOME/.config/i3/config" || -L "$HOME/.config/i3/config" ]] && mv $HOME/.config/i3/config $HOME/.config/i3/config.old
[[ -f "$HOME/.config/i3/i3blocks.conf" || -L "$HOME/.config/i3/i3blocks.conf" ]] && mv $HOME/.config/i3/i3blocks.conf $HOME/.config/i3/i3blocks.conf.old

ln -s $path/xinitrc $HOME/.xinitrc
ln -s $path/config $HOME/.config/i3/
ln -s $path/i3blocks.conf $HOME/.config/i3/
