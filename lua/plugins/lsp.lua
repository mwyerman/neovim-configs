local lsp = require('lspconfig')

------------------------------------------------------------
-- python
------------------------------------------------------------
-- `python -m pip install python-lsp-server`
lsp.pylsp.setup{}

-- `npm i -g pyright`
lsp.pyright.setup{}

------------------------------------------------------------
-- c
------------------------------------------------------------
-- llvm 9.0+ required
lsp.clangd.setup{}

------------------------------------------------------------
-- js/ts
------------------------------------------------------------
-- `npm i -g vscode-langservers-extracted`
lsp.eslint.setup{}
