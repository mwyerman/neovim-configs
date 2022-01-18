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
    l = { ":bnext<cr>", "next buffer" },
    h = { ":bprevious<cr>", "prev buffer" },
    L = { ":+tabnext<cr>", "next tab" },
    H = { ":-tabnext<cr>", "prev tab" },
    b = {
        name = "buffer",
        q = { ":bp <BAR> bd #<cr>", "close tab" },
        l = { ":ls<cr>", "list buffers" },
        s = { ":vsplit<cr>", "split" },
        d = { ":split<cr>", "split down" },
        n = { ":tabnew<cr>", "new tab" },
        Q = { ":tabclose<cr>", "close tab" },
        O = { ":%bdelete|edit #|normal `\"", "close other buffers" },
        P = { "tabonly", "close other tabs" },
    },
    t = {
        name = "telescope",
        e = { ":Telescope file_browser<cr><esc>", "file browser" },
        f = { ":Telescope find_files<cr>", "files" },
        t = { ":Telescope live_grep<cr>", "grep" },
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
    },
    g = {
        name = "git",
        g = { ":LazyGit<cr>", "lazygit" },
        s = { "<cmd>lua require'gitsigns'.stage_hunk()<CR>", "stage hunk" },
        u = { "<cmd>lua require'gitsigns'.undo_stage_hunk()<CR>", "undo stage hunk" },
        r = { "<cmd>lua require'gitsigns'.reset_hunk()<CR>", "reset hunk" },
        R = { "<cmd>lua require'gitsigns'.reset_buffer()<CR>", "reset buffer" },
        p = { "<cmd>lua require'gitsigns'.preview_hunk()<CR>", "preview hunk" },
        b = { "<cmd>lua require'gitsigns'.blame_line{full=true}<CR>", "git blame" },
        S = { "<cmd>lua require'gitsigns'.stage_buffer()<CR>", "stage buffer" },
    },
}, {
    prefix = "<leader>",
})

wk.register({
    g = {
        name = "git",
        s = { "<cmd>lua require'gitsigns'.stage_hunk({vim.fn.line('.'), vim.fn.line('v')})<CR>", "stage hunks" },
        r = { "<cmd>lua require'gitsigns'.reset_hunk({vim.fn.line('.'), vim.fn.line('v')})<CR>", "reset hunks" },
    }
}, {
    prefix = "<leader>",
    mode = "v",
})
