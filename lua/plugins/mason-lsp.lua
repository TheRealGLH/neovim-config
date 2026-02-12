return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "williamboman/mason.nvim",
            "hrsh7th/cmp-nvim-lsp",
        },
        config = function()
            -- Mason-lspconfig for auto-installing servers
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "vtsls", "html", "jdtls", "csharp_ls", "vuels", "clangd", "rust_analyzer" },
                automatic_installation = false,
            })

            vim.lsp.config('*', {
                capabilities = require('cmp_nvim_lsp').default_capabilities(),
            })

            vim.lsp.enable({
                "lua_ls",
                "vtsls",
                "html",
                "jdtls",
                "csharp_ls",
                "vuels",
                "clangd",
                "rust_analyzer",
            })

            -- Diagnostic config with virtual_text
            vim.diagnostic.config({
                virtual_text = true,
                signs = true,
                underline = true,
                update_in_insert = false,
            })

            -- Keymaps
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "LSP hover info" })
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Go to definition" })
            vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, { desc = "Code action(s)" })
            vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { desc = "Find implementation" })
            vim.keymap.set('n', '<leader>f', function()
                vim.lsp.buf.format({ async = true })
            end, { desc = "Format buffer" })
            vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = "Rename symbol" })
            vim.keymap.set('n', '<leader>k', vim.diagnostic.open_float, { desc = "Show diagnostics" })
            vim.keymap.set('n', '<leader>tk', function()
                local config = vim.diagnostic.config()
                vim.diagnostic.config({ virtual_text = not config.virtual_text })
            end, { desc = "Toggle diagnostic virtual text" })
        end
    },
}
