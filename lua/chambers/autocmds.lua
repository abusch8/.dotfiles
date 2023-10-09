vim.api.nvim_exec([[ autocmd BufWritePre * :%s/\s\+$//e ]], false)

