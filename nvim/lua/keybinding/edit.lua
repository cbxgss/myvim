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
