return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup( {
            auto_install = true,
            ensure_installed = {"lua", "javascript", "css", "typescript", "java", "c_sharp", "cpp", "scss", "json", "gitignore", "html", "javascript", "xml", "yaml", "angular", "vue"},
            highlight = { enable = true},
            indent = { enable = true }
        })
        end
}
