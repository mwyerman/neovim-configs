vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.cmd([[
    inoremap <expr> <c-j> ("\<C-n>")
    inoremap <expr> <c-k> ("\<C-p>")
]])

-- Better line indentation
vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true })
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true })

-- Better window navigation
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true })

-- Buffer controls
vim.api.nvim_set_keymap("n", "}", ":BufferLineCycleNext<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "{", ":BufferLineCyclePrev<cr>", { noremap = true, silent = true })
