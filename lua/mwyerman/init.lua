require 'mwyerman.options'
require 'mwyerman.keymaps'
require 'mwyerman.plugins'

-- require 'mwyerman.theme.onenord'.init()
--[[ require 'mwyerman.theme.github' ]]
require 'mwyerman.theme.catppuccin'.init()
-- require 'mwyerman.theme.oxocarbon'.init()

require 'mwyerman.plugins.exrc'
require 'mwyerman.plugins.cmp'
require 'mwyerman.lsp'
require 'mwyerman.plugins.telescope'
require 'mwyerman.treesitter'
require 'mwyerman.plugins.autopairs'
require 'mwyerman.plugins.comment'
require 'mwyerman.plugins.gitsigns'
require 'mwyerman.plugins.nvim-tree'
require 'mwyerman.plugins.bufferline'
require 'mwyerman.plugins.lualine'
require 'mwyerman.plugins.toggleterm'
require 'mwyerman.plugins.project'
require 'mwyerman.plugins.impatient'
require 'mwyerman.plugins.indentline'
require 'mwyerman.plugins.alpha'
require 'mwyerman.plugins.whichkey'
require 'mwyerman.autocommands'
require 'mwyerman.plugins.neoscroll'
require 'mwyerman.plugins.yabs'
require 'mwyerman.plugins.tmux'
require 'mwyerman.plugins.hlargs'
require 'mwyerman.plugins.hop'
require 'mwyerman.plugins.neogen'
require 'mwyerman.plugins.copilot'
require 'mwyerman.plugins.windows'

require 'mwyerman.plugins.diffview'
require 'mwyerman.plugins.neogit'

-- keep this last to ensure all colors work right
require 'mwyerman.plugins.shade'
