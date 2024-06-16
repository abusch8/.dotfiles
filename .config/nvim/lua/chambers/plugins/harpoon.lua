local harpoon = require("harpoon")
local telescope_config = require("telescope.config")
local telescope_pickers = require("telescope.pickers")
local telescope_finders = require("telescope.finders")

harpoon.setup({})

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>d", function() harpoon:list():remove() end)

vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-l>", function() harpoon:list():select(4) end)

local conf = telescope_config.values
local function toggle_telescope(harpoon_files)
    local file_paths = {}
    for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
    end

    telescope_pickers.new({}, {
        prompt_title = "Harpoon",
        finder = telescope_finders.new_table({ results = file_paths }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
    }):find()
end

vim.keymap.set("n", "<leader>fj", function() toggle_telescope(harpoon:list()) end, { desc = "Open harpoon window" })

