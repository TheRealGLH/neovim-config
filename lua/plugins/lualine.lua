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
                    'mason',
                    'lazy',
                },
                globalstatus = true,
                always_show_tabline = false
            },
            sections = {
                lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
                lualine_c = { --'filename',
                    function()
                        return require("nvim-treesitter").statusline({
                            indicator_size = 90,
                            type_patterns = { "class", "function", "method" },
                            separator = "  ",
                        })
                    end
                },
                lualine_x = {},
                lualine_y = {},
                lualine_z = {
                    { 'location', separator = { right = '' }, left_padding = 2 },
                },
            }
        })
    end
}
