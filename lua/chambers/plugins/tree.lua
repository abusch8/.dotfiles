local nonicons_extention = require("nvim-nonicons.extentions.nvim-tree")
local tree = require("nvim-tree")

tree.setup({
    renderer = {
        icons = {
            glyphs = nonicons_extention.glyphs,
        },
    },
})

