local nonicons = require("nvim-nonicons")
local tokyonight = require("tokyonight")

nonicons.setup({})

tokyonight.setup({
    style = "storm", -- { storm, night, moon, day }
    lualine_bold = true,
})

vim.cmd[[ colorscheme tokyonight ]]

