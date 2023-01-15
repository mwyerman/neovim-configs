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

require("lazy").setup({
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below
  "nvim-lua/popup.nvim", -- An implementation of the Popup API from vim in Neovim
  "nvim-lua/plenary.nvim", -- Useful lua functions used ny lots of plugins
  "windwp/nvim-autopairs", -- auto pair completion
  "numToStr/Comment.nvim", -- commenting support
  "kyazdani42/nvim-web-devicons", -- icons
  "kyazdani42/nvim-tree.lua", -- nvim tree
  "akinsho/bufferline.nvim", -- buffer (tab) line
  "moll/vim-bbye", -- buffer delete doesn't mess up windows
  "nvim-lualine/lualine.nvim", -- bottom status bar
  "akinsho/toggleterm.nvim", -- toggleable terminal window
  "ahmedkhalf/project.nvim", -- project management
  "lewis6991/impatient.nvim", -- speed optimization using caching
  "lukas-reineke/indent-blankline.nvim", -- indentation guides
  "goolord/alpha-nvim", -- start screen
  "folke/which-key.nvim",
  "karb94/neoscroll.nvim", -- smooth scrolling
  "simrat39/symbols-outline.nvim", -- symbols tree
  "pianocomposer321/yabs.nvim", -- build configurations
  "phaazon/hop.nvim", -- quick navigation
  "danymat/neogen", -- docstring generator
  "folke/trouble.nvim", -- nicer diagnostics/quickfix menu

  "github/copilot.vim",


  -- tokyo night colorscheme
  "folke/tokyonight.nvim",

  -- catppuccin colorscheme
  {"catppuccin/nvim", name = "catppuccin"},

  -- onenord colorscheme
  "rmehri01/onenord.nvim",

  -- github colorscheme
  "projekt0n/github-nvim-theme",

  -- oxocarbon colorscheme
  "B4mbus/oxocarbon-lua.nvim",

  -- cmp autocomplete
  "hrsh7th/nvim-cmp", -- base plugin
  "hrsh7th/cmp-buffer", -- buffer completions
  "hrsh7th/cmp-path", -- path completions
  "hrsh7th/cmp-cmdline", -- cmdline completions
  "saadparwaiz1/cmp_luasnip", -- snipped completions
  "hrsh7th/cmp-nvim-lsp", -- lsp
  "hrsh7th/cmp-nvim-lsp-signature-help", -- lsp signatures
  "hrsh7th/cmp-nvim-lua", -- nvim source

  -- snippets
  "L3MON4D3/LuaSnip", -- snippet engine
  "rafamadriz/friendly-snippets", -- additional snippets

  -- lsp
  {
    "williamboman/mason.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "williamboman/mason-lspconfig.nvim",
      "jose-elias-alvarez/null-ls.nvim",
    }
  },
  "antoinemadec/FixCursorHold.nvim", -- fixes lsp doc highlighting

  "glepnir/lspsaga.nvim", -- LSP Saga interface

  -- telescope
  "nvim-telescope/telescope.nvim",
  "nvim-telescope/telescope-ui-select.nvim",
  "m-demare/hlargs.nvim", -- argument highlighting

  -- treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate", -- update treesitter automatically
  },
  "JoosepAlviste/nvim-ts-context-commentstring", -- comment.nvim treesitter support

  -- window resizing
  {
    "anuvyklack/windows.nvim",
    dependencies = {
      "anuvyklack/middleclass",
      "anuvyklack/animation.nvim",
    },
  },

  -- git
  "lewis6991/gitsigns.nvim",
  "TimUntersberger/neogit",
  {
    "sindrets/diffview.nvim",
    dependencies = {
      "kyazdani42/nvim-web-devicons",
      "nvim-lua/plenary.nvim",
    }
  },
})
