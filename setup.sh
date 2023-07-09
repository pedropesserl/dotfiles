#!/bin/bash

FILES=(".bashrc" ".bash_aliases" ".config/nvim/init.vim" ".config/nvim/skeletons/tex_article" ".config/nvim/skeletons/c" ".config/nvim/skeletons/cmakefile" ".vimrc" ".tmux.conf")

for file in ${FILES[@]}; do
    if [ -f $HOME/$file ]; then
        rm $HOME/$file
    fi
    ln $file $HOME/$file
done
