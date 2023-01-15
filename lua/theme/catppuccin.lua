_M = {}


_M.init = function()
  local colorscheme = "catppuccin"

  local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
  if not status_ok then
    vim.notify("colorscheme " .. colorscheme .. " not found")
    return
  end
end

return _M
