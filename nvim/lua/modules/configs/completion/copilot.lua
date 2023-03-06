return function()
	vim.defer_fn(function()
		require("copilot").setup({
			cmp = {
				enabled = true,
				method = "getCompletionsCycling",
			},
			panel = {
				-- if true, it can interfere with completions in copilot-cmp
				enabled = true,
			},
			suggestion = {
				-- if true, it can interfere with completions in copilot-cmp
				enabled = true,
				auto_trigger = true,
				debounce = 75,
				keymap = {
                    -- 设置 tab 键接受
                    accept = "<A-y>",
					accept_word = false,
					accept_line = false,
					next = "<A-n>",
					prev = "<A-p>",
					dismiss = "<A-]>",
				},
			},
			filetypes = {
                ["*"] = true,
				-- ["dap-repl"] = false,
				-- ["big_file_disabled_ft"] = false,
			},
		})
	end, 100)
end
