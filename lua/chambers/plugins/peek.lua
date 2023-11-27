local peek = require("peek")

peek.setup({
    theme = "light",
    app = 'webview',
})

vim.api.nvim_create_user_command('PeekOpen', peek.open, {})
vim.api.nvim_create_user_command('PeekClose', peek.close, {})

