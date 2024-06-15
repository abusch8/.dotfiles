vim.g.mapleader = " "

vim.keymap.set("i", "<C-BS>", "<C-W>")
vim.keymap.set("i", "<A-BS>", "<C-W>")

vim.keymap.set("i", "<C-Del>", "<C-o>dw")
vim.keymap.set("i", "<A-Del>", "<C-o>dw")

vim.keymap.set("v", "<C-Insert>", "\"+y")

vim.keymap.set("v", "p", "\"_dp")

vim.keymap.set("n", "<leader>e", function() vim.diagnostic.open_float(0, { scope = "line" }) end)

