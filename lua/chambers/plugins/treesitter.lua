require("nvim-treesitter.configs").setup({
    ensure_installed = { "c", "rust", "typescript", "javascript", "lua", "markdown" },
    auto_install = true,
    highlight = { enable = true },
})

