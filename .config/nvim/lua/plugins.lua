return {
    'matsuuu/pinkmare',
    'nvim-treesitter/nvim-treesitter',
    'tpope/vim-commentary',
    'tpope/vim-fugitive',
    'vim-airline/vim-airline',
    'vim-airline/vim-airline-themes',
    'lervag/vimtex',
    {
        'iamcco/markdown-preview.nvim',
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },
    'preservim/nerdtree',
}
