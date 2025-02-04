return {
    "Mofiqul/dracula.nvim",
    name = "dracula",
    priority = 1001,
    config = function()
        require('dracula').setup {
            transparent_bg = true,

            overrides = {
                StatusLine = { bg = "none" },
            }
        }
        vim.cmd.colorscheme "dracula"
    end
}
