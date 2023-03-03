local status, db = pcall(require, "dashboard")
if not status then
	vim.notify("没有找到 dashboard")
	return
end

-- db.setup({
--     theme = 'doom',
--     config = {
--         header = {
--             '   ⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣴⣶⣶⣶⣶⣶⠶⣶⣤⣤⣀⠀⠀⠀⠀⠀⠀ ',
--             ' ⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⣿⣿⣿⠁⠀⢀⠈⢿⢀⣀⠀⠹⣿⣿⣿⣦⣄⠀⠀⠀ ',
--             ' ⠀⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⠿⠀⠀⣟⡇⢘⣾⣽⠀⠀⡏⠉⠙⢛⣿⣷⡖⠀ ',
--             ' ⠀⠀⠀⠀⠀⣾⣿⣿⡿⠿⠷⠶⠤⠙⠒⠀⠒⢻⣿⣿⡷⠋⠀⠴⠞⠋⠁⢙⣿⣄ ',
--             ' ⠀⠀⠀⠀⢸⣿⣿⣯⣤⣤⣤⣤⣤⡄⠀⠀⠀⠀⠉⢹⡄⠀⠀⠀⠛⠛⠋⠉⠹⡇ ',
--             ' ⠀⠀⠀⠀⢸⣿⣿⠀⠀⠀⣀⣠⣤⣤⣤⣤⣤⣤⣤⣼⣇⣀⣀⣀⣛⣛⣒⣲⢾⡷ ',
--             ' ⢀⠤⠒⠒⢼⣿⣿⠶⠞⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀⣼⠃ ',
--             ' ⢮⠀⠀⠀⠀⣿⣿⣆⠀⠀⠻⣿⡿⠛⠉⠉⠁⠀⠉⠉⠛⠿⣿⣿⠟⠁⠀⣼⠃⠀ ',
--             ' ⠈⠓⠶⣶⣾⣿⣿⣿⣧⡀⠀⠈⠒⢤⣀⣀⡀⠀⠀⣀⣀⡠⠚⠁⠀⢀⡼⠃⠀⠀ ',
--             ' ⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣷⣤⣤⣤⣤⣭⣭⣭⣭⣭⣥⣤⣤⣤⣴⣟⠁     ',
--             '                                              '
--             },
--         center = {
--             {icon = "  ", icon_hl = 'Title', key = '1', desc = '最近会话   lastest session        ', keymap = "<leader>sl", action = "RestoreSession"},
--             {icon = "  ", icon_hl = 'Title', key = '2', desc = "最近文件   Recently opened files  ", keymap = "<leader>fh", action = "Telescope oldfiles"},
--             {icon = "  ", key = '3', desc = "搜索文件   Find File              ", desc_hl = 'String', keymap = "<leader>ff", action = "Telescope find_files"},
--             {icon = "  ", key = '4', desc = "搜索文件夹 File Browser           ", desc_hl = 'String', keymap = "<leader>fb", action = "Telescope file_browser"},
--             {icon = "  ", key = '6', desc = "配置文件   Personal dotfiles      ", keymap = "<leader>fe", action = "edit $MYVIMRC"}
--         },
--         footer = function()
--             local footer = {'', '🎉 Have fun with neovim'}
--             if packer_plugins ~= nil then
--                 local count = #vim.tbl_keys(packer_plugins)
--                 footer[2] = '🎉 neovim loaded ' .. count .. ' plugins'
--                 for key, value in pairs(packer_plugins) do
--                     table.insert(footer, '✨  ' .. key)
--                 end
--             end
--             print(footer)
--             return footer
--         end
--     }
-- })

db.setup({
    theme = 'hyper',
})