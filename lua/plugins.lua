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

    -- luatab (tabs)
    use { 'akinsho/bufferline.nvim', requires='kyazdani42/nvim-web-devicons' }

    -- bufdelete (smarter buffer delete)
    use 'famiu/bufdelete.nvim'

    -- kommentary (commenter)
    use 'b3nj5m1n/kommentary'

    -- auto pairs (auto close brackets)
    use 'jiangmiao/auto-pairs'

    -- cursor line (highlight selection)
    use 'yamatsum/nvim-cursorline'

	-- vinegar (file navigation)
    use 'jeetsukumaran/vim-filebeagle'

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

    -- lazygit
    use 'kdheepak/lazygit.nvim'

    -- vim-doge (docstring generator)
    use {
        'kkoomen/vim-doge',
        run = ':call doge#install()'
    }
end)
