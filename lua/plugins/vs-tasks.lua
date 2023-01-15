local status_ok, vstask = pcall(require, "vstask")
if not status_ok then
  return
end

vstask.setup({
  use_harpoon = true, -- use harpoon to auto cache terminals
  telescope_keys = { -- change the telescope bindings used to launch tasks
    split = '<CR>',
    vertical = '<C-v>',
    tab = '<C-t>',
    current = '<C-c>',
  },
  terminal = 'toggleterm',
  term_opts = {
    vertical = {
      direction = "vertical",
      size = "80"
    },
    horizontal = {
      direction = "horizontal",
      size = "10"
    },
    current = {
      direction = "float",
    },
    tab = {
      direction = "tab",
    }
  }
})
