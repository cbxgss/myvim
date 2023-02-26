require('nvim-treesitter.configs').setup({
    -- 支持的语言
    ensure_installed = {"html", "css", "vim", "lua", "javascript", "typescript", "c", "cpp", "python"},
    highlight = {   -- 启用代码高亮
        enable = true,
        additional_vim_regex_highlighting = false
    },
    incremental_selection = {   --启用增量选择
        enable = true,
        keymaps = {
            init_selection = '<CR>',
            node_incremental = '<CR>',
            node_decremental = '<BS>',
            scope_incremental = '<TAB>'
        }
    },
    indent = {  -- 启用基于 Treesitter 的代码格式化(=)
        enable = true
    },
})
-- 开启代码折叠
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
-- 默认不折叠
vim.wo.foldlevel = 99

-- 保存文件时自动格式化
-- local auto_indent = vim.api.nvim_create_augroup("AUTO_INDENT", {clear = true})
-- vim.api.nvim_create_autocmd({"BufWritePost"}, {
--     pattern = "*",
--     group = auto_indent,
--     command = 'normal! gg=G``'
-- })
