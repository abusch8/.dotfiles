vim.api.nvim_create_autocmd("TermOpen", {
    pattern = "*",
    callback = function()
        vim.opt_local.number = false
        vim.opt_local.relativenumber = false
        vim.opt_local.spell = false
        vim.opt_local.signcolumn = "no"
    end,
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "help", "man", "qf" },
    callback = function() vim.opt_local.spell = false end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    command = ":%s/\\s\\+$//e",
})

vim.api.nvim_create_autocmd("DiagnosticChanged", {
    pattern = "*",
    callback = function() vim.diagnostic.setqflist({ open = false }) end,
})

