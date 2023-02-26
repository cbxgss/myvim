return require('packer').startup(function(use)
	-- Packer
	use 'wbthomason/packer.nvim'

	-- 主题
	use 'Mofiqul/vscode.nvim'

	-- 标签页
	use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

	-- 目录
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
		'kyazdani42/nvim-web-devicons', -- optional, for file icons
		},
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}

	-- 启动界面
	use {'glepnir/dashboard-nvim'}

	-- 状态栏
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	-- 快捷键提示
	use {"folke/which-key.nvim"}

	-- 终端
	use {"akinsho/toggleterm.nvim", tag = 'v2.*'}

	-- code runner
	use { 'CRAG666/code_runner.nvim', requires = 'nvim-lua/plenary.nvim' }

	-- 模糊查询
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} , {
		'nvim-treesitter/nvim-treesitter',
		run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
		}}
	}

	-- 自动保存上次会话
	use {'rmagatti/auto-session'}

	-- 括号补全
	use {'jiangmiao/auto-pairs'}

	-- coc (一般使用 nvim-lspconfig + mason 但是不会配置, 只能用简单些的 coc)
	use {'neoclide/coc.nvim', branch = 'release'}

	-- Load on a combination of conditions: specific filetypes or commands
	-- Also run code after load (see the "config" key)
    use {
      'w0rp/ale',
      ft = {'sh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex'},
      cmd = 'ALEEnable',
      config = 'vim.cmd[[ALEEnable]]'
    }

    -- markdown
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

    use('dhruvasagar/vim-table-mode')

    use('img-paste-devs/img-paste.vim')

    -- 快速注释
    use('preservim/nerdcommenter')
end)
