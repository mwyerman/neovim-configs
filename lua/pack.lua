return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use({
	'folke/which-key.nvim',
	config = function()
	    require('plugins/whichkey')
	end,
    })
end)
