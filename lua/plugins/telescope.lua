local actions = require('telescope.actions')

require('telescope').setup{
    defaults = {
        mappings = {
            i = {
                ['<C-j>'] = 'move_selection_next',
                ['<C-k>'] = 'move_selection_previous',
                ['<esc>'] = 'close',
            },
        },
    },
    pickers = {
        file_browser = {
            mappings = {
                n = {
                    ['l'] = 'select_default',
                    ['h'] = actions.move_to_bottom + actions.select_default
                }
            }
        }
    },
    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = 'smart_case',
        },
    },
}

require('telescope').load_extension('fzf')
