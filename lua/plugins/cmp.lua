vim.o.completeopt = "menuone,noselect"

local cmp = require('cmp')
local lsp = require('lspconfig')
local luasnip = require('luasnip')

------------------------------------------------------------
-- CMP
------------------------------------------------------------

cmp.setup{
    snippet = {
	expand = function(args)
	    luasnip.lsp_expand(args.body)
	end,
    },
    mapping = {
	['<C-k>'] = cmp.mapping.select_prev_item(),
	['<C-j>'] = cmp.mapping.select_next_item(),
	['<C-d>'] = cmp.mapping.scroll_docs(-4),
	['<C-f>'] = cmp.mapping.scroll_docs(4),
	['<C-Space>'] = cmp.mapping.complete(),
	['<C-e>'] = cmp.mapping.close(),
	['<CR>'] = cmp.mapping.confirm {
	    behavior = cmp.ConfirmBehavior.Replace,
	    select = true,
	},
	['<Tab>'] = function(fallback)
	    if cmp.visible() then
		cmp.select_next_item()
	    elseif luasnip.expand_or_jumpable() then
		luasnip.expand_or_jump()
	    else
		fallback()
	    end
	end,
	['<S-Tab>'] = function(fallback)
	    if cmp.visible() then
		cmp.select_prev_item()
	    elseif luasnip.jumpable(-1) then
		luasnip.jump(-1)
	    else
		fallback()
	    end
	end,
    },
    sources = {
	{ name = 'nvim_lsp' },
	{ name = 'luasnip' },
	{ name = 'buffer' },
	{ name = 'path' },
    },
}

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

------------------------------------------------------------
-- LSP
------------------------------------------------------------

---------------------------------------------
-- python
---------------------------------------------
-- `python -m pip install python-lsp-server`
lsp.pylsp.setup{
    -- capabilities = capabilies,
}

-- `npm i -g pyright`
lsp.pyright.setup{
    capabilities = capabilies,
}

---------------------------------------------
-- c
---------------------------------------------
-- llvm 9.0+ required
lsp.clangd.setup{
    capabilities = capabilies,
}

---------------------------------------------
-- js/ts
---------------------------------------------
-- `npm i -g vscode-langservers-extracted`
lsp.eslint.setup{
    capabilities = capabilies,
}
