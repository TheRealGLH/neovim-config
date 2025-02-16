return {
    "nvim-lualine/lualine.nvim",
    config = function()
        local dracula_customized = require('lualine.themes.dracula')
        dracula_customized.normal.c.bg = 'transparent';
        dracula_customized.visual.c.bg = 'transparent';
        dracula_customized.insert.c.bg = 'transparent';
        dracula_customized.replace.c.bg = 'transparent';
        dracula_customized.command.c.bg = 'transparent';
        dracula_customized.inactive.c.bg = 'transparent';
        require("lualine").setup({
            options = {
                theme = dracula_customized,
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
                lualine_b = { 'diff',
                    {
                        'branch',
                        separator = {
                            right = '',
                        },
                        padding = 2,
                    }
                },
                lualine_c = {
                    {
                        'filename',
                    },
                    {
                        function()
                            return require("nvim-treesitter").statusline({
                                indicator_size = 120,
                                type_patterns = { "filename", "class", "function", "method" },
                                separator = "  ",
                            })
                        end,
                    },
                },
                lualine_x = {},
                lualine_y = {
                    {
                        'diagnostics',
                        separator = {
                            left = '',
                        },
                    }
                },
                lualine_z = {
                    { 'location', separator = { left = '', right = '' }, left_padding = 2 },
                },
            }
        })
    end
}
