local global = require("core.global")

local function load_options()
	local global_local = {
		-- backupdir = global.cache_dir .. "backup/",
		-- directory = global.cache_dir .. "swap/",
		-- pumblend = 10,
		-- spellfile = global.cache_dir .. "spell/en.uft-8.add",
		-- viewdir = global.cache_dir .. "view/",
		-- winblend = 10,
		termguicolors = true,	-- 主题颜色
		encoding = "utf-8",		-- 编码
		tabstop = 4,			-- tab键转换为 4 个空格
		softtabstop = 4,
		expandtab = true,		-- 新行对齐当前行，tab转换为空格
		autoindent = true,
		smartindent = true,
		autoread = true,
		autowrite = true,
		scrolloff = 2,			-- 使用jk移动光标时，上下方保留8行
		sidescrolloff = 5,		-- 左右方保留5列
		list = true,			-- 显示空白字符
		listchars = "tab:»·,nbsp:+,trail:·,extends:→,precedes:←",
		number = true,			-- 显示行号
		relativenumber = true,	-- 显示相对行号
		cursorcolumn = true,	-- 高亮所在列
		cursorline = true,		-- 高亮所在行
		ruler = true,			-- 显示光标位置
		wrap = false,			-- 自动换行
		incsearch = true,		-- 边输入边搜索
		hlsearch = true,		-- 开启搜索匹配高亮
		wrapscan = true,
		smartcase = true,		-- 搜索时自行判断是否需要忽略大小写
		history = 2000,			-- 历史命令最多保存2000条
		backspace = "indent,eol,start",
		backup = false,
		backupskip = "/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*,*/shm/*,/private/var/*,.vault.vim",
		breakat = [[\ \	;:,!?]],
		breakindentopt = "shift:2,min:20",
		clipboard = "unnamedplus",
		cmdheight = 2, -- 0, 1, 2
		cmdwinheight = 5,
		complete = ".,w,b,k",
		completeopt = "menuone,noselect",
		concealcursor = "niv",
		conceallevel = 0,
		diffopt = "filler,iwhite,internal,algorithm:patience",
		display = "lastline",
		equalalways = false,
		errorbells = true,
		fileformats = "unix,mac,dos",
		foldenable = true,
		foldlevelstart = 99,
		formatoptions = "1jcroql",
		grepformat = "%f:%l:%c:%m",
		grepprg = "rg --hidden --vimgrep --smart-case --",
		helpheight = 12,
		hidden = true,
		ignorecase = true,
		inccommand = "nosplit",
		infercase = true,
		jumpoptions = "stack",
		laststatus = 2,
		linebreak = true,
		magic = true,
		mousescroll = "ver:3,hor:6",
		previewheight = 12,
		pumheight = 15,
		redrawtime = 1500,
		sessionoptions = "curdir,help,tabpages,winsize",
		shada = "!,'300,<50,@100,s10,h",
		shiftround = true,
		shiftwidth = 4,
		shortmess = "aoOTIcF",
		showbreak = "↳  ",
		showcmd = false,
		showmode = false,
		showtabline = 2,
		signcolumn = "yes",
		smarttab = true,
		splitbelow = true,
		splitright = true,
		startofline = false,
		swapfile = false,
		switchbuf = "usetab,uselast",
		synmaxcol = 2500,
		timeout = true,
		-- You will feel delay when you input <Space> at lazygit interface if you set it a positive value like 300(ms).
		timeoutlen = 0,
		ttimeout = true,
		ttimeoutlen = 0,
		undodir = global.cache_dir .. "undo/",
		undofile = true,
		-- Please do NOT set `updatetime` to above 500, otherwise most plugins may not work correctly
		updatetime = 200,
		viewoptions = "folds,cursor,curdir,slash,unix",
		virtualedit = "block",
		visualbell = true,
		whichwrap = "h,l,<,>,[,],~",
		wildignore = ".git,.hg,.svn,*.pyc,*.o,*.out,*.jpg,*.jpeg,*.png,*.gif,*.zip,**/tmp/**,*.DS_Store,**/node_modules/**,**/bower_modules/**",
		wildignorecase = true,
		winminwidth = 10,
		winwidth = 30,
		writebackup = false,
	}
	local function isempty(s)
		return s == nil or s == ""
	end

	-- custom python provider
	local conda_prefix = os.getenv("CONDA_PREFIX")
	if not isempty(conda_prefix) then
		print("Using conda python provider")
		vim.g.python_host_prog = conda_prefix .. "/bin/python"
		vim.g.python3_host_prog = conda_prefix .. "/bin/python"
	elseif global.is_mac then
		vim.g.python_host_prog = "/usr/bin/python"
		vim.g.python3_host_prog = "/usr/local/bin/python3"
	else
		vim.g.python_host_prog = "/usr/bin/python"
		vim.g.python3_host_prog = "/usr/bin/python3"
	end

	for name, value in pairs(global_local) do
		vim.o[name] = value
	end

	-- Fix sqlite3 missing-lib issue on Windows
	if global.is_windows then
		-- Download the DLLs form https://www.sqlite.org/download.html
		vim.g.sqlite_clib_path = global.home .. "/Documents/sqlite-dll-win64-x64-3400100/sqlite3.dll"
	end
end

load_options()
