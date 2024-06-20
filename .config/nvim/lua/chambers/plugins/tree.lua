local tree = require("nvim-tree")
local tree_icons = require("nvim-nonicons.extentions.nvim-tree")
local icons = require("nvim-nonicons")

vim.keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>")

tree.setup({
    view = {
        width = 36,
    },
    renderer = {
        icons = {
            glyphs = tree_icons.glyphs,
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
        show_on_dirs = true,
        show_on_open_dirs = false,
        icons = {
            error = icons.get("x-circle") .. " ",
            warning = icons.get("alert") .. " ",
            info = icons.get("info") .. " ",
            hint = icons.get("light-bulb") .. " ",
        },
    },
})

