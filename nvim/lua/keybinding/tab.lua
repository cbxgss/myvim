-- 多窗口
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
