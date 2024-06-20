local diffview = require("diffview")

diffview.setup({})

vim.keymap.set("n", "<leader>gg", ":DiffviewOpen<CR>")
-- vim.keymap.set("n", "<leader>gg", ":DiffviewClose<CR>")
