-- Meta accessors
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number relativenumber")
vim.cmd("set mouse=")
vim.g.mapleader = " "
--vim.opt.mouse = ""
vim.g.health = { style = 'float' }
vim.keymap.set('n', '<leader>n', ':set number relativenumber!<CR>', {})
vim.opt.showmode = false
vim.opt.guicursor=""
vim.cmd [[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
  highlight MatchParen gui=bold
]]
