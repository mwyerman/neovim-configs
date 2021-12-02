local wk = require("which-key")

wk.register({
    v = {
	name = "vim",
	e = { ":edit $MYVIMRC<cr>", "config" },
	r = { ":source $MYVIMRC<cr>", "reload" },
    },
    p = {
	name = "packer",
	s = { ":PackerSync<cr>", "sync" },
	c = { ":PackerClean<cr>", "clean" },
    },
    l = { ":bnext<cr>", "next tab" },
    h = { ":bprevious<cr>", "prev tab" },
    b = {
	name = "buffer",
	q = { ":bp <BAR> bd #<cr>", "close tab" },
	l = { ":ls<cr>", "list buffers" },
    },
    t = {
	name = "telescope",
	e = { ":Telescope file_browser<cr><esc>", "file browser" },
	f = { ":Telescope find_files<cr>", "files" },
	g = { ":Telescope live_grep<cr>", "grep" },
	b = { ":Telescope buffers<cr><esc>", "buffers" },
	h = { ":Telescope help_tags<cr>", "help" },
	o = { ":Telescope vim_options<cr>", "options" },
	c = { ":Telescope current_buffer_fuzzy_find<cr>", "current" },
	g = {
	    name = "git",
	    c = { ":Telescope git_commits<cr>", "commits" },
	    b = { ":Telescope git_branches<cr><esc>", "branches" },
	    d = { ":Telescope git_status<cr><esc>", "diff" },
	},
    }
}, {
    prefix = "<leader>",
})
