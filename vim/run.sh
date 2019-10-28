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
backup ".config/nvim/coc-settings.json"

ln -s $path/vimrc $HOME/.config/nvim/init.vim
ln -s $path/coc-settings.json $HOME/.config/nvim/coc-settings.json
[[ ! -f "$HOME/.config/nvim/colors/kuroi.vim" && ! -L "$HOME/.config/nvim/colors/kuroi.vim" ]] && ln -s $path/colors/kuroi.vim $HOME/.config/nvim/colors/ || true

wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -O $HOME/.config/nvim/autoload/plug.vim
wget https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim -O $HOME/.config/nvim/autoload/pathogen.vim

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install yarn

sudo apt install fd-find
