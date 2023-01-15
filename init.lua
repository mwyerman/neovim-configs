require 'options'
require 'keymaps'

-- Install Lazy.nvim if not already installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

-- require 'theme.onenord'.init()
--[[ require 'theme.github' ]]
-- require 'theme.catppuccin'.init()
-- require 'theme.oxocarbon'.init()

-- set colorscheme to catppuccin
vim.cmd("colorscheme catppuccin")

require 'lsp'
require 'autocommands'
