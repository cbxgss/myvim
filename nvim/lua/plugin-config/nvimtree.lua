require("nvim-tree").setup({
    filters = {
        custom = {          -- 不显示
            ".git/"
        },
        exclude = {         -- 显示
            ".gitignore"    --      .gitignore
        },
        dotfiles = true     -- 不显示隐藏文件
    },
    git = {     -- 以图标显示git 状态
        enable = true
    },
    view = {
        mappings = {
            list = {    -- 定义快捷键
                {key = "d", action = "create"},
                {key = "R", action = "rename"},
                {key = "D", action = "remove"}
            }
        }
    }
})

vim.api.nvim_set_keymap("n", "<F2>", ":NvimTreeToggle<CR>", {noremap = true, silent = true})
