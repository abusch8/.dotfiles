local treesitter = require("nvim-treesitter.configs")

treesitter.setup({
    ensure_installed = {
        "bash",
        "lua",
        "vim",
    },
    auto_install = true,
    highlight = {
        enable = true,
    },
})

