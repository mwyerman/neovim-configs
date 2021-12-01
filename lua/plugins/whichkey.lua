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
}, {
    prefix = "<leader>",
})
