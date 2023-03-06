local bind = require("keymap.bind")
local map_cr = bind.map_cr
-- local map_cu = bind.map_cu
-- local map_cmd = bind.map_cmd
-- local map_callback = bind.map_callback

local plug_map = {
	-- bufferline 标签页 & nvim-bufdel 删除buffer
	-- :BufferLineGoToBuffer 1<CR>
	["n|bc"] = map_cr("BufDel"):with_noremap():with_silent():with_desc("关闭当前标签页"),
	-- ["n|bc"] = map_cr("bdelete %"):with_noremap():with_silent():with_desc("关闭当前标签页"),
	["n|bC"] = map_cr("BufferLinePickClose"):with_noremap():with_silent():with_desc("关闭选择标签页"),
	["n|<bn>"] = map_cr("BufferLineCycleNext"):with_noremap():with_silent():with_desc("下一标签页"),
	["n|<bp>"] = map_cr("BufferLineCyclePrev"):with_noremap():with_silent():with_desc("上一标签页"),
	["n|<bN>"] = map_cr("BufferLineMoveNext"):with_noremap():with_silent():with_desc("移动到后一标签页"),
	["n|<bP>"] = map_cr("BufferLineMovePrev"):with_noremap():with_silent():with_desc("移动到前一标签页"),
	-- ["n|<leader>be"] = map_cr("BufferLineSortByExtension"):with_noremap():with_desc("buffer: Sort by extension"),
	-- ["n|<leader>bd"] = map_cr("BufferLineSortByDirectory"):with_noremap():with_desc("buffer: Sort by direrctory"),
	["n|<A-1>"] = map_cr("BufferLineGoToBuffer 1"):with_noremap():with_silent():with_desc("标签页1"),
	["n|<A-2>"] = map_cr("BufferLineGoToBuffer 2"):with_noremap():with_silent():with_desc("标签页2"),
	["n|<A-3>"] = map_cr("BufferLineGoToBuffer 3"):with_noremap():with_silent():with_desc("标签页3"),
	["n|<A-4>"] = map_cr("BufferLineGoToBuffer 4"):with_noremap():with_silent():with_desc("标签页4"),
	["n|<A-5>"] = map_cr("BufferLineGoToBuffer 5"):with_noremap():with_silent():with_desc("标签页5"),
	["n|<A-6>"] = map_cr("BufferLineGoToBuffer 6"):with_noremap():with_silent():with_desc("标签页6"),
	["n|<A-7>"] = map_cr("BufferLineGoToBuffer 7"):with_noremap():with_silent():with_desc("标签页7"),
	["n|<A-8>"] = map_cr("BufferLineGoToBuffer 8"):with_noremap():with_silent():with_desc("标签页8"),
	["n|<A-9>"] = map_cr("BufferLineGoToBuffer 9"):with_noremap():with_silent():with_desc("标签页9"),
}

bind.nvim_load_mapping(plug_map)
