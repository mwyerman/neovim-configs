local wk = require('which-key')

wk.register({
    p = {
        name = "packer",
        i = { ":PackerInstall<cr>", "install" },
        s = { ":PackerSync<cr>", "sync" },
        S = { ":PackerStatus<cr>", "status" },
        u = { ":PackerUpdate<cr>", "update" },
        c = { ":PackerClean<cr>", "clean" },
        C = { ":PackerCompile<cr>", "compile" },
    }
}, { prefix = "<leader>" })
