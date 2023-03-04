local code = {}

-- code["github/copilot.vim"] = {
-- 	lazy = true,
-- 	event = "InsertEnter",
-- 	config = require("code.copilot"),
-- }

-- code["neoclide/coc.nvim"] = {
--     branch = "release",
--     lazy = true,
--     event = "BufReadPost",
-- }

code["nvim-treesitter/nvim-treesitter"] = {
	lazy = true,
	build = function()
		if #vim.api.nvim_list_uis() ~= 0 then
			vim.api.nvim_command("TSUpdate")
		end
	end,
	event = { "CursorHold", "CursorHoldI" },
	config = require("code.treesitter"),
	dependencies = {
		{ "nvim-treesitter/nvim-treesitter-textobjects" },
		{ "mrjones2014/nvim-ts-rainbow" },
		{ "JoosepAlviste/nvim-ts-context-commentstring" },
		{ "mfussenegger/nvim-treehopper" },
		{ "andymass/vim-matchup" },
		{
			"windwp/nvim-ts-autotag",
			config = require("code.autotag"),
		},
		{
			"NvChad/nvim-colorizer.lua",
			config = require("code.colorizer"),
		},
		{
			"abecodes/tabout.nvim",
			config = require("code.tabout"),
		},
	},
}

-- code["preservim/nerdcommenter"] = {
--     lazy = true,
--     event = "BufReadPost",
--     cmd = "NERDCommenterToggle",
--     config = require("code.nerdcommenter"),
-- }

code["CRAG666/code_runner.nvim"] = {
    lazy = true,
    dependencies = "nvim-lua/plenary.nvim",
    event = "BufReadPost",
    config = require("code.code_runner"),
}

code["rainbowhxch/accelerated-jk.nvim"] = {
	lazy = true,
	event = "VeryLazy",
	config = require("code.accelerated-jk"),
}

code["windwp/nvim-autopairs"] = {
    lazy = true,
    event = "InsertEnter",
    config = require("code.nvim-autopairs"),
}

code["sindrets/diffview.nvim"] = {
	lazy = true,
	cmd = { "DiffviewOpen", "DiffviewClose" },
}

code["phaazon/hop.nvim"] = {
	lazy = true,
	branch = "v2",
	event = "BufReadPost",
	config = require("code.hop"),
}

return code
