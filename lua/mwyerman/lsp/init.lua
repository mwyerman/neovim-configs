local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require("mwyerman.lsp.lsp-installer")
require("mwyerman.lsp.handlers").setup()
