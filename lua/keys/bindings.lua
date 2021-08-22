vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.api.nvim_set_keymap('n', '<c-j>', '\\<C-n>', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-k>', '\\<C-p>', { noremap = true })

-- Better line indentation
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true })
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true })

-- Better window navigation
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true })

-- jk or kj to leave insert mode
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true })
vim.api.nvim_set_keymap('i', 'kj', '<Esc>', { noremap = true })

-- code navigation
vim.api.nvim_set_keymap('n', 'gd', 'lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gD', 'lua vim.lsp.buf.declaration()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gr', 'lua vim.lsp.buf.references()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gi', 'lua vim.lsp.buf.implementation()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'K', 'lua vim.lsp.buf.hover()()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', 'lua vim.lsp.buf.signature_help()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-n>', 'lua vim.lsp.diagnostic.goto_prev()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-p>', 'lua vim.lsp.diagnostic.goto_next()<CR>', { noremap = true, silent = true })

-- autoformat
-- TODO
