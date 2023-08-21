function skeleton(file)
    if file == "c" then
        vim.cmd('0r ~/.config/nvim/skeletons/c')
    elseif file == "texarticle" then
        vim.cmd('0r ~/.config/nvim/skeletons/texarticle')
    elseif file == "cmakefile" then
        vim.cmd('0r ~/.config/nvim/skeletons/cmakefile')
    end
    -- remover última linha em branco
    vim.cmd('normal! G')
    vim.cmd('normal! dd')
    vim.cmd('normal! gg')
end

vim.api.nvim_create_user_command('C', 'lua skeleton("c")', {})
vim.api.nvim_create_user_command('Tex', 'lua skeleton("texarticle")', {})
vim.api.nvim_create_user_command('Make', function(opts)
    skeleton("cmakefile")
    vim.cmd('%s/nome_do_projeto/' .. opts.fargs[1] .. '/g')
end, {nargs = 1})
