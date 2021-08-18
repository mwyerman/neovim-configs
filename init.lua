nvimrc = "/home/mwyerman/.config/nvim/"

vim.cmd([[
  source ]] .. nvimrc .. [[config.vim

  source ]] .. nvimrc .. [[vim-plug/plugins.vim " Vim Plug included packages
  source ]] .. nvimrc .. [[general/settings.vim " Built-in settings
  source ]] .. nvimrc .. [[keys/mappings.vim " Custom Keybindings
  source ]] .. nvimrc .. [[keys/which-key.vim " Which-key config
  source ]] .. nvimrc .. [[ui/nerdtree.vim " NERDTree config
  source ]] .. nvimrc .. [[ui/airline.vim " airline config
]])

require('config')

-- require('colorizer')

if theme ~= "none" then
  vim.cmd('source ' .. nvimrc .. '/ui/themes/' .. theme .. '.vim')
end

if sneak == 1 then
  vim.cmd('source ' .. nvimrc .. 'general/nav/sneak.vim')
end

if quickscope == 1 then
  vim.cmd('source ' .. nvimrc .. 'general/nav/quickscope.vim')
end
