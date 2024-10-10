return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local install = require("nvim-treesitter.install")
        install.prefer_git = false

        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = {"c", "lua", "vim", "rust", "python", "javascript", "typescript", "toml", "json", "markdown", "markdown_inline"},
            auto_install = true,
            highlight = {
                enable = true,
                additiona_vim_regex_highlighting = false,
            }
        })
    end
}
