-- Meta accessors
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number relativenumber")
vim.cmd("set mouse=")
vim.g.mapleader = " "
--vim.opt.mouse = ""
vim.g.health = { style = 'float' }
vim.keymap.set('n', '<leader>n', ':set number relativenumber!<CR>', {})
vim.opt.showmode = false
vim.cmd [[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
  set guicursor=n-v-c-sm:block,i-ci-ve:hor35,r-cr-o:hor20
]]
