local M = {}



M.setup = function()
    --- enter terminal mode automatically
    vim.api.nvim_create_autocmd({"WinEnter", "BufWinEnter"}, {
        pattern = "term://*",
        command = "startinsert",
    })

    --- window nav in terminal mode
    vim.keymap.set("t", "<C-h>", "<cmd>wincmd h<cr>")
    vim.keymap.set("t", "<C-j>", "<cmd>wincmd j<cr>")
    vim.keymap.set("t", "<C-k>", "<cmd>wincmd k<cr>")
    vim.keymap.set("t", "<C-l>", "<cmd>wincmd l<cr>")

    --- exit terminal with C-\
    vim.keymap.set("t", "<C-\\>", "<C-\\><C-N>")
end

M.new_term = function()
    vim.cmd.terminal()
    vim.cmd.startinsert()
end

M.new_term_vsplit = function()
    vim.cmd.vsplit()
    M.new_term()
end

M.new_term_hsplit = function()
    vim.cmd.split()
    M.new_term()
end

return M
