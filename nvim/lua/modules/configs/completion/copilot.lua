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
					accept = "<C-y>",
					accept_word = false,
					accept_line = false,
					next = "<C-n>",
					prev = "<C-p>",
					dismiss = "<C-]>",
				},
			},
			filetypes = {
				-- ["dap-repl"] = false,
				-- ["big_file_disabled_ft"] = false,
			},
		})
	end, 100)
end
