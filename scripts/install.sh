#!/bin/bash

get_time() {
    echo `date +"%Y%m%d%H%M%S"`
}

myvim=`pwd -P`

cd $HOME

# 将原来的备份
# if [ -d .config/nvim ]; then
#     mv .config/nvim ~/.config/nvim.`get_time`;
# fi

# if [ -d ~/.vim ]; then
#     mv ~/.vim ~/.vim.`get_time`;
# fi

# 链接 myvim
ln -s ${myvim}/nvim .config/nvim

echo "打开 vim, 按下面步骤做"
echo ""
echo "1. 使用 :PlugInstall 下载插件"
echo ""
echo "2. 然后使用 :CocInstall xxx 下载如下子插件"
echo "      coc-marketplace:    Coc的插件商店"
echo "      coc-lists"
echo "      coc-json"
echo ""
echo "      coc-tsserver:       使用 lsp 自动补全框架, 以使用下面的各类语言的自动补全"
echo "      coc-ccls:           c, c++ 自动补全(需要使用 sudo apt install ccls 先下载 ccls)"
echo "                          PS: 该插件安装后，在 home 下编辑 *.cpp 等不会自动补全，需要到其他目录下"
echo "                              如果出现 [main file ./lib/extension.js not found] 的错误:"
echo "                                  cd ~/.config/coc/extensions/node_modules/coc-ccls"
echo "                                  ln -s node_modules/ws/lib lib"
echo "      PS: 除了 coc-ccls 外，也可以选择使用 coc-clangd 插件"
echo "      coc-python:         python 自动补全"
echo "      coc-cmake"
echo ""
echo "      coc-snippets:       代码片段补全"

echo "!!! 	install.sh 只是用软链接安装, 请不要删除该仓库 		!!!"
