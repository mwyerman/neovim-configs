return require('packer').startup(function()
	-- Packer (package manager)
	use 'wbthomason/packer.nvim'

	-- lualine (statusline)
	use {
		'hoob3rt/lualine.nvim',
		requires = {'kyazdani42/nvim-web-devicons', opt = true}
	}

	-- vinegar (file navigation)
	use 'tpope/vim-vinegar'

	-- which-key (keybindings)
	use {
		"folke/which-key.nvim",
		config = function()
		    require("which-key").setup {

		}
	end}
end)
