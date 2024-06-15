local lualine = require("lualine")

lualine.setup({
    options = {
        component_separators = "",
        section_separators = "",
        globalstatus = true,
    },
    sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filename" },
        lualine_x = {
            {
                "encoding",
            },
            {
                "fileformat",
                symbols = {
                    unix = "LF",
                    dos = "CRLF",
                    mac = "CR",
                },
            },
            {
                "filetype",
            },
        },
        lualine_y = { "progress", "selectioncount" },
        lualine_z = { "location" },
    },
    extensions = { "nvim-tree" },
})

