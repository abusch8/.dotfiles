vim.g.mapleader = " "

vim.keymap.set("i", "<C-BS>", "<C-W>", { noremap = true })
vim.keymap.set("i", "<A-BS>", "<C-W>", { noremap = true })

vim.keymap.set("i", "<C-Del>", "<C-o>dw", { noremap = true })
vim.keymap.set("i", "<A-Del>", "<C-o>dw", { noremap = true })

vim.keymap.set("v", "<C-Insert>", "\"+y", { noremap = true })

vim.keymap.set("v", "p", "\"_dp", { noremap = true })

vim.keymap.set("n", "<leader>e", function() vim.diagnostic.open_float(0, { scope = "line" }) end)

vim.keymap.set("n", "q", "<nop>", { noremap = true })
vim.keymap.set("n", "qq", "q", { noremap = true })

