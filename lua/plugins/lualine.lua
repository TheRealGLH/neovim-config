return {
    "nvim-lualine/lualine.nvim",
    config = function()
        require("lualine").setup({
            options = {
                theme = 'dracula',
                disabled_filetypes = {
                    --'neo-tree',
                    --'toggleterm',
                },
                ignore_focus = {
                    'neo-tree',
                    'toggleterm',
                    'netrw',
                },
                globalstatus = true,
            }
        })
    end
}
