local lualine = require("lualine")
local icons = require("nvim-nonicons")

local function show_macro_recording()
    local recording_register = vim.fn.reg_recording()
    if recording_register == "" then
        return ""
    else
        return "Recording @" .. recording_register
    end
end

vim.api.nvim_create_autocmd("RecordingEnter", {
    callback = function()
        lualine.refresh({
            place = { "statusline" },
        })
    end,
})

vim.api.nvim_create_autocmd("RecordingLeave", {
    callback = function()
        local timer = vim.loop.new_timer()
        timer:start(50, 0, vim.schedule_wrap(function() lualine.refresh({ place = { "statusline" } }) end))
    end,
})

lualine.setup({
    options = {
        component_separators = "",
        section_separators = "",
        refresh = {
            statusline = 500,
            tabline = 500,
            winbar = 500,
        },
    },
    sections = {
        lualine_a = { "mode" },
        lualine_b = {
            {
                "branch",
            },
            {
                "diff",
            },
            {
                "diagnostics",
                symbols = {
                    error = icons.get("x-circle") .. " ",
                    warn = icons.get("alert") .. " ",
                    info = icons.get("info") .. " ",
                    hint = icons.get("light-bulb") .. " ",
                },
            },
            {
                "recording",
                fmt = show_macro_recording,
            },
        },
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

