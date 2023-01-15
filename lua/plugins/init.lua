return {
  -- common dependencies
  "nvim-lua/popup.nvim", -- An implementation of the Popup API from vim in Neovim
  "nvim-lua/plenary.nvim", -- Useful lua functions used ny lots of plugins
  "kyazdani42/nvim-web-devicons", -- icons

  -- misc plugins without configs
  "moll/vim-bbye", -- buffer delete doesn't mess up windows
  "simrat39/symbols-outline.nvim", -- symbols tree
  "folke/trouble.nvim", -- nicer diagnostics/quickfix menu

  -- lsp
  {
    "williamboman/mason.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "williamboman/mason-lspconfig.nvim",
      "jose-elias-alvarez/null-ls.nvim",
    }
  },
  "antoinemadec/FixCursorHold.nvim", -- fixes lsp doc highlighting
  "glepnir/lspsaga.nvim", -- LSP Saga interface
}
