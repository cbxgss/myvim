-- 使用 <C-u> 将光标所在单词转化为全大写
vim.api.nvim_set_keymap("i", "<C-u>", "<esc>viwUwa", {noremap = true, silent = true})
-- 使用 <C-l> 将光标所在单词转化为全小写
vim.api.nvim_set_keymap("i", "<C-l>", "<esc>viwuwa", {noremap = true, silent = true})

-- 快速打开vimrc文件
vim.api.nvim_set_keymap("n", "<leader>fe", ":e $MYVIMRC<CR>", {noremap = true, silent = false})
-- 快速启用 vimrc
-- vim.api.nvim_set_keymap("n", "<leader>Fe", "source $MYVIMRC<CR>", {noremap = true, silent = false})
