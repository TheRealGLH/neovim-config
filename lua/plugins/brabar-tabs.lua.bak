return
{
    {
        'romgrk/barbar.nvim',
        dependencies = {
            'lewis6991/gitsigns.nvim',     -- OPTIONAL: for git status
            'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
        },
        init = function()
            vim.g.barbar_auto_setup = false
            vim.keymap.set('n', '<Tab>', ':BufferNext<CR>')
            vim.keymap.set('n', '<leader><Tab>', ':BufferPrevious<CR>')
            vim.keymap.set('n', '<leader>w', ':BufferClose<CR>')
                vim.api.nvim_create_autocmd('ColorScheme', {
                    pattern = 'dracula', -- after dracula loads specificallycallback
                    callback = function()
                        vim.api.nvim_set_hl(0,
                            'BufferTabpageFill', -- or any other hl group
                            { bg = "none" }
                        )
                    end,
                })
            require 'barbar'.setup {
                sidebar_filetypes = {
                    -- Use the default values: {event = 'BufWinLeave', text = nil}
                   -- NvimTree = false,
                    -- Or, specify the text used for the offset:
                    --undotree = { text = 'undotree' },
                    -- Or, specify the event which the sidebar executes when leaving:
                    ['neo-tree'] = { event = 'BufWipeout' },
                    -- Or, specify both
                    --Outline = { event = 'BufWinLeave', text = 'symbols-outline' },
                },


            }
        end,
        opts = {
            -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
            -- animation = false,
            insert_at_start = false,
            -- …etc.
        },
        version = '^1.0.0', -- optional: only update when a new 1.x version is released
    },
}
