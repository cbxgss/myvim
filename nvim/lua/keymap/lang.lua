local bind = require("keymap.bind")
local map_cr = bind.map_cr
-- local map_cu = bind.map_cu
-- local map_cmd = bind.map_cmd
-- local map_callback = bind.map_callback

local plug_map = {
	-- markdown-preview
	["n|<leader>ms"] = map_cr("MarkdownPreview"):with_noremap():with_silent():with_desc("预览"),
	["n|<leader>mc"] = map_cr("MarkdownPreviewStop"):with_noremap():with_silent():with_desc("取消预览"),
}

bind.nvim_load_mapping(plug_map)
