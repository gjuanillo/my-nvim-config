return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
        "windwp/nvim-ts-autotag"
    },
    build = ":TSUpdate",
    config = function()
        local ts_config = require("nvim-treesitter.configs")
        ts_config.setup({
            ensure_installed = {
                "vim", "vimdoc", "lua", "java", "javascript", "typescript", "html", "css", "json",
                "tsx", "markdown", "markdown_inline", "gitignore"
            },
            highlight = {
                enable = true,
            },
            indent = {
                enable = true
            },
        })
        require("nvim-ts-autotag").setup({
            filetypes = {"html", "xml", "tsx", "jsx", "vue", "javascriptreact", "typescriptreact"},
        })
    end
}
