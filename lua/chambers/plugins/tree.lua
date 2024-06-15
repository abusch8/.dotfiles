local tree = require("nvim-tree")
local nonicons = require("nvim-nonicons.extentions.nvim-tree")

vim.keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

tree.setup({
    view = {
        width = 40,
    },
    renderer = {
        icons = {
            glyphs = nonicons.glyphs,
        },
    },
    actions = {
        expand_all = {
            exclude = { ".git", "dist", "target", "build" },
        },
    },
    hijack_cursor = true,
    sort = {
        sorter = "extension",
    },
    diagnostics = {
        enable = true,
    },
})

