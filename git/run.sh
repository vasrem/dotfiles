#!/bin/bash
set -euo pipefail

path=$(cd "$(pwd)/$(dirname $0)" && pwd)

[[ -f "$HOME/.gitconfig" || -L "$HOME/.gitconfig" ]] && mv $HOME/.gitconfig $HOME/.gitconfig.old
ln -s $path/gitconfig $HOME/.gitconfig
