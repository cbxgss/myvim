require("telescope").load_extension "file_browser"

-- 查找文件
vim.api.nvim_set_keymap("n", "<leader>ff", "<Cmd>Telescope find_files<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-p>", "<Cmd>Telescope find_files<CR>", {noremap = true, silent = true})
-- 跨文件正则表达式查找
vim.api.nvim_set_keymap("n", "<leader>fg", "<Cmd>Telescope live_grep<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-f>", "<Cmd>Telescope live_grep<CR>", {noremap = true, silent = true})
-- 打开书签表
vim.api.nvim_set_keymap("n", "<leader>fm", "<Cmd>Telescope marks<CR>", {noremap = true, silent = true})
-- 跳转表
vim.api.nvim_set_keymap("n", "<leader>fj", "<Cmd>Telescope jumplist<CR>", {noremap = true, silent = true})
