vim.opt.number = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.scrolloff = 8

vim.opt.termguicolors = true

vim.opt.updatetime = 50

vim.g.loaded_matchparen = false

vim.opt.path = vim.opt.path + "/usr/include/c++/*"
vim.opt.path = vim.opt.path + "/usr/include/x86_64-linux-gnu/"
vim.opt.path = vim.opt.path + "/usr/lib/gcc/x86-64-linux-gnu/9/include"

vim.opt.hlsearch = false
vim.opt.foldmethod = "indent"
-- vim.cmd([[
--     au BufRead * normal zR
-- ]])
vim.api.nvim_create_autocmd({'BufEnter'}, {command = "normal zR"})
