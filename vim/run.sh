#!/bin/bash
set -euo pipefail

path=$(cd "$(pwd)/$(dirname $0)" && pwd)

source $path/../lib.sh

mkdir -p $HOME/.config
mkdir -p $HOME/.config/nvim
mkdir -p $HOME/.config/nvim/autoload
mkdir -p $HOME/.config/nvim/bundle
mkdir -p $HOME/.config/nvim/colors
mkdir -p $HOME/.config/nvim/plugged

backup ".config/nvim/init.vim"

ln -s $path/vimrc $HOME/.config/nvim/init.vim
[[ ! -f "$HOME/.config/nvim/colors/kuroi.vim" && ! -L "$HOME/.config/nvim/colors/kuroi.vim" ]] && ln -s $path/colors/kuroi.vim $HOME/.config/nvim/colors/ || true

wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -O $HOME/.config/nvim/autoload/plug.vim
wget https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim -O $HOME/.config/nvim/autoload/pathogen.vim
