local tree = require("nvim-tree")
local nonicons = require("nvim-nonicons.extentions.nvim-tree")

vim.keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>")

tree.setup({
    view = {
        width = 36,
    },
    renderer = {
        icons = {
            glyphs = nonicons.glyphs,
        },
    },
    actions = {
        expand_all = {
            exclude = {
                ".git",
                "build",
                "dist",
                "node_modules",
                "target",
            },
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

