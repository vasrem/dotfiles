#!/bin/bash
set -euo pipefail

path=$(cd "$(pwd)/$(dirname $0)" && pwd)

source $path/../lib.sh

backup ".zprofile"
backup ".zshrc"

ln -s $path/zprofile $HOME/.zprofile
ln -s $path/zshrc $HOME/.zshrc
