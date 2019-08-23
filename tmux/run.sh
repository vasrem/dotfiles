#!/bin/bash
set -euo pipefail

path=$(cd "$(pwd)/$(dirname $0)" && pwd)
 
mkdir -p $HOME/.tmux
mkdir -p $HOME/.tmux/plugins

rm -rf $HOME/.tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm

[[ -f "$HOME/.tmux.conf" || -L "$HOME/.tmux.conf" ]] && mv $HOME/.tmux.conf $HOME/.tmux.conf.old
[[ -f "$HOME/.tmux.conf" || -L "$HOME/.tmux.conf" ]] && mv $HOME/.tmux.conf $HOME/.tmux.conf.old

ln -s $path/tmux.conf $HOME/.tmux.conf
