local status_ok, mason = pcall(require, "mason")
if not status_ok then
  return
end

local status_ok, mason_lsp = pcall(require, "mason-lspconfig")
if not status_ok then
  return
end

local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
  return
end

mason.setup()
mason_lsp.setup()
mason_lsp.setup_handlers({
  -- Default handler (optional)
  --[[ function (server_name) ]]
  --[[   lspconfig[server_name].setup({}) ]]
  --[[ end ]]

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
})
