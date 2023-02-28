vim.opt.termguicolors = true
require("bufferline").setup{
    options = {
        mode = "buffer",
        number = "ordinal", -- 显示id
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                highlight = "Directory",
                text_align = "left"
            }
        }
    }
}

-- 快速在buffer间跳转
vim.api.nvim_set_keymap("n", "<a-1>", ":BufferLineGoToBuffer 1<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<a-2>", ":BufferLineGoToBuffer 2<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<a-3>", ":BufferLineGoToBuffer 3<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<a-4>", ":BufferLineGoToBuffer 4<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<a-5>", ":BufferLineGoToBuffer 5<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<a-6>", ":BufferLineGoToBuffer 6<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<a-7>", ":BufferLineGoToBuffer 7<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<a-8>", ":BufferLineGoToBuffer 8<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<a-9>", ":BufferLineGoToBuffer 9<CR>", {noremap = true, silent = true})
-- 下一个 / 上一个
vim.api.nvim_set_keymap("n", "bn", ":BufferLineCycleNext<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "bp", ":BufferLineCyclePrev<CR>", {noremap = true, silent = true})

-- 关闭当前buffer
vim.api.nvim_set_keymap("n", "bc", ":bdelete %<CR>:BufferLineGoToBuffer 1<CR>", {noremap = true, silent = true})

-- 选择 buffer 关闭
vim.api.nvim_set_keymap("n", "bP", ":BufferLinePickClose<CR>", {noremap = true, silent = true})
