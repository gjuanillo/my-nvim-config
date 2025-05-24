-- return {
--     "nvim-tree/nvim-tree.lua",
--     config = function()
--         vim.keymap.set('n', '<leader>e', "<cmd>NvimTreeToggle<CR>", { desc = "Toggle [E]xplorer" })
--         require("nvim-tree").setup({
--             hijack_netrw = true,
--             auto_reload_on_write = true
--         })
--     end
-- }
--

return {
    "nvim-tree/nvim-tree.lua",
    config = function()
        vim.keymap.set('n', '<leader>e', "<cmd>NvimTreeToggle<CR>", { desc = "Toggle [E]xplorer" })
        require("nvim-tree").setup({
            hijack_netrw = true,         -- Automatically open nvim-tree instead of netrw
            auto_reload_on_write = true, -- Reload the tree automatically on write
            -- Enable Git integration
            git = {
                enable = true,         -- Enable Git status icons
                ignore = false,        -- Show ignored files in the tree
            },

            -- Optionally, set the renderer to highlight Git files using existing highlight groups
            renderer = {
                highlight_git = true,  -- Highlight files based on their Git status
                icons = {
                    show = {
                        git = true,  -- Show Git icons
                    }
                }
            },

            -- Set custom colors for the tree if you want specific control (optional)
            -- If you want the tree's colors to be based on your theme, you can skip the custom colors section
        })
        -- You can avoid custom highlights here as you rely on the theme's colors
        -- Ensure the colorscheme 'gruvbox' is applied
        vim.cmd("colorscheme poimandres")
    end
}
