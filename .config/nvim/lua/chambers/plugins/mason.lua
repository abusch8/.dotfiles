local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")
local cmp_lsp = require("cmp_nvim_lsp")

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

local function lua_ls_setup()
    lspconfig.lua_ls.setup({
        settings = {
            Lua = {
                telemetry = {
                    enable = false,
                },
                diagnostics = {
                    globals = { "vim" },
                    disable = { "undefined-field", "missing-fields" },
                },
                workspace = {
                    library = vim.api.nvim_get_runtime_file("", true),
                    checkThirdParty = false,
                },
            },
        },
    })
end

mason_lspconfig.setup_handlers({
    function(server_name)
        lspconfig[server_name].setup({
            capabilities = cmp_lsp.default_capabilities(),
        })
    end,
    ["lua_ls"] = lua_ls_setup,
})

