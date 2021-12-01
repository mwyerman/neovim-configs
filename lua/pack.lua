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
	end
    })
end)
