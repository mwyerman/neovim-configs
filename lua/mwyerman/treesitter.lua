local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup {
  ensure_installed = { "bash", "c", "cpp", "css", "dockerfile", "go", "html", "java", "javascript", "jsdoc", "json",
    "json5", "latex", "llvm", "lua", "make", "python", "rust", "typescript", "verilog", "vim" },
  sync_install = false, -- install languages syncronously
  ignore_install = { "" }, -- list of parsers to ignore installing
  autopairs = {
    enable = true,
  },
  highlight = {
    enable = true,
    disable = { "" }, -- languages to disable
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = true, disable = { "yaml", "python" } },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}
