return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
            theme = 'doom',
            hide = {
                statusline = true,
                tabline = true,
                winbar = true
            },
            config = {
                header = {
                    '                                                                                ', '                                                                                ', '                                                                                ', '                                                                                ', '                                                                                ', '                                                                                ', '                                            ╓╓▓▓▓▓▓▓w╓.                         ', '                                         ,]▓██████▓▓▓▓▓%,                       ', '                                         ╟████████▓▓▓▓▓▓▒                       ', '                                        ╫▓▓▓░██▌▐▓▓▓▓▓▓▓▓▒                      ', '                                        ▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓╣[                    ', '                                         ╙╫▀▀▀▀▀▀▀▓▓▓▓▓▓▓▓▒`                    ', '                                             ╝╝╫╬╣▄▓▓▓▓▓▓▓▒                     ', '                                                ]╫▓▓▓▓▓▓▓▒`                     ', '                                                   ▓▓▓▓▓▓░                      ', '                                             ╖╖╖╖»▄▓▓▓▓▓╙`                      ', '                            ╖╖║▒▒▒▄╖╖╓,,,╓▐▄▄▓▀▀▌▄▓▓▓▓▓╜`                       ', '                          ╓▄▀░ `░▄██▌╫▓▓╢████`╓╟▓▓▓▓╣H░─                        ', '                         ]▒█╓╓â██▓██▌╫╢╢▒████▓░╟╢╢╢╬▒╠▌░                        ', '                          j███████▒╫▓║╢▓▓▒█████▌╙╙╙ ▓▓▌░                        ', '                        ╓╗▒▓▀▀▀▓▓▓██▓▓▓▓▓▓▒▀██████▓▓▓▌╫╦╗                       ', '                      ╖▄▒╫▓▓▓▓▓▓▓████▓▓▓▓▓╣▓▒▒▀▀▀▀▀▀▒▓▓╢▄░                      ', '                     ╨███▌▒▓▓▓▓▓▓██▓▓╢▄▄▄▄╢╢╫╢▓▓▓▓▓▓▓▓╣▒▓▓░                     ', '                   ,╓▒\'█▓▓▓╫▓▓▓▓▓▓▓▒█████████▒▓▓╢╢╢╢╢▒▐▓▓░▒H                    ', '            ñß@@@HH██▓▓▒███▒╢║║║║║▒███▀▀▀▀▐███▒╫▓╢╢╢▒╫▓▓╙@@@,                   ', '           ▒▓▓▓████▓▓▓▀ ╠▓▓▒╢╢╢╢╢╢▒█▌ ░@@╗Hj██▓▒╫╢╢▒░╠▓▓ ╢╢╫▓▄╗╗∩───            ', '            `╙▀▀▀▀▀░``   `"╙╜╜▓╢╢╢▒▀ÿ▄▓▓▓╣[j█▓▓▒▒▒▒▒╖╜╜```╙╟▓▓▓▓▓▓▓▓            ', '                             ╓╓╖▄▄▄▓▓▓▓▓▀░╓▄▓▀╜╜╜╜╜``       `"▀▀▀▀▀╨`           ', '                           ,▓█████▓▓▓▓▀`░░ ``                                   ', '                           ║█▓▓▓▓▓██▌┘                                          ', '                             ╙╙╙╙╙                                              ', '                                                                                ', '                                                                                ', '                                                                                '
                },
                disable_move = true,
               center = {
                    {
                        icon = ' 󰈔 \t',
                        icon_hl = 'DashboardIcon',
                        desc = 'Open file',
                        desc_hl = 'DashboardDesc',
                        key = '1',
                        key_hl = 'Number',
                        key_format = ' %s.', -- `%s` will be substituted with value of `key`
                        action = 'Telescope find_files',
                    },
                    {
                        icon = ' 󰈞 \t',
                        icon_hl = 'Title',
                        desc = 'Fuzzy Grep',
                        desc_hl = 'DashboardDesc',
                        key = '2',
                        key_hl = 'Number',
                        key_format = ' %s.', -- `%s` will be substituted with value of `key`
                        action = 'Telescope live_grep',
                    },
                    {
                        icon = ' 󰂺 \t',
                        icon_hl = 'Title',
                        desc = 'Open Readme',
                        desc_hl = 'DashboardDesc',
                        key = '3',
                        key_hl = 'Number',
                        key_format = ' %s.', -- `%s` will be substituted with value of `key`
                        action = 'Glow README.md',
                    },
                    {
                        icon = '  \t',
                        icon_hl = 'DashboardIcon',
                        desc = 'Git History',
                        desc_hl = 'DashboardDesc',
                        key = '4',
                        key_hl = 'Number',
                        key_format = ' %s.', -- `%s` will be substituted with value of `key`
                        action = 'Telescope git_commits',
                    },
                    {
                        icon = '  \t',
                        icon_hl = 'Title',
                        desc = 'Mason Config',
                        desc_hl = 'DashboardDesc',
                        key = '5',
                        key_hl = 'Number',
                        key_format = ' %s.', -- `%s` will be substituted with value of `key`
                        action = 'Mason',
                    },
                    {
                        icon = '  \t',
                        icon_hl = 'Title',
                        desc = 'LazyVim Config',
                        desc_hl = 'DashboardDesc',
                        key = '6',
                        key_hl = 'Number',
                        key_format = ' %s.', -- `%s` will be substituted with value of `key`
                        action = 'Lazy',
                    },
                    {
                        icon = '  \t',
                        icon_hl = 'Title',
                        desc = 'Vim Options',
                        desc_hl = 'DashboardDesc',
                        key = '7',
                        key_hl = 'Number',
                        key_format = ' %s.', -- `%s` will be substituted with value of `key`
                        action = 'Telescope vim_options',
                    },
                    {
                        icon = ' 󰈆 \t',
                        icon_hl = 'Title',
                        desc = 'Quit NeoVim',
                        desc_hl = 'DashboardDesc',
                        key = '0',
                        key_hl = 'Number',
                        key_format = ' %s.', -- `%s` will be substituted with value of `key`
                        action = 'qa',
                    },
                }

            }
        }
  end
,

  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
