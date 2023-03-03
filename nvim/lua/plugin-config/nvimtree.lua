require("nvim-tree").setup({
    filters = {
        custom = {          -- 不显示
            ".git/",
            "__pycache__",
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
                {key = "n", action = "create"},
                {key = "r", action = "rename"},
                {key = "<delete>", action = "remove"},
                {key = "<bs>", action = "remove"},
            }
        }
    }
})

vim.api.nvim_set_keymap("n", "<F2>", ":NvimTreeToggle<CR>", {noremap = true, silent = true})
