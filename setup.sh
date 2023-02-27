#!/bin/bash

FILES=(".bashrc" ".bash_aliases" ".config/nvim/init.vim" ".vimrc")

for file in ${FILES[@]}; do
    if [ -f $HOME/$file ]; then
        rm $HOME/$file
    fi
    ln $file $HOME/$file
done
