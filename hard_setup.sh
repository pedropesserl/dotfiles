#!/bin/bash

set -e

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

for file in ${FILES[@]}; do
    if [ -f $HOME/$file ]; then
        rm $HOME/$file
    fi
    ln $file $HOME/$file
done

# download kitty
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

# download neovim
wget https://github.com/neovim/neovim/releases/download/v0.9.5/nvim.appimage

# download packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
