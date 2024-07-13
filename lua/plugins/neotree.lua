return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons',
        'MunifTanjim/nui.nvim',
    },
    config = function()
        hijack_netrw_behavior = "open_default"
--        vim.keymap.set('n', '<C-b>', ':Neotree filesystem reveal left<CR>')
        vim.keymap.set('n', '<C-b>', ':Neotree toggle position=left<CR>')
        vim.keymap.set('n', '<C-M-b>', ':Neotree toggle position=right source=git_status<CR>')
        require('neo-tree').setup({
            hijack_netrw_behavior = "disabled",
            close_if_last_window = true,
            window = {
                position = "left",
                mappings = {
                    ["<C-b>"] = "noop",--this normally scrolls backwards through previews... but so does the backspace key. and it messes with my preferred shortcut.
                }
            }
        })
        --vim.cmd('Neotree')
    end
}
