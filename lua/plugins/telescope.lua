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
    }
}
