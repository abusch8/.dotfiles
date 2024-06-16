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

    { "hrsh7th/nvim-cmp" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },
    { "hrsh7th/cmp-cmdline" },

    { "lewis6991/gitsigns.nvim" },
    { "windwp/nvim-autopairs" },
    { "numToStr/Comment.nvim" },
    { "smjonas/inc-rename.nvim" },
    { "L3MON4D3/LuaSnip" },

    { "ThePrimeagen/harpoon", branch = "harpoon2", dependencies = { "nvim-lua/plenary.nvim" } },
})

