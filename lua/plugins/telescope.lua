return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = {
            'nvim-lua/plenary.nvim',
            config = function()
                local builtin = require("telescope.builtin")
                local themes = require("telescope.themes")
                vim.keymap.set('n', '<C-p>', builtin.find_files, {})
                -- This requires 'ripgrep'. Make sure to install it!
                vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
                vim.keymap.set('n', '<leader>fr', builtin.lsp_references, { noremap = true, silent = true })
                vim.keymap.set('n', '<leader>ds', builtin.lsp_document_symbols, {})
            end
        },
        opts = {
            defaults = {
                vimgrep_arguments = {
                    "rg",
                    "--color=never",
                    "--no-heading",
                    "--with-filename",
                    "--line-number",
                    "--column",
                    "--smart-case",
                    "--trim"
                }
            },
            pickers = {
                lsp_document_symbols = {
                    theme = "ivy",
                },
                find_files = {
                    previewer = false,
                    theme = "dropdown",
                    prompt_title = false,
                },
            }
        },
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
