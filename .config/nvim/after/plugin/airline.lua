if vim.g.airline_symbols == nil then
    vim.g.airline_symbols = {}
end

vim.cmd('let g:airline_symbols.linenr = ""')
vim.cmd('let g:airline_symbols.colnr = ":"')

vim.api.nvim_create_autocmd({"User"}, {
    pattern = "AirlineAfterInit",
    command = "let g:airline_section_z = airline#section#create([\'%3p%%  \',\'linenr\',\'colnr\'])"
})

vim.api.nvim_create_autocmd({"VimEnter"}, {
    pattern = "*",
    command = "AirlineTheme violet",
})
