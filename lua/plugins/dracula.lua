return {
    "Mofiqul/dracula.nvim",
    name = "dracula",
    priority = 1001,
    config = function()
        require('dracula').setup {
            transparent_bg = true,

            overrides = {
                StatusLine = { bg = "none" },
                MatchParen = { fg = "#FF5555", bg = "#44475A"},
            }
        }
        vim.cmd.colorscheme "dracula"
        vim.cmd [[
        highlight MatchParen gui=bold
        highlight MatchParen cterm=bold
      ]]
    end
}
