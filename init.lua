require 'options'
require 'keymaps'
require 'plugins'

-- require 'theme.onenord'.init()
--[[ require 'theme.github' ]]
require 'theme.catppuccin'.init()
-- require 'theme.oxocarbon'.init()

require 'plugins.exrc'
require 'plugins.cmp'
require 'lsp'
require 'plugins.telescope'
require 'treesitter'
require 'plugins.autopairs'
require 'plugins.comment'
require 'plugins.gitsigns'
require 'plugins.nvim-tree'
require 'plugins.bufferline'
require 'plugins.lualine'
require 'plugins.toggleterm'
require 'plugins.project'
require 'plugins.impatient'
require 'plugins.indentline'
require 'plugins.alpha'
require 'plugins.whichkey'
require 'autocommands'
require 'plugins.neoscroll'
require 'plugins.yabs'
require 'plugins.tmux'
require 'plugins.hlargs'
require 'plugins.hop'
require 'plugins.neogen'
require 'plugins.copilot'
require 'plugins.windows'

require 'plugins.diffview'
require 'plugins.neogit'

-- keep this last to ensure all colors work right
require 'plugins.shade'
