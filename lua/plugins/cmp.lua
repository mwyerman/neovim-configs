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
	['<Tab>'] = cmp.mapping.confirm {
	    behavior = cmp.ConfirmBehavior.Replace,
	    select = true,
	},
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

local lsp_servers = {
    'pylsp',
    'pyright',
    'clangd',
    'eslint',
    'rls',
}

for _, lsp_server in ipairs(lsp_servers) do
    lsp[lsp_server].setup{
	capabilies = capabilies,
    }
end
