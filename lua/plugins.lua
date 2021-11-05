return require("packer").startup(function()
	-- Packer (package manager)
	use("wbthomason/packer.nvim")

	-- themes
	use({ "nvim-treesitter/nvim-treesitter" })

	use({ "christianchiarulli/nvcode-color-schemes.vim", module = "nvcode-color-schemes.vim" })

	-- telescope
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
		config = function()
			require("dev/telescope")
		end,
	})

	-- telescope fuzzy finder
	use({
		"nvim-telescope/telescope-fzf-native.nvim",
		run = "make",
	})

	-- lualine (statusline)
	use({
		"hoob3rt/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
		config = function()
			require("ui/lualine")
		end,
	})

	-- luatab (tabs)
	use({
		"akinsho/bufferline.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("ui/tabline")
		end,
	})

	-- bufdelete (smarter buffer delete)
	use("famiu/bufdelete.nvim")

	-- comment.nvim
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})

	-- auto pairs (auto close brackets)
	use("jiangmiao/auto-pairs")

	-- autotag (auto html/xml tags)
	use("windwp/nvim-ts-autotag")

	-- cursor line (highlight selection)
	use({ "yamatsum/nvim-cursorline", module = "nvim-cursorline" })

	-- file beagle (file navigation)
	use({ "jeetsukumaran/vim-filebeagle", keys = "-" })

	-- which-key (keybindings)
	use({
		"folke/which-key.nvim",
		config = function()
			require("keys/which-key")
		end,
	})

	-- neovim lsp (language server protocol)
	use("neovim/nvim-lspconfig")

	-- git blame
	use({ "f-person/git-blame.nvim", module = "git-blame.nvim" })

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

	-- hop (jump to)
	use({
		"phaazon/hop.nvim",
		as = "hop",
		config = function()
			require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
		end,
		keys = "<Leader>h",
	})

	-- Neogit (alternative git interface)
	use({
		"TimUntersberger/neogit",
		requires = "nvim-lua/plenary.nvim",
		cmd = "Neogit",
	})

	-- git fugitive (:Git command)
	use({
		"doronbehar/nvim-fugitive",
	})

	-- startup time profiler
	use("tweekmonster/startuptime.vim")

	-- lsp autocomplete
	use({
		"hrsh7th/nvim-compe",
		requires = {
			{ "hrsh7th/vim-vsnip" },
			{ "hrsh7th/vim-vsnip-integ", opt = true },
		},
		event = "InsertEnter",
		config = function()
			require("dev/compe")
		end,
	})
end)
