return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = {
            'nvim-lua/plenary.nvim',
            config = function()
                local builtin = require("telescope.builtin")
                vim.keymap.set('n', '<C-p>', builtin.find_files, {})
                -- This requires 'ripgrep'. Make sure to install it!
                vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
                vim.keymap.set('n', '<leader>fr', builtin.lsp_references, { noremap = true, silent = true })
                vim.keymap.set("n", "gr", vim.lsp.buf.references, {  })
            end
        }
    },
    {
        'nvim-telescope/telescope-ui-select.nvim',
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {
                        }
                    }
                }
            })
            require("telescope").load_extension("ui-select")
        end
    }
}
