local rename = require("inc_rename")

rename.setup({
    cmd_name = "Rename",
})

vim.keymap.set("n", "<leader>rn", ":Rename ")

