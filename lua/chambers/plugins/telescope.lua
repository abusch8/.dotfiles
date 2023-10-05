local builtin = require("telescope.builtin")

vim.keymap.set("n", "<C-p>", function ()
    if not pcall(builtin.git_files) then builtin.find_files() end
end)

vim.keymap.set("n", "<leader>ff", builtin.find_files)
vim.keymap.set("n", "<leader>fg", builtin.git_files)

local icons = require("nvim-nonicons")

require("telescope").setup({
    defaults = {
        prompt_prefix = "  " .. icons.get("telescope") .. "  ",
        selection_caret = " > ",
        entry_prefix = "   ",
    },
})

