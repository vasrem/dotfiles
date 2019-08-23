#!/bin/bash
set -euo pipefail

path=$(cd "$(pwd)/$(dirname $0)" && pwd)

source $path/../lib.sh
 
mkdir -p $HOME/.tmux
mkdir -p $HOME/.tmux/plugins

rm -rf $HOME/.tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm

backup ".tmux.conf"

ln -s $path/tmux.conf $HOME/.tmux.conf
