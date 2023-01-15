_M = {}


_M.init = function()
  vim.cmd([[
  augroup MyColors
  autocmd!
  autocmd ColorScheme oxocarbon-lua highlight Comment guifg=#be95ff
  augroup end
  ]])

  local colorscheme = "oxocarbon-lua"

  vim.o.termguicolors = true
  vim.g.oxocarbon_lua_keep_terminal = true


  local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
  if not status_ok then
    vim.notify("colorscheme " .. colorscheme .. " not found")
    return
  end
  -- vim.cmd("hi Comment guifg=#be95ff")
end

return _M
