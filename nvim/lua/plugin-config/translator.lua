-- 翻译输出到 vim 输出
vim.api.nvim_set_keymap("n", "<leader>tl", "<Plug>Translate>", {noremap = true, silent = false})
vim.api.nvim_set_keymap("v", "<leader>tl", "<Plug>TranslateV>", {noremap = true, silent = false})
-- 翻译输出到一个子窗口
vim.api.nvim_set_keymap("n", "<leader>tw", "<Plug>TranslateW>", {noremap = true, silent = false})
vim.api.nvim_set_keymap("v", "<leader>tw", "<Plug>TranslateWV>", {noremap = true, silent = false})
