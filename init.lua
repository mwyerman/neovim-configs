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

-------------------------------
-- Language Server Protocols

-- Python
require'lspconfig'.pylsp.setup{}
require'lspconfig'.pyright.setup{}

-- cmake
require'lspconfig'.cmake.setup{}

-- clangd
-- require'lspconfig'.clangd.setup{}

-- compe autocomplete
require('lsp/compe')
