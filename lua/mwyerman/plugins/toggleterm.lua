return {
    "akinsho/toggleterm.nvim",
    config = function()
        require("toggleterm").setup({
            size = function(term)
                if term.direction == "vertical" then
                    return vim.o.columns * 0.4
                end
                return 20
            end,
            open_mapping = "<C-\\><C-\\>",
            direction = "vertical"
        })
    end
}
