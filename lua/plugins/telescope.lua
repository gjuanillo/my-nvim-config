-- return {
--     {
--         'nvim-telescope/telescope.nvim',
--         tag = '0.1.8',
--         dependencies = {
--             'nvim-lua/plenary.nvim'
--         },
--         config = function()
--             local builtin = require('telescope.builtin')
--             vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "[F]ind [F]iles"})
--             vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "[F]ind by [G]rep"})
--             vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = "[F]ind [D]iagnostics"})
--             vim.keymap.set('n', '<leader>fr', builtin.resume, { desc = "[F]inder [R]esume"})
--             vim.keymap.set('n', '<leader>f.', builtin.oldfiles, { desc = "[F]ind Recent Files[.]"})
--             vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "[F]ind Existing [B]uffers"})
--         end
--     },
--     {
--         'nvim-telescope/telescope-ui-select.nvim',
--         config = function()
--             local actions = require("telescope.actions")
--             require("telescope").setup({
--                 extensions = {
--                     ["ui-select"] = {
--                         require("telescope.themes").get_dropdown {}
--                     }
--                 },
--                 mappings = {
--                     i = {
--                         ["<C-n>"] = actions.cycle_history_next,
--                         ["<C-p>"] = actions.cycle_history_prev,
--                         ["<C-j>"] = actions.move_selection_next,
--                         ["<C-k>"] = actions.move_selection_previous,
--                     }
--                 },
--                 require("telescope").load_extension("ui-select")
--             })
--         end
--     }
-- }

return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = {
            'nvim-lua/plenary.nvim'
        },
        config = function()
            local builtin = require('telescope.builtin')

            -- Custom search functions
            local function find_files_hidden()
                builtin.find_files({ hidden = true })
            end

            local function live_grep_hidden()
                builtin.live_grep({
                    additional_args = function()
                        return { "--hidden", "--no-ignore" }
                    end
                })
            end

            -- Keymaps
            vim.keymap.set('n', '<leader>ff', find_files_hidden, { desc = "[F]ind [F]iles (incl. dotfiles)" })
            vim.keymap.set('n', '<leader>fg', live_grep_hidden, { desc = "[F]ind by [G]rep (incl. dotfiles)" })
            vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = "[F]ind [D]iagnostics" })
            vim.keymap.set('n', '<leader>fr', builtin.resume, { desc = "[F]inder [R]esume" })
            vim.keymap.set('n', '<leader>f.', builtin.oldfiles, { desc = "[F]ind Recent Files[.]" })
            vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "[F]ind Existing [B]uffers" })
        end
    },
    {
        'nvim-telescope/telescope-ui-select.nvim',
        config = function()
            local actions = require("telescope.actions")
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {}
                    }
                },
                defaults = {
                    mappings = {
                        i = {
                            ["<C-n>"] = actions.cycle_history_next,
                            ["<C-p>"] = actions.cycle_history_prev,
                            ["<C-j>"] = actions.move_selection_next,
                            ["<C-k>"] = actions.move_selection_previous,
                        }
                    }
                }
            })
            require("telescope").load_extension("ui-select")
        end
    }
}

