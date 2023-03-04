local lang = {}

lang["iamcco/markdown-preview.nvim"] = {
	lazy = true,
	ft = "markdown",
	build = ":call mkdp#util#install()",
    config = function()
        vim.g.mkdp_auto_start = 0
        vim.g.mkdp_theme = "dark"
        vim.g.mkdp_browser = "microsoft-edge-beta"
    end,
}

lang["dhruvasagar/vim-table-mode"] = {
    lazy = true,
    ft = "markdown",
}

lang["img-paste-devs/img-paste.vim"] = {
    lazy = true,
    ft = "markdown",
    config = function()
        vim.cmd([[
            autocmd FileType markdown nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
            let g:mdip_imgdir = "assets/" . expand('%:t:r')
            let g:mdip_imgname = 'image'
        ]])
    end,
}

lang["chrisbra/csv.vim"] = {
	lazy = true,
	ft = "csv",
}

return lang
