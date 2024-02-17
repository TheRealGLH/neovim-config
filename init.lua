-- Meta accessors
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")
vim.g.mapleader = " "
vim.opt.mouse = ""
--Lua code to clone Lazy package manager if it does not exist
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath
    })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    { "Mofiqul/dracula.nvim", name = "dracula", priority = 1001 },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}
}
local opts = {}
require("lazy").setup(plugins, opts)
local builtin = require("telescope.builtin")

vim.keymap.set('n', '<C-p>', builtin.find_files, {})
-- This requires 'ripgrep'. Make sure to install it!
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

local config = require("nvim-treesitter.configs")
config.setup( {
    ensure_installed = {"lua", "javascript", "css", "typescript", "java", "c_sharp", "cpp", "scss", "json"},
    highlight = { enable = true},
    indent = { enable = true }
})
require("catppuccin").setup()
vim.cmd.colorscheme "dracula"

