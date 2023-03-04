local ui = {}

ui["goolord/alpha-nvim"] = {		-- 启动界面
	lazy = true,
	event = "BufWinEnter",
	config = require("ui.alpha"),
}
ui["akinsho/bufferline.nvim"] = {	-- 标签页
	lazy = true,
	dependencies = "nvim-tree/nvim-web-devicons",
	event = { "BufReadPost", "BufAdd", "BufNewFile" },
	config = require("ui.bufferline"),
}
ui["ojroques/nvim-bufdel"] = {		-- 更好的删除标签页
	lazy = true,
	event = "BufReadPost",
}
-- ui["catppuccin/nvim"] = {			-- catppuccin 配色
-- 	lazy = false,
-- 	name = "catppuccin",
-- 	config = require("ui.catppuccin"),
-- }
ui["Mofiqul/vscode.nvim"] = {		-- vscode 配色
	lazy = false,
	config = require("ui.vscode"),
}
-- ui["sainnhe/edge"] = {
-- 	lazy = true,
-- 	config = require("ui.edge"),
-- }
-- ui["j-hui/fidget.nvim"] = {			-- lsp
-- 	lazy = true,
-- 	event = "BufReadPost",
-- 	config = require("ui.fidget"),
-- }
ui["lewis6991/gitsigns.nvim"] = {		-- git
	lazy = true,
	event = { "CursorHold", "CursorHoldI" },
	config = require("ui.gitsigns"),
}
ui["lukas-reineke/indent-blankline.nvim"] = {	-- 缩进参考线
	lazy = true,
	event = "BufReadPost",
	config = require("ui.indent-blankline"),
}
ui["nvim-lualine/lualine.nvim"] = {		-- 状态栏
	lazy = true,
	dependencies = 'nvim-tree/nvim-web-devicons',
	event = { "BufReadPost", "BufAdd", "BufNewFile" },
	config = require("ui.lualine"),
}
ui["zbirenbaum/neodim"] = {
	lazy = true,
	event = "LspAttach",
	config = require("ui.neodim"),
}
ui["karb94/neoscroll.nvim"] = {			-- 更丝滑的滚动
	lazy = true,
	event = "BufReadPost",
	config = require("ui.neoscroll"),
}
-- ui["shaunsingh/nord.nvim"] = {			-- 配色
-- 	lazy = true,
-- 	config = require("ui.nord"),
-- }
ui["rcarriga/nvim-notify"] = {			-- 通知
	lazy = true,
	event = "VeryLazy",
	config = require("ui.notify"),
}
ui["folke/paint.nvim"] = {				-- 额外的高亮
	lazy = true,
	event = { "CursorHold", "CursorHoldI" },
	config = require("ui.paint"),
}
ui["dstein64/nvim-scrollview"] = {		-- 滚动条
	lazy = true,
	event = "BufReadPost",
	config = require("ui.scrollview"),
}
ui["edluffy/specs.nvim"] = {			-- 显示光标位置
	lazy = true,
	event = "CursorMoved",
	config = require("ui.specs"),
}

return ui
