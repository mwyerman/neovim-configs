local o = vim.o

-- line numbers
o.number = true
o.relativenumber = true

-- tab
o.tabstop = 4
o.shiftwidth = 4
o.expandtab = true

-- keep cursor near center of screen
o.scrolloff = 8
o.sidescrolloff = 8

-- improved search
o.ignorecase = true
o.smartcase = true

-- show hidden characters
o.list = true
o.listchars = "tab:◀■▶,trail:·,extends:◣,precedes:◢,nbsp:○"

-- misc settings
o.mouse = "a"
o.cursorline = true
o.clipboard = "unnamedplus"
o.wrap = false
o.hidden = true
