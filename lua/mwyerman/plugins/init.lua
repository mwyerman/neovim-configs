local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use "windwp/nvim-autopairs" -- auto pair completion
  use "numToStr/Comment.nvim" -- commenting support
  use "kyazdani42/nvim-web-devicons" -- icons
  use "kyazdani42/nvim-tree.lua" -- nvim tree
  use "akinsho/bufferline.nvim" -- buffer (tab) line
  use "moll/vim-bbye" -- buffer delete doesn't mess up windows
  use "nvim-lualine/lualine.nvim" -- bottom status bar
  use "akinsho/toggleterm.nvim" -- toggleable terminal window
  use "ahmedkhalf/project.nvim" -- project management
  use "lewis6991/impatient.nvim" -- speed optimization using caching
  use "lukas-reineke/indent-blankline.nvim" -- indentation guides
  use "goolord/alpha-nvim" -- start screen
  use "folke/which-key.nvim"
  use "karb94/neoscroll.nvim" -- smooth scrolling
  use "simrat39/symbols-outline.nvim" -- symbols tree
  use "pianocomposer321/yabs.nvim" -- build configurations
  use "aserowy/tmux.nvim" -- tmux
  use "ggandor/leap.nvim" -- quick navigation
  use "phaazon/hop.nvim" -- quick navigation
  use "danymat/neogen" -- docstring generator
  use "folke/trouble.nvim" -- nicer diagnostics/quickfix menu

  -- testing copilot
  use 'github/copilot.vim'


  -- tokyo night colorscheme
  use "folke/tokyonight.nvim"

  -- catppuccin colorscheme
  use {"catppuccin/nvim", as = "catppuccin"}

  -- onenord colorscheme
  use "rmehri01/onenord.nvim"

  -- github colorscheme
  use "projekt0n/github-nvim-theme"

  -- oxocarbon colorscheme
  use "B4mbus/oxocarbon-lua.nvim"

  -- cmp autocomplete
  use "hrsh7th/nvim-cmp" -- base plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snipped completions
  use "hrsh7th/cmp-nvim-lsp" -- lsp
  use "hrsh7th/cmp-nvim-lsp-signature-help" -- lsp signatures
  use "hrsh7th/cmp-nvim-lua" -- nvim source

  -- snippets
  use "L3MON4D3/LuaSnip" -- snippet engine
  use "rafamadriz/friendly-snippets" -- additional snippets

  -- lsp
  use {
    "williamboman/mason.nvim",
    requires = {
      "neovim/nvim-lspconfig",
      "williamboman/mason-lspconfig.nvim",
      "jose-elias-alvarez/null-ls.nvim",
    }
  }
  use "antoinemadec/FixCursorHold.nvim" -- fixes lsp doc highlighting
  use "glepnir/lspsaga.nvim" -- LSP Saga interface
  use "lspcontainers/lspcontainers.nvim" -- LSP containers

  use "MunifTanjim/exrc.nvim" -- local configs

  -- telescope
  use "nvim-telescope/telescope.nvim"
  use "nvim-telescope/telescope-ui-select.nvim"
  use {
    "EthanJWright/vs-tasks.nvim",
    requires = {
      "nvim-lua/popup.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
  }
  use "m-demare/hlargs.nvim" -- argument highlighting

  -- treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate", -- update treesitter automatically
  }
  use "JoosepAlviste/nvim-ts-context-commentstring" -- comment.nvim treesitter support

  -- window resizing
  use {
    "anuvyklack/windows.nvim",
    requires = {
      "anuvyklack/middleclass",
      "anuvyklack/animation.nvim",
    },
  }

  -- git
  use "lewis6991/gitsigns.nvim"
  use "TimUntersberger/neogit"
  use {
    "sindrets/diffview.nvim",
    requires = {
      "kyazdani42/nvim-web-devicons",
      "nvim-lua/plenary.nvim",
    }
  }

  -- tint inactive buffers
  --[[ use "sunjon/shade.nvim" ]]

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
