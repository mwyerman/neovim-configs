local ok, leap = pcall(require, "leap")

if not ok then
  return
end

leap.setup {
  case_insensitive = true,
  -- Leaving the appropriate list empty effectively disables "smart" mode,
  -- and forces auto-jump to be on or off.
  safe_labels = { "s", "f", "n",
    "u", "t",
    "/", "F", "L", "N", "H", "G", "M", "U", "T", "?", "Z" },
  labels = { "s", "f", "n",
    "j", "k", "l", "o", "d", "w", "e", "h", "m", "v", "g",
    "u", "t",
    "c", ".", "z",
    "/", "F", "L", "N", "H", "G", "M", "U", "T", "?", "Z" },
  -- These keys are captured directly by the plugin at runtime.
  special_keys = {
    repeat_search = '<enter>',
    next_match    = '<enter>',
    prev_match    = '<tab>',
    next_group    = '<space>',
    prev_group    = '<tab>',
    eol           = '<space>',
  },
}

-- Bidirectional search in the current window is just a specific case of the
-- multi-window mode - set `target-windows` to a table containing the current
-- window as the only element:
function Leap_Bidirectional()
  leap.leap {
    ['target-windows'] = { vim.fn.getwininfo(vim.fn.win_getid())[1] }
  }
end

vim.api.nvim_set_keymap("n", "S", "<cmd>lua Leap_Bidirectional()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "S", "<cmd>lua Leap_Bidirectional()<cr>", { noremap = true, silent = true })
