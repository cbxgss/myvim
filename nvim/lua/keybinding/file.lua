-- 保存文件
vim.api.nvim_set_keymap("n", "<leader>w", ":w<CR>", {noremap = true, silent = false})
-- 退出文件
vim.api.nvim_set_keymap("n", "<leader>q", ":q!<CR>", {noremap = true, silent = false})
-- 退出vim
vim.api.nvim_set_keymap("n", "<leader>Q", ":qa!<CR>", {noremap = true, silent = false})
