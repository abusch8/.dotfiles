vim.g.mapleader = " "

vim.api.nvim_set_keymap("i", "<C-BS>", "<C-W>", {})
vim.api.nvim_set_keymap("i", "<A-BS>", "<C-W>", {})

vim.api.nvim_set_keymap("i", "<C-Del>", "<C-o>dw", {})
vim.api.nvim_set_keymap("i", "<A-Del>", "<C-o>dw", {})

vim.api.nvim_set_keymap("n", "<S-y>", "yy", {})

vim.api.nvim_set_keymap("n", "<leader>e", ":lua vim.diagnostic.open_float(0, {scope='line'})<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap('v', '<C-Insert>', '"+y', { noremap = true, silent = true })

