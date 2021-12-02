return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    use({
	'folke/which-key.nvim',
	config = function()
	    require('plugins/whichkey')
	end,
    })

    use({
	'folke/tokyonight.nvim',
	config = function()
	    require('plugins/themes/tokyonight')
	end,
    })

    use({
	'nvim-lualine/lualine.nvim',
	requires = {'kyazdani42/nvim-web-devicons', opt = true},
	config = function()
	    require('plugins/lualine')
	end,
    })
end)
