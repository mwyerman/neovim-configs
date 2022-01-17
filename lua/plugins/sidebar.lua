local sidebar = require('sidebar-nvim')

local opts = {
    open = true,
    sections = {
        'todos',
        'files',
        'git',
        'diagnostics',
        'symbols',
    },
    disable_closing_prompt = true,
}

sidebar.setup(opts)
