local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

require("chambers/autocmds")
require("chambers/keymaps")
require("chambers/lazy")
require("chambers/options")
require("chambers/ui")

require("chambers/plugins/autopairs")
require("chambers/plugins/cmp")
require("chambers/plugins/comment")
require("chambers/plugins/gitsigns")
require("chambers/plugins/lualine")
require("chambers/plugins/luasnip")
require("chambers/plugins/mason")
require("chambers/plugins/rename")
require("chambers/plugins/telescope")
require("chambers/plugins/tree")
require("chambers/plugins/treesitter")

