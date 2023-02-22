-- 光标移动
vim.api.nvim_set_keymap("n", "<leader>1", "^", {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<leader>2", "$", {noremap = true, silent = false})

-- 翻页
vim.api.nvim_set_keymap("n", "<C-d>", "10jzz", {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<C-u>", "10kzz", {noremap = true, silent = false})

-- 替换
vim.api.nvim_set_keymap("n", "<leader>r", ":%s/old/new/g", {noremap = true, silent = false})
