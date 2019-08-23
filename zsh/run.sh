#!/bin/bash
set -euo pipefail

path=$(cd "$(pwd)/$(dirname $0)" && pwd)

[[ -f "$HOME/.zprofile" || -L "$HOME/.zprofile" ]] && mv $HOME/.zprofile $HOME/.zprofile.old
[[ -f "$HOME/.zshrc" || -L "$HOME/.zshrc" ]] && mv $HOME/.zshrc $HOME/.zshrc.old

ln -s $path/zprofile $HOME/.zprofile
ln -s $path/zshrc $HOME/.zshrc
