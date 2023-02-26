require("which-key").setup({})

local wk = require("which-key")
wk.register({
    ["<leader>f"] = { name = "文件搜索" },
    ["<leader>c"] = { name = "注释" },
})
