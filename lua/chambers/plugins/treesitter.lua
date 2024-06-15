local treesitter = require("nvim-treesitter.configs")

treesitter.setup({
    ensure_installed = { "c", "rust", "typescript", "javascript", "lua", "markdown", "vim" },
    auto_install = true,
    highlight = {
        enable = true,
    },
})

