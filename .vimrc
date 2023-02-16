" 定义快捷键的前缀，即<Leader>
let mapleader=";"

"************************************************************ vim 基本设置*****************************************************************************"

" 不考虑和 vi 兼容
set nocompatible

" 这条命令告诉Vim在Insert模式下退格键何时可以删除光标之前的字符
"   indent: 缩进
"   eol:    断行
"   start:  进入 insert 模式后，可以删除前面的字符
set backspace=indent,eol,start

" vim 中间文件
set nobackup        " 不要 备份文件
set noswapfile      " 不要 swp文件

" vim 命令
set wildmenu 		" 命令模式自动补全
set history=50      " 命令记录

" vim 界面显示
set number          " 行号
set ruler       	" 显示 鼠标cursor 位置
set showcmd     	" 显示正在输入的命令
autocmd InsertEnter * se cul    " 用浅色高亮当前行"

" 文件编码
set encoding=utf-8
set fileencoding=utf-8

" 搜索
set hlsearch 		" 高亮
set ignorecase  	" 设置默认大小写不敏感查找
set smartcase   	" 如果有大小写字母，则切换到大小写敏感查找
set incsearch       " 增量式搜索 /之后时刻变化

" tab 设置
set ts=4            " tab 四个空格
set sw=4            " 缩进长度 4 个空格
set noexpandtab     " 使用 tab 而非空格

" 缩进"
set autoindent      " 自动缩进
set cindent 		" c++ 缩进
set cinoptions=g-1
set smartindent

" 在)]}的敌方，输入括号则匹配括号，没有则响一下
set showmatch

set mouse=n 		" 命令模式可以使用鼠标

set ai          	"自动对齐

" 使用的背景主题
" colorscheme Monokai_Gavin

" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on
" 根据侦测到的不同类型采用不同的缩进格式
filetype indent on

"-----------------------------------------------------------------文件打开、保存和关闭等-------------------"
" 打开文件
nmap <Leader>e :e<Space>
" 不关闭文件推出
nmap <Leader>z <C-Z>
" 定义快捷键 关闭当前分割窗口
nmap <Leader>q :q!<CR>
" 定义快捷键
nmap <Leader>w :w<CR>

"-----------------------------------------------------------------编辑-------------------------------------"

" 重新打开文档时光标回到文档关闭前的位置
if has("autocmd")
 autocmd BufReadPost *
 \ if line("'\"") > 0 && line ("'\"") <= line("$") |
 \ exe "normal g'\"" |
\ endif
endif

" 当前行绝对行号，其他行相对行号
set number
set relativenumber

" 删除光标所在单词
nmap e daw

" 去除高亮
nmap <Leader>f :noh<CR>

"显示匹配
set showmatch
"括号匹配
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap ' ''<ESC>i
inoremap " ""<ESC>i

" 全局替换
nmap <Leader>r :%s/old/new/g
" align 表格对齐
nmap <Leader>t :Tab /

" 和系统共用剪切板的复制"
""set clipboard=unnamed
vnoremap <C-c> "+y

"-----------------------------------------------------------------代码编辑---------------------------------"
"新建.c,.h,.sh,.Java文件，自动插入文件头
autocmd BufNewFile *.cpp,*.[ch],*.Java,*.go exec ":call SetTitle()"

"""定义函数SetTitle，自动插入文件头
func SetTitle()
    call setline(1, "/* ************************************************************************")
    call append(line("."),   "> File Name:     ".expand("%"))
    call append(line(".")+1, "> Author:        程荣")
    call append(line(".")+2, "> mail:          chengrong@tju.edu.cn")
    call append(line(".")+3, "> Created Time:  ".strftime("%c"))
    call append(line(".")+4, "> Description:   ")
    call append(line(".")+5, " ************************************************************************/")
    call append(line(".")+6, "")
    let pos=[0,6,20,0]
    call setpos(".", pos)
endfunc

" 开启语义分析
syntax enable
syntax on

"注释
" vim-commentary style set 注释针对不同语言的注释方法
autocmd FileType cpp set commentstring=//\ %s
autocmd FileType cpp inoremap <Leader>/ /*  */<ESC>hhi

"花括号自动格式化，首行一个tab
autocmd FileType cpp,java inoremap { {<CR>}<ESC>kA<CR>

" VIM支持多种文本折叠方式，我VIM多用于编码，所以选择符合编程语言语法的代码折叠方式。
set foldmethod=syntax
" 启动vim时打开所有折叠代码。
set nofen
" 折叠命令
" zc 折叠
" zC 对所在范围内所有嵌套的折叠点进行折叠
" zo 展开折叠
" zO 对所在范围内所有嵌套的折叠点展开

"快速切换到上一个文件
""nmap <Leader>fj :bn<CR>
""nmap <Leader>fk :bp<CR>

"-----------------------------------------------------------------代码运行---------------------------------"
" shellescape(): 将括号内的字符串中，如果有空格就转义"
" expand()： 获取当前文件的目录等信息
"   expand('%:p'): 当前文件绝对路径
"   expand('%:r'): 当前文件名，去掉后缀
autocmd filetype python nnoremap <F1> :w <bar> exec '!python '.shellescape('%')<CR> autocmd filetype c nnoremap <F1> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F1> :w <bar> exec '!g++ -pthread '.shellescape('%').' -o '.shellescape('%:r').'.bin && ./'.shellescape('%:r').'.bin'<CR>
autocmd Filetype java nnoremap <F1> :w <bar> exec '!javac '.shellescape('%'). ' -d ./bin'<CR>
autocmd filetype java nnoremap <F2> :w <bar> exec '!java -cp ./bin '.shellescape('%:r')<CR>

"-----------------------------------------------------------------光标移动---------------------------------"
" 快速移动到行首，行尾
map <Leader>1 ^
map <Leader>2 $

"-----------------------------------------------------------------翻页--------------------------------------"
" 向下翻半屏
nmap <Leader>u <C-U>
" 向上翻半屏
nmap <Leader>d <C-D>

"-----------------------------------------------------------------窗口--------------------------------------"
" 设置快捷键gs遍历各分割窗口。快捷键速记法：goto the next spilt window
nnoremap <Leader>g <C-W><C-W>
" 向左
nnoremap <leader>h <C-W><C-H>
" 向右
nnoremap <leader>l <C-W><C-L>
" 向上
nnoremap <Leader>k <C-W><C-K>
" 向下
nnoremap <Leader>j <C-W><C-J>
" 水平分隔
nmap <Leader>s :Sex<CR>
" 竖直分隔
nmap <Leader>v :Vex<CR>

" 显示标签页
set showtabline=2

"***************************************************************************************************************************************************************************"

call plug#begin('~/.vim/plugged')

    "文件列表
    Plug 'preservim/nerdtree'
    " 使用NERDTree插件查看工程文件。设置快捷键
    nnoremap <silent> <Leader>n  :NERDTreeToggle <CR>
    " 设置NERDTree子窗口位置
    let NERDTreeWinPos="left"
    " 设置忽略的文件
    let NERDTreeIgnore=['\.vim$', '\~$', '\.o$', '\.d$', '\.a$', '\.out$', '\.tgz$']


    "文件列表文件图标
    Plug 'ryanoasis/vim-devicons'

    "vim启动时，过去编辑文件列表
    Plug 'mhinz/vim-startify'

	" 代码片段
	Plug 'honza/vim-snippets'

	" 多文件打开时标签
	Plug 'fholgado/minibufexpl.vim'
	let g:miniBufExplMapWindowNavVim = 1
	let g:miniBufExplMapWindowNavArrows = 1
  	let g:miniBufExplMapCTabSwitchBufs = 1
  	let g:miniBufExplModSelTarget = 1


    " COC 自动补全 -------------------------------------------------------------------
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    nmap <silent> gd <Plug>(coc-definition)
    nmap <silent> gy <Plug>(coc-type-definition)
    nmap <silent> gi <Plug>(coc-implementation)
    nmap <silent> gr <Plug>(coc-references)

    " coc-snippets
    " Use <C-l> for trigger snippet expand.
    imap <C-l> <Plug>(coc-snippets-expand)
    " Use <C-j> for select text for visual placeholder of snippet.
    vmap <C-j> <Plug>(coc-snippets-select)
    " Use <C-j> for jump to next placeholder, it's default of coc.nvim
    let g:coc_snippet_next = '<c-j>'
    " Use <C-k> for jump to previous placeholder, it's default of coc.nvim
    let g:coc_snippet_prev = '<c-k>'
    " Use <C-j> for both expand and jump (make expand higher priority.)
    imap <C-j> <Plug>(coc-snippets-expand-jump)
    " Use <leader>x for convert visual selected code to snippet
    xmap <leader>x  <Plug>(coc-convert-snippet)
    

	" 编辑类插件 ----------------------------------------------------------------------

    "多光标: github readme
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}


    "tab智能补全: 允许使用 tab 来选择自动补全
    Plug 'ervandew/supertab'
	let g:SuperTabDefaultCompletionType="context"


    "彩虹括号
    Plug 'kien/rainbow_parentheses.vim'


    "真彩色
    Plug 'tpope/vim-sensible'


	" 代码编辑类插件 -------------------------------------------------------------------
	
	" .h .cpp 文件切换
	Plug 'vim-scripts/a.vim'
	":A 	切换 .h 和 .cpp 文件
	":AS 	竖直分屏得到 对应 .h 或 .cpp 文件
	":AV 	水平分屏得到 对应 .h 或 .cpp 文件
	":AT 	在 vim 内打开一个新的标签页
	":AN cycles through matches
	":IH switches to file under cursor
	":IHS splits and switches
	":IHV vertical splits and switches
	":IHT new tab and switches
	":IHN cycles through matches
	"<Leader>ih switches to file under cursor
	"<Leader>is switches to the alternate file of file under cursor (e.g. on  <foo.h> switches to foo.cpp)
	"<Leader>ihn cycles through matches
	
	" 快速切换C H源文件
	nmap <Leader>a :A<CR>


    "git左边栏增删改提示
    Plug 'airblade/vim-gitgutter'

    "powerline fonts
    Plug 'powerline/powerline-fonts'

    ""代码动态检查
    Plug 'w0rp/ale'
        let g:ale_lint_on_text_changed       = 'normal'                     " 代码更改后启动检查
        let g:ale_lint_on_insert_leave       = 1                            " 退出插入模式即检查
        let g:ale_sign_column_always         = 1                            " 总是显示动态检查结果
        let g:ale_statusline_format = ['✗ %d', '⚡%d','✔  OK']
        let g:ale_sign_error                 = '>>'                         " error 告警符号
        let g:ale_sign_warning               = '--'                         " warning 告警符号
        let g:ale_echo_msg_error_str         = 'E'                          " 错误显示字符
        let g:ale_echo_msg_warning_str       = 'W'                          " 警告显示字符
        let g:ale_echo_msg_format            = '[%linter%] %s [%severity%]' " 警告显示格式

        " C 语言配置检查参数
        let g:ale_c_gcc_options              = '-Wall -Werror -O2 -std=c11'
        let g:ale_c_clang_options            = '-Wall -Werror -O2 -std=c11'
        let g:ale_c_cppcheck_options         = ''
        " C++ 配置检查参数
        let g:ale_cpp_gcc_options            = '-Wall -Werror -O2 -std=c++14'
        let g:ale_cpp_clang_options          = '-Wall -Werror -O2 -std=c++14'
        let g:ale_cpp_cppcheck_options       = ''

        "对不用语言使用不同规则语法检查 (不规定就用所有规则, python 包括 pylint Flake8 等)
        let g:ale_linters = {
        \   'c++': ['ccls'],
        \   'c':   ['ccls'],
        \   'python': ['python']
        \}
        " <F9> 触发/关闭代码动态检查
        map <F9> :ALEToggle<CR>
        "普通模式下，ak 前往上一个错误或警告，aj 前往下一个错误或警告
        nmap ak <Plug>(ale_previous_wrap)
        nmap aj <Plug>(ale_next_wrap)
        " ad 查看错误或警告的详细信息
        nmap ad :ALEDetail<CR>

    "显示文件修改痕迹
    Plug 'chrisbra/changesPlugin'

    "json viewer
    Plug 'elzr/vim-json'


    "c++ 语法高亮
    Plug 'octol/vim-cpp-enhanced-highlight'
    let g:cpp_class_scope_highlight = 1
    "类成员变量
    let g:cpp_member_variable_highlight = 1
    "类的声明
    let g:cpp_class_decl_highlight = 1
    let g:cpp_posix_standard = 1
    "模板函数
    let g:cpp_experimental_simple_template_highlight = 1
    let g:cpp_experimental_template_highlight = 1
    let g:cpp_concepts_highlight = 1
    "用户定义函数
    let g:cpp_no_function_highlight = 1


    "python 语法高亮"
    Plug 'vim-python/python-syntax'
    let g:python_highlight_all = 1


    "查找文件
    Plug 'junegunn/fzf'
        ":FZF 从当前目录查找
        ":FZF ~ 从home目录查找
        nmap <leader>F/ :FZF ~<CR>
        nmap <leader>F. :FZF<CR>


    "显示所有的leader映射
    Plug 'hecal3/vim-leader-guide'
       ":LeaderGuide '\'

call plug#end()

