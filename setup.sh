#!/bin/bash

FILES=(
    ".bashrc"
    ".bash_aliases"
    ".config/nvim/init.lua"
    ".config/nvim/lua/functions.lua"
    ".config/nvim/lua/opts.lua"
    ".config/nvim/lua/plugins.lua"
    ".config/nvim/lua/remaps.lua"
    ".config/nvim/after/plugin/airline.lua"
    ".config/nvim/after/plugin/colors.lua"
    ".config/nvim/after/plugin/treesitter.lua"
    ".config/nvim/after/plugin/vimtex.lua"
    ".config/nvim/skeletons/texarticle"
    ".config/nvim/skeletons/c"
    ".config/nvim/skeletons/cmakefile"
    ".config/kitty/kitty.conf"
    ".vimrc"
    ".tmux.conf"
)

if [ -d $HOME/.config/nvim ]; then
    rm -r $HOME/.config.nvim
fi
mkdir -p $HOME/.config/nvim/{lua,after,skeletons}
if [ -d $HOME/.config/kitty ]; then
    rm -r $HOME/.config.nvim
fi
mkdir $HOME/.config/kitty

for file in ${FILES[@]}; do
    if [ -f $HOME/$file ]; then
        rm $HOME/$file
    fi
    ln $file $HOME/$file
done
