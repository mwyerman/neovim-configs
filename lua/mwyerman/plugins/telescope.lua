return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",
        },
        "nvim-telescope/telescope-project.nvim",
        "nvim-telescope/telescope-ui-select.nvim",
    },
    config = function()
        local builtin = require("telescope.builtin")
        vim.keymap.set(
            "n",
            "<leader>ff",
            builtin.find_files,
            { desc = "find files" }
        )
        vim.keymap.set(
            "n",
            "<leader>fg",
            builtin.live_grep,
            { desc = "live grep" }
        )
        vim.keymap.set(
            "n",
            "<leader>fs",
            builtin.grep_string,
            { desc = "grep string" }
        )
        vim.keymap.set(
            "n",
            "<leader>fb",
            builtin.buffers,
            { desc = "find buffers" }
        )
        vim.keymap.set(
            "n",
            "<leader>fh",
            builtin.help_tags,
            { desc = "find help tags" }
        )
        vim.keymap.set(
            "n",
            "<leader>fp",
            "<cmd>Telescope project<cr>",
            { desc = "open project" }
        )
        vim.keymap.set(
            "n",
            "<leader>f ",
            builtin.resume,
            { desc = "resume search" }
        )

        local actions = require("telescope.actions")
        local telescope = require("telescope")
        local project_actions = require("telescope._extensions.project.actions")

        telescope.setup({
            defaults = {
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous,
                        ["<C-j>"] = actions.move_selection_next,
                        ["<cr>"] = actions.select_default,
                        ["<esc>"] = actions.close,
                    },
                },
                pickers = {
                    buffers = {
                        mappings = {
                            i = {
                                ["<C-d>"] = actions.delete_buffer,
                            },
                        },
                    },
                },
                extensions = {
                    fzf = {
                        fuzzy = true,
                        override_generic_sorter = true,
                        override_file_sorter = true,
                        case_mode = "smart_case",
                    },
                    project = {
                        base_dirs = {
                            "~/Git/",
                            "~/git/",
                            "~/Documents/git",
                            { path = "~/.config/nvim" },
                            { path = "~/AppData/Local/nvim" },
                        },
                        on_project_selected = project_actions.change_working_directory,
                    },
                },
            },
        })

        telescope.load_extension("project")
        telescope.load_extension("ui-select")

        -- using a pcall here because fzf compilation can be problematic on Windows
        -- this avoids errors when that occurs
        local fzf_ok, _ = pcall(require, "fzf_lib")
        if fzf_ok then
            telescope.load_extension("fzf")
        else
            print(
                "Warning: fzf not properly installed; using default telescope sorters"
            )
        end
    end,
}
