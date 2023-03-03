local opt = require("toggleterm").setup({
    open_mapping = [[<c-\>]],
    start_in_insert = true,      -- 打开新终端后自动进入插入模式
    direction = 'horizontal'    -- 在当前buffer的下方打开新终端
})

-- 从插入模式变成终端模式
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", {noremap = true, silent = true})
