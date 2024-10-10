local function create_lsp_keymaps(event)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "hover", buffer = event.buf })
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "definition", buffer = event.buf })
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "declaration", buffer = event.buf })
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "implementation", buffer = event.buf })
    vim.keymap.set("n", "go", vim.lsp.buf.type_definition, { desc = "type definition", buffer = event.buf })
    vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "references", buffer = event.buf })
    vim.keymap.set("n", "gs", vim.lsp.buf.signature_help, { desc = "signature help", buffer = event.buf })
    vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, { desc = "rename", buffer = event.buf })
    vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, { desc = "format", buffer = event.buf })
    vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, { desc = "code actions", buffer = event.buf })
    vim.keymap.set("n", "<leader>lR", "<cmd>LspRestart<cr>", { desc = "restart lsp", buffer = event.buf })
end

return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/nvim-cmp",
        "j-hui/fidget.nvim",
    },

    config = function()
        --- attach keymaps
        vim.api.nvim_create_autocmd("LspAttach", {
            desc = "LSP Keymaps",
            callback = create_lsp_keymaps,
        })

        local cmp = require('cmp')
        local cmp_lsp = require("cmp_nvim_lsp")
        local capabilities = vim.tbl_deep_extend(
            "force",
            {},
            vim.lsp.protocol.make_client_capabilities(),
            cmp_lsp.default_capabilities())

        require("fidget").setup({})
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
                "rust_analyzer",
                "pyright",
            },
            handlers = {
                function(server_name) -- default handler (optional)
                    require("lspconfig")[server_name].setup {
                        capabilities = capabilities
                    }
                end,

                zls = function()
                    local lspconfig = require("lspconfig")
                    lspconfig.zls.setup({
                        root_dir = lspconfig.util.root_pattern(".git", "build.zig", "zls.json"),
                        settings = {
                            zls = {
                                enable_inlay_hints = true,
                                enable_snippets = true,
                                warn_style = true,
                            },
                        },
                    })
                    vim.g.zig_fmt_parse_errors = 0
                    vim.g.zig_fmt_autosave = 0
                end,
                ["lua_ls"] = function()
                    local lspconfig = require("lspconfig")
                    lspconfig.lua_ls.setup {
                        capabilities = capabilities,
                        settings = {
                            Lua = {
                                runtime = { version = "Lua 5.1" },
                                diagnostics = {
                                    globals = { "bit", "vim", "it", "describe", "before_each", "after_each" },
                                }
                            }
                        }
                    }
                end,
            }
        })

        local cmp_select = { behavior = cmp.SelectBehavior.Select }

        cmp.setup({
            mapping = cmp.mapping.preset.insert({
                ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
                ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
                ['<cr>'] = cmp.mapping.confirm({ select = true }),
                ["<C-Space>"] = cmp.mapping.complete(),
            }),
            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                { name = 'path' },
            }, {
                { name = 'buffer' },
            })
        })

        vim.diagnostic.config({
            -- update_in_insert = true,
            float = {
                focusable = false,
                style = "minimal",
                border = "rounded",
                source = "always",
                header = "",
                prefix = "",
            },
        })
    end
}
