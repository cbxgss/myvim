local bind = require("keymap.bind")
local map_cr = bind.map_cr
-- local map_cu = bind.map_cu
local map_cmd = bind.map_cmd

local core_map = {
	-- -------------------------- 命令模式 ---------------------
	-- 打开配置文件
	["n|<leader>fe"] = map_cr("e $MYVIMRC"):with_desc("打开nvim配置文件"),
	["n|<leader>fE"] = map_cr("source $MYVIMRC"):with_desc("重新加载nvim配置文件"),
	-- ctrl 快捷键
	["n|<C-a>"] = map_cmd("ggVG"):with_noremap():with_desc("全选"),
	["n|<C-s>"] = map_cr("w"):with_noremap():with_desc("保存"),
	["n|<C-S-s>"] = map_cr("w ! sudo tee % >/dev/null"):with_noremap()
	:with_desc("TDDO: 保存 root 文件"),
	["n|<C-v>"] = map_cmd("\"+p"):with_noremap():with_desc("粘贴"),
	["n|<C-x>"] = map_cmd("dd"):with_noremap():with_desc("剪切一行"),
	["n|<C-z>"] = map_cmd("u"):with_noremap():with_desc("撤销"),
	-- 翻页
	["n|<C-d>"] = map_cmd("10j"):with_noremap():with_silent():with_desc("下翻页"),
	["n|<C-u>"] = map_cmd("10k"):with_noremap():with_silent():with_desc("上翻页"),
	-- 文件
	["n|<leader>w"] = map_cr("w"):with_noremap():with_desc("保存"),
	["n|<leader>q"] = map_cr("q!"):with_noremap():with_desc("退出"),
	["n|<leader>Q"] = map_cr("qa!"):with_noremap():with_desc("退出全部文件"),
	-- 光标移动
	["n|<leader>1"] = map_cmd("^"):with_noremap():with_desc("移动光标到行首"),
	["n|<leader>2"] = map_cmd("$"):with_noremap():with_desc("移动光标到行尾"),
	-- 替换
	["n|<leader>r"] = map_cmd(":%s/old/new/g"):with_noremap():with_desc("替换文本"),
	-- 窗口
	["n|sv"] = map_cr("vsp"):with_noremap():with_silent():with_desc("| 分屏"),
	["n|sh"] = map_cr("sp"):with_noremap():with_silent():with_desc("-- 分屏"),
	["n|sc"] = map_cr("close"):with_noremap():with_silent():with_desc("关闭当前窗口"),
	["n|sC"] = map_cr("only"):with_noremap():with_silent():with_desc("关闭其他窗口"),
	["n|<a-h>"] = map_cmd("<C-w>h"):with_noremap():with_silent():with_desc("左窗口"),
	["n|<a-j>"] = map_cmd("<C-w>j"):with_noremap():with_silent():with_desc("下窗口"),
	["n|<a-k>"] = map_cmd("<C-w>k"):with_noremap():with_silent():with_desc("上窗口"),
	["n|<a-l>"] = map_cmd("<C-w>l"):with_noremap():with_silent():with_desc("右窗口"),
	-- --------------------------- 输入模式 --------------------
	-- ctrl 快捷键
	["i|<C-a>"] = map_cmd("<ESC>ggVG"):with_noremap():with_desc("全选"),
	["i|<C-v>"] = map_cmd("\"+p"):with_noremap():with_desc("粘贴"),
	-- --------------------------- 可视模式 --------------------
	-- ctrl 快捷键
	["v|<C-c>"] = map_cmd("\"+y"):with_noremap():with_desc("复制"),
	["v|<C-v>"] = map_cmd("\"+p"):with_noremap():with_desc("粘贴"),
	-- -- Suckless
	-- ["n|<S-Tab>"] = map_cr("normal za"):with_noremap():with_silent():with_desc("editn: Toggle code fold"),
	-- ["n|Y"] = map_cmd("y$"):with_desc("editn: Yank text to EOL"),
	-- ["n|D"] = map_cmd("d$"):with_desc("editn: Delete text to EOL"),
	-- ["n|n"] = map_cmd("nzzzv"):with_noremap():with_desc("editn: Next search result"),
	-- ["n|N"] = map_cmd("Nzzzv"):with_noremap():with_desc("editn: Prev search result"),
	-- ["n|J"] = map_cmd("mzJ`z"):with_noremap():with_desc("editn: Join next line"),
	-- ["n|<C-h>"] = map_cmd("<C-w>h"):with_noremap():with_desc("window: Focus left"),
	-- ["n|<C-l>"] = map_cmd("<C-w>l"):with_noremap():with_desc("window: Focus right"),
	-- ["n|<C-j>"] = map_cmd("<C-w>j"):with_noremap():with_desc("window: Focus down"),
	-- ["n|<C-k>"] = map_cmd("<C-w>k"):with_noremap():with_desc("window: Focus up"),
	-- ["t|<C-h>"] = map_cmd("<Cmd>wincmd h<CR>"):with_silent():with_noremap():with_desc("window: Focus left"),
	-- ["t|<C-l>"] = map_cmd("<Cmd>wincmd l<CR>"):with_silent():with_noremap():with_desc("window: Focus right"),
	-- ["t|<C-j>"] = map_cmd("<Cmd>wincmd j<CR>"):with_silent():with_noremap():with_desc("window: Focus down"),
	-- ["t|<C-k>"] = map_cmd("<Cmd>wincmd k<CR>"):with_silent():with_noremap():with_desc("window: Focus up"),
	-- ["n|<A-[>"] = map_cr("vertical resize -5"):with_silent():with_desc("window: Resize -5 vertically"),
	-- ["n|<A-]>"] = map_cr("vertical resize +5"):with_silent():with_desc("window: Resize +5 vertically"),
	-- ["n|<A-;>"] = map_cr("resize -2"):with_silent():with_desc("window: Resize -2 horizontally"),
	-- ["n|<A-'>"] = map_cr("resize +2"):with_silent():with_desc("window: Resize +2 horizontally"),
	-- ["n|<C-q>"] = map_cmd(":wq<CR>"):with_desc("editn: Save file and quit"),
	-- ["n|<A-S-q>"] = map_cmd(":q!<CR>"):with_desc("editn: Force quit"),
	-- ["n|<leader>o"] = map_cr("setlocal spell! spelllang=en_us"):with_desc("editn: Toggle spell check"),
	-- -- Insert mode
	-- ["i|<C-u>"] = map_cmd("<C-G>u<C-U>"):with_noremap():with_desc("editi: Delete previous block"),
	-- ["i|<C-b>"] = map_cmd("<Left>"):with_noremap():with_desc("editi: Move cursor to left"),
	-- ["i|<C-s>"] = map_cmd("<Esc>:w<CR>"):with_desc("editi: Save file"),
	-- ["i|<C-q>"] = map_cmd("<Esc>:wq<CR>"):with_desc("editi: Save file and quit"),
	-- -- Command mode
	-- ["c|<C-b>"] = map_cmd("<Left>"):with_noremap():with_desc("editc: Left"),
	-- ["c|<C-f>"] = map_cmd("<Right>"):with_noremap():with_desc("editc: Right"),
	-- ["c|<C-a>"] = map_cmd("<Home>"):with_noremap():with_desc("editc: Home"),
	-- ["c|<C-e>"] = map_cmd("<End>"):with_noremap():with_desc("editc: End"),
	-- ["c|<C-d>"] = map_cmd("<Del>"):with_noremap():with_desc("editc: Delete"),
	-- ["c|<C-h>"] = map_cmd("<BS>"):with_noremap():with_desc("editc: Backspace"),
	-- ["c|<C-t>"] = map_cmd([[<C-R>=expand("%:p:h") . "/" <CR>]])
	-- 	:with_noremap()
	-- 	:with_desc("editc: Complete path of current file"),
	-- -- Visual mode
	-- ["v|J"] = map_cmd(":m '>+1<CR>gv=gv"):with_desc("editv: Move this line down"),
	-- ["v|K"] = map_cmd(":m '<-2<CR>gv=gv"):with_desc("editv: Move this line up"),
	-- ["v|<"] = map_cmd("<gv"):with_desc("editv: Decrease indent"),
	-- ["v|>"] = map_cmd(">gv"):with_desc("editv: Increase indent"),
}

bind.nvim_load_mapping(core_map)
