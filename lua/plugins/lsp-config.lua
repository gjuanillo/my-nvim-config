return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {"lua_ls", "jdtls", "harper_ls"}, --ts_ls is deprecated
            })
        end
    },
    {
        "jay-babu/mason-nvim-dap.nvim",
        config = function()
            require("mason-nvim-dap").setup({
                ensure_installed = {"java-debug-adapter", "java-test"}
            })
        end
    },
    {
        "mfussenegger/nvim-jdtls",
        dependencies = {
            "mfussenegger/nvim-dap",
        }
    },
    { "ray-x/lsp_signature.nvim" },
    {
        "neovim/nvim-lspconfig",
        dependencies = { "ray-x/lsp_signature.nvim" },
        config = function()
            local lspconfig = require("lspconfig")
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
            })
            lspconfig.harper_ls.setup({
                capabilities = capabilities,
                linters = {
                    SpellCheck = true,
                    SpelledNumbers = false,
                    AnA = true,
                    SentenceCapitalization = true,
                    UnclosedQuotes = true,
                    WrongQuotes = false,
                    LongSentences = true,
                    RepeatedWords = true,
                    Spaces = true,
                    Matcher = true,
                    CorrectNumberSuffix = true
                  }
            })

            -- lspconfig.tsserver.setup({
            --     capabilities = capabilities,
            -- })

            vim.diagnostic.config({
                virtual_text = {
                    prefix = '●',
                    spacing = 4,
                    source = false,
                    severity = nil,
                },
                signs = true,
                underline = true,
                update_in_insert = false,
                severity_sort = true,
            })

            vim.keymap.set("n", "<leader>ch", vim.lsp.buf.hover, {desc = "[C]ode [H]over Documentation"})
            vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, {desc = "[C]ode go to [D]efinition"})
            vim.keymap.set({"n", "v"}, "<leader>ca", vim.lsp.buf.code_action, {desc = "[C]ode [A]ctions"})
            vim.keymap.set("n", "<leader>cr", require("telescope.builtin").lsp_references, {desc = "[C]ode go to [R]eferences"})
            vim.keymap.set("n", "<leader>ci", require("telescope.builtin").lsp_implementations, {desc = "[C]ode go to [I]mplementation"})
            vim.keymap.set("n", "<leader>cR", vim.lsp.buf.rename, {desc = "[C]ode [R]ename"})
            vim.keymap.set("n", "<leader>cD", vim.lsp.buf.declaration, {desc = "[C]ode go to [D]eclaration"})
        end
    }

}

