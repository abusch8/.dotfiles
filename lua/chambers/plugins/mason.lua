local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")

mason.setup({})
mason_lspconfig.setup({
    ensure_installed = { "lua_ls" },
})

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

mason_lspconfig.setup_handlers({
    function (server_name)
        lspconfig[server_name].setup({})
    end,
    ["lua_ls"] = lua_ls_setup,
})

