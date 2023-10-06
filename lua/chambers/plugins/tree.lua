local nonicons_extention = require("nvim-nonicons.extentions.nvim-tree")

require("nvim-tree").setup({
    renderer = { icons = { glyphs = nonicons_extention.glyphs } },
})

