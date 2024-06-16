vim.cmd[[ filetype plugin indent on ]]
vim.cmd[[ syntax enable ]]

vim.fn.setenv("BASH_ENV", "~/.aliasrc")

-- Appearance
vim.opt.termguicolors = true
vim.opt.title = true
vim.opt.cmdheight = 0
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 4

-- Tabs and indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Scroll off
vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 8

-- Line wrap
vim.opt.wrap = false
vim.opt.breakindent = true
vim.opt.formatoptions = "l"
vim.opt.lbr = true

-- Key code timeout and tty speed
vim.opt.ttimeout = true
vim.opt.ttimeoutlen = 100
vim.opt.ttyfast = true

-- Disable swap files and backups
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false

-- Spellcheck
vim.opt.spell = true
vim.opt.spelllang = "en_us"

