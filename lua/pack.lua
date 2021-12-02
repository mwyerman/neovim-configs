return require('packer').startup(function()
    use {'wbthomason/packer.nvim'}

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
	    {'hoob3rt/lualine.nvim', opt=true,},
	    {'kyazdani42/nvim-web-devicons', opt = true},
	},
	config = function()
	    require('plugins/tabline')
	end,
    }

    use {
	'nvim-telescope/telescope.nvim',
	requires = {'nvim-lua/plenary.nvim'},
	config = function()
	    require('plugins/telescope')
	end,
    }
end)
