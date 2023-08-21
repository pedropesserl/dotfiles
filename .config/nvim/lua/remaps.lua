vim.keymap.set("n", "K", ":-7<CR>")
vim.keymap.set("n", "J", ":+7<CR>")

vim.keymap.set("n", "<A-j>", ":m+<CR>==")
vim.keymap.set("n", "<A-k>", ":m-2<CR>==")
vim.keymap.set("v", "<A-j>", ":m '>+<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<A-K>", ":m-8<CR>==")
vim.keymap.set("n", "<A-J>", ":m+7<CR>==")
vim.keymap.set("v", "<A-K>", ":m '<-8<CR>gv=gv")
vim.keymap.set("v", "<A-J>", ":m '>+7<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("v", "<C-y>", "\"+y")
vim.keymap.set("n", "nt", ":NERDTree<CR>")
