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
    },
    f = {
        name = "file",
        w = { ":w<cr>", "write" },
        W = { ":wq<cr>", "write & quit" },
        q = { ":q<cr>", "quit" },
        Q = { ":q!<cr>", "quit without saving" },
        S = { ":w !sudo tee %<cr>", "write with sudo" },
    },
    s = {
        name = "search",
        f = { ":Telescope find_files<cr>", "files" },
        F = { ":Telescope file_browser<cr>", "file browser" },
        g = { ":Telescope live_grep<cr>", "grep" },
        b = { ":Telescope buffers<cr>", "buffers" },
        h = { ":Telescope help_tags<cr>", "help" },

        r = { ":Telescope lsp_references<cr>", "references" },
        S = { ":Telescope lsp_document_symbols<cr>", "doc symbols" },
        s = { ":Telescope lsp_workspace_symbols<cr>", "workspace symbols" },

        t = { ":Telescope treesitter<cr>", "treesitter" },
    },
}, { prefix = "<leader>" })
