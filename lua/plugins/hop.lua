local ok, hop = pcall(require, "hop")

if not ok then
  return
end

hop.setup()
vim.api.nvim_set_keymap("n", "S", ":HopPattern<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "q", ":HopWord<cr>", { noremap = true, silent = true })
