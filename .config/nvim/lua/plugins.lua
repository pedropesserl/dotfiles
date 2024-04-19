vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'matsuuu/pinkmare'
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use 'tpope/vim-commentary'
    use 'tpope/vim-fugitive'
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use 'lervag/vimtex'
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
    use 'preservim/nerdtree'
end)
