require("which-key").setup({})

local wk = require("which-key")
wk.register({
    ["<leader>f"] = { name = "文件搜索" },
    -- ["<leader>ff"] = { ":edit $MYVIMRC<CR>", "Open vimrc" },
    -- ["<leader>fs"] = { ":source $MYVIMRC<CR>", "reload vimrc", noremap = true },
    -- ["<leader>fn"] = { "New File" },
})
