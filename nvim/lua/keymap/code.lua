local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_cu = bind.map_cu
local map_cmd = bind.map_cmd
local map_callback = bind.map_callback
local et = bind.escape_termcode


local plug_map = {
    -- accelerate-jk 加速 jk
	["n|j"] = map_callback(function()
		return et("<Plug>(accelerated_jk_gj)")
	end):with_expr(),
	["n|k"] = map_callback(function()
		return et("<Plug>(accelerated_jk_gk)")
	end):with_expr(),

	-- hop
	["n|<leader>hc"] = map_cu("HopChar1"):with_noremap():with_desc("Hop: 字符"),
	["n|<leader>hh"] = map_cu("HopChar2"):with_noremap():with_desc("Hop: 双字符"),
	["n|<leader>hw"] = map_cu("HopWord"):with_noremap():with_desc("Hop: 词"),
	["n|<leader>hl"] = map_cu("HopLine"):with_noremap():with_desc("Hop: 行"),

	-- tabout
	["i|<A-h>"] = map_cmd("<Plug>(TaboutBackMulti)"):with_silent():with_noremap():with_desc("tabout: 尾"),
	["i|<A-l>"] = map_cmd("<Plug>(TaboutMulti)"):with_silent():with_noremap():with_desc("tabout: 头"),

    -- code_runner
    ["n|<F5>"] = map_cr("RunCode"):with_noremap():with_silent():with_desc("运行代码"),

	-- diffview
	["n|<leader>gd"] = map_cr("DiffviewOpen"):with_silent():with_noremap():with_desc("git: 显示 diff"),
	["n|<leader>gD"] = map_cr("DiffviewClose"):with_silent():with_noremap():with_desc("git: 关闭 diff"),
}

bind.nvim_load_mapping(plug_map)
