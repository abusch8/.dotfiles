local builtin = require("telescope.builtin")
local icons = require("nvim-nonicons")
local telescope = require("telescope")

vim.keymap.set("n", "<C-p>", ":lua require'telescope.builtin'.find_files({ previewer = false, layout_config = { width = 0.5, height = 0.5 } })<cr>")

vim.keymap.set("n", "<leader>ff", builtin.find_files)
vim.keymap.set("n", "<leader>fg", builtin.git_files)
vim.keymap.set("n", "<leader>fb", builtin.buffers)
vim.keymap.set("n", "<leader>fc", builtin.colorscheme)

telescope.setup({
    defaults = {
        prompt_prefix = "  " .. icons.get("telescope") .. "  ",
        selection_caret = " > ",
        entry_prefix = "   ",
    },
})

