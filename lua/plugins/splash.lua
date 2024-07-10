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
                        icon = ' 󰱼 ',
                        icon_hl = 'DashboardIcon',
                        desc = 'Open file',
                        desc_hl = 'DashboardDesc',
                        key = '1',
                        key_hl = 'Number',
                        key_format = ' %s.', -- `%s` will be substituted with value of `key`
                        action = 'Telescope find_files',
                    },
                    {
                        icon = '  ',
                        icon_hl = 'Title',
                        desc = 'Open Readme',
                        desc_hl = 'DashboardDesc',
                        key = '2',
                        key_hl = 'Number',
                        key_format = ' %s.', -- `%s` will be substituted with value of `key`
                        action = 'Glow README.md',
                    },
                    {
                        icon = '  ',
                        icon_hl = 'Title',
                        desc = 'Mason Config',
                        desc_hl = 'DashboardDesc',
                        key = '3',
                        key_hl = 'Number',
                        key_format = ' %s.', -- `%s` will be substituted with value of `key`
                        action = 'Mason',
                    },
                    {
                        icon = ' 󰊢 ',
                        icon_hl = 'DashboardIcon',
                        desc = 'Git History',
                        desc_hl = 'DashboardDesc',
                        key = '1',
                        key_hl = 'Number',
                        key_format = ' %s.', -- `%s` will be substituted with value of `key`
                        action = 'Telescope git_status',
                    },
                }

            }
        }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
