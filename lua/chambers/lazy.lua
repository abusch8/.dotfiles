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

local lazy = require("lazy")

lazy.setup({
    { "folke/tokyonight.nvim", priority = 1000 },
    { "abusch8/nvim-nonicons", dependencies = { "nvim-tree/nvim-web-devicons" } },

    { "nvim-telescope/telescope.nvim", tag = "0.1.3", dependencies = { "nvim-lua/plenary.nvim" } },
    { "nvim-lualine/lualine.nvim" },
    { "kyazdani42/nvim-tree.lua" },

    { "nvim-treesitter/nvim-treesitter" },
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    { "neovim/nvim-lspconfig" },

    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },
    { "hrsh7th/cmp-cmdline" },
    { "hrsh7th/nvim-cmp" },

    { "lukas-reineke/indent-blankline.nvim" },
    { "akinsho/bufferline.nvim" },
    { "lewis6991/gitsigns.nvim" },
    { "windwp/nvim-autopairs" },
    { "numToStr/Comment.nvim" },
})

