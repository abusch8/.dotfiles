vim.api.nvim_create_autocmd("TermOpen", {
    pattern = "*",
    callback = function()
        vim.opt_local.number = false
        vim.opt_local.relativenumber = false
        vim.opt_local.spell = false
        vim.opt_local.signcolumn = "no"
    end,
})

-- Clear trailing white space on write
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    command = ":%s/\\s\\+$//e",
})

