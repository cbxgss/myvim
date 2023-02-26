vim.cmd([[
    " 使用默认的键映射
    let g:NERDCreateDefaultMappings = 1
    " 默认情况下，在注释分隔符后添加空格
    let g:NERDSpaceDelims = 1
    " 按行对齐注释分隔符左对齐，而不是按代码缩进
    let g:NERDDefaultAlign = 'left'
    " 添加您自己的自定义格式或覆盖默认格式（你懂的）
    let g:NERDCustomDelimiters = { 'php': { 'left': '/*','right': '*/' },'html': { 'left': '<!--','right': '-->' },'py': { 'left': '#' },'sh': { 'left': '#' } }
    " 启用nerdcommenttoggle检查是否对所有选定行进行了注释
    let g:NERDToggleCheckAllLines = 1
]])
vim.api.nvim_set_keymap("", "<C-/>", "<Leader>c<space>", {noremap = true, silent = false})
