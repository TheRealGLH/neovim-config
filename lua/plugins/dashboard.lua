return {
    'goolord/alpha-nvim',
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")
        require("alpha.term");


        dashboard.section.buttons.val = {
            dashboard.button("f", "󰈞\tFind file", ":Telescope find_files<CR>"),
            dashboard.button("r", "󰈞\tFuzzy grep", ":Telescope live_grep<CR>"),
            dashboard.button("g", "\tGit history", ":Telescope git_commits<CR>"),
            dashboard.button("h", "\tMason config", ":Mason<CR>"),
            dashboard.button("l", "󰐱\tLazyVim config", ":Lazy<CR>"),
            dashboard.button("q", "󰅚\tQuit NeoVim", ":qa<CR>"),
        }
        alpha.setup(dashboard.opts)
    end
};
