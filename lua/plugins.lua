return require("packer").startup(function()
	-- Packer (package manager)
	use("wbthomason/packer.nvim")

	-- themes
	use("christianchiarulli/nvcode-color-schemes.vim")
	use("nvim-treesitter/nvim-treesitter")

	-- lualine (statusline)
	use({
		"hoob3rt/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})

	-- luatab (tabs)
	use({ "akinsho/bufferline.nvim", requires = "kyazdani42/nvim-web-devicons" })

	-- bufdelete (smarter buffer delete)
	use("famiu/bufdelete.nvim")

	-- commnent.nvim
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})

	-- auto pairs (auto close brackets)
	use("jiangmiao/auto-pairs")

	-- cursor line (highlight selection)
	use("yamatsum/nvim-cursorline")

	-- vinegar (file navigation)
	use("jeetsukumaran/vim-filebeagle")

	-- which-key (keybindings)
	use({
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup({})
		end,
	})

	-- neovim lsp (language server protocol)
	use("neovim/nvim-lspconfig")

	-- lsp autocomplete
	use({
		"hrsh7th/nvim-compe",
		requires = {
			{ "hrsh7th/vim-vsnip" },
			{ "hrsh7th/vim-vsnip-integ", opt = true },
		},
	})

	-- telescope
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- telescope fuzzy finder
	use({
		"nvim-telescope/telescope-fzf-native.nvim",
		run = "make",
	})

	-- git blame
	use("f-person/git-blame.nvim")

	-- git signs
	use({
		"lewis6991/gitsigns.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})

	-- formatter
	use({
		"mhartington/formatter.nvim",
	})

	-- lazygit
	use("kdheepak/lazygit.nvim")

	-- vim-doge (docstring generator)
	use({
		"kkoomen/vim-doge",
		run = ":call doge#install()",
	})

	-- hop (jump to)
	use({
		"phaazon/hop.nvim",
		as = "hop",
		config = function()
			-- you can configure Hop the way you like here; see :h hop-config
			require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
		end,
	})

	use({
		"TimUntersberger/neogit",
		requires = "nvim-lua/plenary.nvim",
	})
end)
