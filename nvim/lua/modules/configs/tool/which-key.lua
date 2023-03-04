return function()
	local icons = {
		ui = require("modules.utils.icons").get("ui"),
		misc = require("modules.utils.icons").get("misc"),
	}

	require("which-key").setup({
		plugins = {
			presets = {
				operators = false,
				motions = false,
				text_objects = false,
				windows = false,
				nav = false,
				z = true,
				g = true,
			},
		},

		icons = {
			breadcrumb = icons.ui.Separator,
			separator = icons.misc.Vbar,
			group = icons.misc.Add,
		},

		window = {
			border = "none",
			position = "bottom",
			margin = { 1, 0, 1, 0 },
			padding = { 1, 1, 1, 1 },
			winblend = 0,
		},
	})

	require("which-key").register({
		["<leader>f"] = { name = "文件" },
		["<leader>t"] = { name = "翻译" },
		["<leader>s"] = { name = "会话" },
		["<leader>p"] = { name = "插件管理" },
		["<leader>h"] = { name = "hop跳转" },
		["<leader>g"] = { name = "git" },
		["<leader>gp"] = { name = "push & pull" },
        ["<leader>m"] = { name = "markdown" },
        ["<leader>c"] = { name = "注释" },
	})
end
