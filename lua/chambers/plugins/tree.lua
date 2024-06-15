local tree = require("nvim-tree")
local nonicons_extention = require("nvim-nonicons.extentions.nvim-tree")

tree.setup({
    view = {
        width = 40,
    },
    renderer = {
        icons = {
            glyphs = nonicons_extention.glyphs,
        },
    },
})

