return require('packer').startup(function()
	-- Packer (package manager)
	use 'wbthomason/packer.nvim'

    -- themes
    use 'christianchiarulli/nvcode-color-schemes.vim'
    use 'nvim-treesitter/nvim-treesitter'

	-- lualine (statusline)
	use {
		'hoob3rt/lualine.nvim',
		requires = {'kyazdani42/nvim-web-devicons', opt = true}
	}

    -- kommentary (commenter)
    use 'b3nj5m1n/kommentary'

	-- vinegar (file navigation)
	use 'tpope/vim-vinegar'

	-- which-key (keybindings)
	use {
		"folke/which-key.nvim",
		config = function()
		    require("which-key").setup {

		}
	end}

    -- neovim lsp (language server protocol)
    use 'neovim/nvim-lspconfig'

    -- lsp autocomplete
    use {
        'hrsh7th/nvim-compe',
        requires = {
            {'hrsh7th/vim-vsnip'},
            {'hrsh7th/vim-vsnip-integ', opt = true}
        }
    }

    -- telescope
    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- git blame
    use 'f-person/git-blame.nvim'
end)
