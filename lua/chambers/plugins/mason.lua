local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")
local cmp_lsp = require("cmp_nvim_lsp")

local function lua_ls_setup()
    lspconfig.lua_ls.setup({
        settings = {
            Lua = {
                diagnostics = {
                    globals = { "vim" },
                },
            },
        },
    })
end

mason.setup({})

mason_lspconfig.setup({
    ensure_installed = {
        "eslint",
        "lua_ls",
        "rust_analyzer",
        "tsserver",
        "vimls",
    },
})

mason_lspconfig.setup_handlers({
    function(server_name)
        lspconfig[server_name].setup({
            capabilities = cmp_lsp.default_capabilities(),
        })
    end,
    ["lua_ls"] = lua_ls_setup,
})

