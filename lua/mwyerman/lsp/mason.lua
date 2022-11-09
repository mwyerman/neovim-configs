local status_ok_mason, mason = pcall(require, "mason")
if not status_ok_mason then
  return
end

local status_ok_mason_lsp, mason_lsp = pcall(require, "mason-lspconfig")
if not status_ok_mason_lsp then
  return
end

local status_ok_lspconfig, lspconfig = pcall(require, "lspconfig")
if not status_ok_lspconfig then
  return
end

mason.setup()
mason_lsp.setup()
mason_lsp.setup_handlers({
  -- Default handler (optional)
  function(server_name)
    lspconfig[server_name].setup({})
  end,
  -- Targeted overrides
  ["pylsp"] = function()
    lspconfig["pylsp"].setup(
      require("mwyerman.lsp.settings.pylsp")
    )
  end,
  ["sumneko_lua"] = function()
    lspconfig["sumneko_lua"].setup(
      require("mwyerman.lsp.settings.sumneko_lua")
    )
  end,
  -- Clangd
  ["clangd"] = function()
    lspconfig["clangd"].setup(
      require("mwyerman.lsp.settings.clangd")
    )
  end,

})
