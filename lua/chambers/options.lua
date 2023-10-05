vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 4
vim.opt.signcolumn = "yes"

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true

vim.opt.wrap = false
vim.opt.smartcase = true
vim.opt.cursorline = true

vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 8

vim.opt.spell = true
vim.opt.spelllang = "en_us"

vim.api.nvim_exec([[
  autocmd BufWritePre * :%s/\s\+$//e
]], false)

