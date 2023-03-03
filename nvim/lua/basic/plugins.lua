local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({
	-- --------------- 界面配置 -----------------
	-- 主题
	{"Mofiqul/vscode.nvim"},

	-- 目录
	{'nvim-tree/nvim-tree.lua', dependencies = {'nvim-tree/nvim-web-devicons'}, version = 'nightly'},

	-- 标签页
	{"akinsho/bufferline.nvim", dependencies = 'nvim-tree/nvim-web-devicons'},

	-- 启动界面
	{'glepnir/dashboard-nvim', event = 'VimEnter', dependencies = {'nvim-tree/nvim-web-devicons'}},

	-- 自动保存上次会话
	{'rmagatti/auto-session'},

	-- 状态栏
	{'nvim-lualine/lualine.nvim', dependencies = {'nvim-tree/nvim-web-devicons', lazy = true}},

	-- -- --------------- 编辑配置 -----------------
	-- -- 快捷键提示
	-- {"folke/which-key.nvim"},

	-- -- 快速注释
	-- {"preservim/nerdcommenter"},

	-- -- 翻译
	-- {'voldikss/vim-translator'},

	-- -- 模糊查询
	-- {'nvim-telescope/telescope.nvim', dependencies = {{'nvim-lua/plenary.nvim'}, {'nvim-treesitter/nvim-treesitter', build = function() require('nvim-treesitter.install').update({ with_sync = true }) end,}}},
	-- {'nvim-telescope/telescope-file-browser.nvim'},

	-- -- 终端
	-- {"akinsho/toggleterm.nvim"},

	-- -- code runner
	-- {'CRAG666/code_runner.nvim', dependencies = 'nvim-lua/plenary.nvim'},

	-- -- --------------- 自动补全 和 语法 -----------------
	-- -- 括号补全
	-- {'windwp/nvim-autopairs'},

	-- -- coc (一般使用 nvim-lspconfig + mason 但是不会配置, 只能用简单些的 coc)
	-- {'neoclide/coc.nvim', branch = 'release'},

	-- -- --------------- markdown ----------------
	-- { "iamcco/markdown-preview.nvim", build = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, },
	-- {"dhruvasagar/vim-table-mode"},
	-- {"img-paste-devs/img-paste.vim"},
})
