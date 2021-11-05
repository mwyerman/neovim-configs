require("formatter").setup({
	filetype = {
		lua = {
			function()
				return {
					exe = "stylua",
					args = {
						--[[ "--config-path "
                      .. os.getenv("XDG_CONFIG_HOME")
                      .. "/stylua/stylua.toml", ]]
						"-",
					},
					stdin = true,
				}
			end,
		},
		python = {
			function()
				return {
					exe = "python",
					args = { "-m", "black", "--line-length", "79" },
					stdin = false,
				}
			end,
			function()
				return {
					exe = "python",
					args = { "-m", "isort" },
					stdin = false,
				}
			end,
			function()
				return {
					exe = "style-doc",
					-- args = { " --max_length ", " 79 " },
					stdin = false,
				}
			end,
		},
		c = {
			function()
				return {
					exe = "clang-format",
					args = { "--assume-filename", vim.api.nvim_buf_get_name(0) },
					stdin = true,
					cwd = vim.fn.expand("%:p:h"), -- Run clang-format in cwd of the file.
				}
			end,
		},
	},
})
