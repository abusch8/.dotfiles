local telescope = require("telescope")
local builtin = require("telescope.builtin")
local icons = require("nvim-nonicons")

local function find_files()
    builtin.find_files({
        previewer = false,
        layout_config = {
            width = 0.5,
            height = 0.5,
        },
        file_ignore_patterns = {
            ".git",
            "build",
            "dist",
            "node_modules",
            "target",
        },
    })
end

vim.keymap.set("n", "<C-p>", find_files)

vim.keymap.set("n", "<leader>ff", builtin.find_files)
vim.keymap.set("n", "<leader>fg", builtin.live_grep)
vim.keymap.set("n", "<leader>fb", builtin.buffers)
vim.keymap.set("n", "<leader>fc", builtin.colorscheme)
vim.keymap.set("n", "<leader>fh", builtin.help_tags)

telescope.setup({
    defaults = {
        prompt_prefix = "  " .. icons.get("telescope") .. "  ",
        selection_caret = " > ",
        entry_prefix = "   ",
    },
    pickers = {
        find_files = {
            hidden = true,
        },
    },
})

