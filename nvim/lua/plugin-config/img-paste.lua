vim.cmd([[
    autocmd FileType markdown nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
    let g:mdip_imgdir = "assets/" . expand('%:t:r')
    let g:mdip_imgname = 'image'
]])
