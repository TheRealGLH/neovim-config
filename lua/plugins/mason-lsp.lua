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
                ensure_installed = { "lua_ls", "vtsls", "angularls", "html", "jdtls", "csharp_ls", "vuels", "clangd", "rust_analyzer"}
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.vtsls.setup({})
            lspconfig.csharp_ls.setup({})
            lspconfig.vuels.setup({})
            lspconfig.clangd.setup({})
            lspconfig.rust_analyzer.setup({})
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {desc = "LSP buffer hover info"})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {desc = "Go to definition" })
            vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {desc = "LSP Code Action(s)"})
            vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {desc = "Find implementation"})
            --Go to usage/ reference defined in telescope because we use that plugin for the window
            vim.keymap.set('n', '<leader>f', function()
                vim.lsp.buf.format { async = true }
            end, {desc = "Format current buffer"})
            vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {desc = "Rename under cursor"})
            vim.keymap.set('n', '<leader>k', vim.diagnostic.open_float, {desc = "Diagnostics under cursor"})
        end
    },
}
