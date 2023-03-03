-- 编辑 ---------------------------------------------------------------------
-- 光标移动
vim.api.nvim_set_keymap("n", "<leader>1", "^", {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<leader>2", "$", {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "gg", "gg^", {noremap = true, silent = false})
-- 全选保存
vim.api.nvim_set_keymap("n", "<C-a>", "gg^VG", {noremap = true, silent = false})
vim.api.nvim_set_keymap("i", "<C-a>", "<ESC>gg^VG", {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", {noremap = true, silent = false})
vim.api.nvim_set_keymap("i", "<C-s>", "<ESC>:w<CR>a", {noremap = true, silent = false})
-- 复制粘贴，剪切
vim.api.nvim_set_keymap("v", "<C-c>", "\"+y", {noremap = true, silent = false})
vim.api.nvim_set_keymap("", "<C-v>", "\"+p", {noremap = true, silent = false})
vim.api.nvim_set_keymap("", "<C-x>", "dd", {noremap = true, silent = false})
-- <C-z> 撤销, <C-r> 重做
vim.api.nvim_set_keymap("", "<C-z>", "u", {noremap = true, silent = false})

-- 翻页
vim.api.nvim_set_keymap("", "<C-d>", "10jzz", {noremap = true, silent = false})
vim.api.nvim_set_keymap("", "<C-u>", "10kzz", {noremap = true, silent = false})

-- 替换
vim.api.nvim_set_keymap("n", "<leader>r", ":%s/old/new/g", {noremap = true, silent = false})

-- 多窗口 ---------------------------------------------------------------------
--  打开 | / ——
vim.api.nvim_set_keymap("n", "sv", ":vsp<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "sh", ":sp<CR>", {noremap = true, silent = true})
--  关闭 自己 / else
vim.api.nvim_set_keymap("n", "sc", ":close<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "sC", ":only<CR>", {noremap = true, silent = true})
--  多窗口跳转
vim.api.nvim_set_keymap("n", "<a-h>", "<C-w>h", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<a-l>", "<C-w>l", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<a-j>", "<C-w>j", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<a-k>", "<C-w>k", {noremap = true, silent = true})

-- 文件 ---------------------------------------------------------------------
-- 保存文件
vim.api.nvim_set_keymap("n", "<leader>w", ":w<CR>", {noremap = true, silent = false})
-- 退出文件
vim.api.nvim_set_keymap("n", "<leader>q", ":q!<CR>", {noremap = true, silent = false})
-- 退出vim
vim.api.nvim_set_keymap("n", "<leader>Q", ":qa!<CR>", {noremap = true, silent = false})

-- 其他 ---------------------------------------------------------------------
-- 使用 <C-u> 将光标所在单词转化为全大写
vim.api.nvim_set_keymap("i", "<C-u>", "<esc>viwUwa", {noremap = true, silent = true})
-- 使用 <C-l> 将光标所在单词转化为全小写
vim.api.nvim_set_keymap("i", "<C-l>", "<esc>viwuwa", {noremap = true, silent = true})

-- 快速打开vimrc文件
vim.api.nvim_set_keymap("n", "<leader>fe", ":e $MYVIMRC<CR>", {noremap = true, silent = false})
-- 快速启用 vimrc
-- vim.api.nvim_set_keymap("n", "<leader>Fe", "source $MYVIMRC<CR>", {noremap = true, silent = false})
