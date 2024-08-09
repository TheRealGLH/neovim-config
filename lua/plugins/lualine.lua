return {
    "nvim-lualine/lualine.nvim",
    config = function()
        require("lualine").setup({
            options = {
                theme = 'dracula',
                disabled_filetypes = {
                    --'neo-tree',
                    --'toggleterm',
                    'alpha',
                },
                ignore_focus = {
                    'neo-tree',
                    'toggleterm',
                    'netrw',
                    'TelescopePrompt',
                },
                globalstatus = true,
            },
            sections = {
                lualine_c = { 'filename',
                    function()
                        return require("nvim-treesitter").statusline({
                            indicator_size = 90,
                            type_patterns = { "class", "function", "method" },
                            separator = "  ",
                        })
                    end
                },
            }
        })
    end
}
