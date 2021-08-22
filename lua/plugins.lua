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
end)
