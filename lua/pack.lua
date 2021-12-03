return require('packer').startup(function()
    use {'wbthomason/packer.nvim'}

    use {
	'nvim-treesitter/nvim-treesitter',
	config = function()
	    require('plugins/treesitter')
	end
    }

    use {
	'folke/which-key.nvim',
	config = function()
	    require('plugins/whichkey')
	end,
    }

    use {
	'folke/tokyonight.nvim',
	config = function()
	    require('plugins/themes/tokyonight')
	end,
    }

    use {
	'nvim-lualine/lualine.nvim',
	requires = {'kyazdani42/nvim-web-devicons', opt = true},
	config = function()
	    require('plugins/lualine')
	end,
    }

    use {
	'kdheepak/tabline.nvim',
	requires = {
	    {'hoob3rt/lualine.nvim', opt = true},
	    {'kyazdani42/nvim-web-devicons', opt = true},
	},
	config = function()
	    require('plugins/tabline')
	end,
    }

    use {
	'nvim-telescope/telescope.nvim',
	requires = {
	    {'nvim-lua/plenary.nvim'},
	    {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'},
	},
	config = function()
	    require('plugins/telescope')
	end,
    }

    use {
	'windwp/nvim-autopairs',
	config = function()
	    require('plugins/autopairs')
	end
    }

    use {
	'windwp/nvim-ts-autotag',
	config = function()
	    require('plugins/autotag')
	end
    }

    use { 'kdheepak/lazygit.nvim' }

    use {
	'numToStr/Comment.nvim',
	config = function()
	    require('plugins/comment')
	end
    }

    use {
	'lewis6991/gitsigns.nvim',
	requires = {'nvim-lua/plenary.nvim'},
	config = function()
	    require('plugins/gitsigns')
	end,
    }

    use { 'tpope/vim-fugitive' }

    use {
	'f-person/git-blame.nvim',
	config = function()
	    require('plugins/gitblame')
	end
    }

    use {
	'phaazon/hop.nvim',
	branch = 'v1',
	config = function()
	    require('plugins/hop')
	end,
    }

end)
