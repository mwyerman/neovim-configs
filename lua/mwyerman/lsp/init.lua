local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require("mwyerman.lsp.lsp-installer").update_servers()
require("mwyerman.lsp.handlers").setup()
require("mwyerman.lsp.null-ls")
