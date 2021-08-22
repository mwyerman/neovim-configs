require('plugins')

require('settings')
require('keys/bindings')

require('keys/which-key')

-- ui
require('ui/lualine')

-- themes
require('ui/themes/aurora')

-- transparent background
require('ui/transparency')

-- Language Server Protocols
require'lspconfig'.pylsp.setup{}
require'lspconfig'.pyright.setup{}
