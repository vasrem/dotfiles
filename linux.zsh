#!/bin/sh

path=`pwd`

# paths
vim=${HOME}/.vimrc
i3config=${HOME}/.config/i3/config
i3blocks=${HOME}/.config/i3/i3blocks.conf
terminator=${HOME}/.config/terminator/config
gitconfig=${HOME}/.gitconfig

# delete previous paths
rm $vim &>/dev/null
rm $i3config &>/dev/null
rm $i3blocks &>/dev/null
rm $terminator &>/dev/null
rm $gitconfig &>/dev/null

mkdir ${HOME}/.vim/colors &>/dev/null

# Make links
ln -s $path/vim/.vimrc $vim
ln -s $path/i3/config $i3config
ln -s $path/i3/i3blocks.conf $i3blocks
ln -s $path/terminator/config $terminator
ln -s $path/.gitconfig $gitconfig
ln -s $path/vim/solarized.vim ${HOME}/.vim/colors/solarized.vim 

echo "done" 
