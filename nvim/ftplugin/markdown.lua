vim.api.nvim_set_keymap("", "<F5>", "<Plug>MarkdownPreview", {noremap = true, silent = false})
vim.api.nvim_set_keymap("", "<F6>", "<Plug>MarkdownPreviewStop", {noremap = true, silent = false})

-- markdown-preview
vim.cmd([[
    let g:mkdp_auto_start = 0
    let g:mkdp_theme = 'dark'
    let g:mkdp_browser = 'microsoft-edge-beta'
]])

-- img-paste
vim.cmd([[
    autocmd FileType markdown nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
    let g:mdip_imgdir = "assets/" . expand('%:t:r')
    let g:mdip_imgname = 'image'
]])
