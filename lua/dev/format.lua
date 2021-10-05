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
		},
	},
})

vim.api.nvim_exec(
	[[
augroup FormatAutogroup
    autocmd!
    autocmd BufWritePost *.py,*.lua FormatWrite
augroup END
]],
	true
)
