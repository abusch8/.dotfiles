local cmp = require("cmp")
local luasnip = require("luasnip")
local lspkind = require("lspkind")
local icons = require("nvim-nonicons")

cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    view = {
        entries = {
            name = "custom",
            selection_order = "near_cursor",
        },
    },
    formatting = {
        format = lspkind.cmp_format({
            mode = "symbol_text",
                symbol_map = {
                    Text = icons.get("typography") .. " ",
                    Method = icons.get("package") .. " ",
                    Function = icons.get("package") .. " ",
                    Constructor = icons.get("class") .. " ",
                    Field = icons.get("field") .. " ",
                    Variable = icons.get("variable") .. " ",
                    Class = icons.get("class") .. " ",
                    Interface = icons.get("interface") .. " ",
                    Module = icons.get("container") .. " ",
                    Property = icons.get("tag") .. " ",
                    Unit = icons.get("constant") .. " ",
                    Value = icons.get("number") .. " ",
                    Enum = icons.get("hash") .. " ",
                    Keyword = icons.get("keyword") .. " ",
                    Snippet = icons.get("snippet") .. " ",
                    Color = icons.get("paintbrush") .. " ",
                    File = icons.get("file") .. " ",
                    Reference = icons.get("mention") .. " ",
                    Folder = icons.get("file-directory") .. " ",
                    EnumMember = icons.get("constant") .. " ",
                    Constant = icons.get("constant") .. " ",
                    Struct = icons.get("struct") .. " ",
                    Event = icons.get("zap") .. " ",
                    Operator = icons.get("plus-circle") .. " ",
                    TypeParameter = icons.get("type") .. " ",
            },
        })
    },
    window = { },
    mapping = cmp.mapping.preset.insert({
        ["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
        ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" },
    }, {
        { name = "buffer" },
    }),
})

cmp.setup.cmdline({ "/", "?" }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = "buffer" },
    },
})

cmp.setup.cmdline(":", {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = "path" },
    }, {
        { name = "cmdline" },
    }),
    matching = { disallow_symbol_nonprefix_matching = false },
    formatting = {
        format = function(_, item)
            item.kind = ''
            return item
        end,
    },
})

