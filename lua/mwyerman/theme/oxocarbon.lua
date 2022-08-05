_M = {}

vim.o.termguicolors = true

_M.init = function()
  local colorscheme = "oxocarbon-lua"

  local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
  if not status_ok then
    vim.notify("colorscheme " .. colorscheme .. " not found")
    return
  end
end

return _M
