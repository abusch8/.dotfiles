local nonicons = require("nvim-nonicons")
local tokyonight = require("tokyonight")

nonicons.setup({})

local function on_highlights(hl, c)
    hl.EndOfBuffer = {
        fg = hl.LineNr.fg,
    }
    hl.NvimTreeEndOfBuffer = {
        fg = c.bg_dark,
    }
end

tokyonight.setup({
    style = "storm", -- { storm, night, moon, day }
    lualine_bold = true,
    on_highlights = on_highlights,
})

vim.cmd[[ colorscheme tokyonight ]]

