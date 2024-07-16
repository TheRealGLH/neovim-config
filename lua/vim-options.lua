-- Meta accessors
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number relativenumber")
vim.cmd("set mouse=")
vim.g.mapleader = " "
--vim.opt.mouse = ""
vim.keymap.set('n', '<leader>n', ':set number relativenumber!<CR>', {})
