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
        -- files
        f = { ":Telescope find_files<cr>", "files" },
        F = { ":Telescope file_browser<cr>", "file browser" },

        -- text
        t = { ":Telescope live_grep<cr>", "grep" },
        b = { ":Telescope current_buffer_fuzzy_find<cr>", "buffers" },

        -- lsp
        r = { ":Telescope lsp_references<cr>", "references" },
        S = { ":Telescope lsp_document_symbols<cr>", "doc symbols" },
        s = { ":Telescope lsp_workspace_symbols<cr>", "workspace symbols" },

        -- git
        g = {
            name = "git",
            c = { ":Telescope git_bcommits<cr>", "commits" },
            C = { ":Telescope git_commits<cr>", "commits cmd" },
            s = { ":Telescope git_status<cr>", "status" },
            S = { ":Telescope git_stash<cr>", "stash" },
            b = { ":Telescope git_branches<cr>", "branches" },
        }
    },
    g = {
        name = "git",
        g = { ":LazyGit<cr>", "lazygit" },
    },
    M = {":!make<cr>", "make"},
    C = {":!make clean<cr>", "clean"},
}, { prefix = "<leader>" })
