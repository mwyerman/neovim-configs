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
}, {
    prefix = "<leader>",
})
