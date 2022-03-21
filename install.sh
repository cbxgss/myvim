#!/bin/bash

get_time() {
    echo `date +"%Y%m%d%H%M%S"`
}

myvim=`pwd -P`
cd $HOME


# 将原来的备份
if [ -f ~/.vimrc ] || [ -h ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.`get_time`;
fi

if [ -d ~/.vim ]; then
    mv ~/.vim ~/.vim.`get_time`;
fi


# 链接 myvim
ln -s ${myvim}/.vimrc .vimrc
ln -s ${myvim}/.vim .vim

echo "打开 vim"
echo "1. 使用 :PlugInstall 下载插件"
echo "2. 然后使用 :CocInstall xxx 下载如下子插件"
echo "      coc-marketplace:    Coc的插件商店"
echo "      coc-lists"
echo "      coc-json"
echo "      coc-tsserver:       使用 lsp 自动补全框架, 以使用下面的各类语言的自动补全"
echo "      coc-ccls:           c, c++ 自动补全(需要使用 sudo apt install ccls 先下载 ccls)"
echo "                          PS: 该插件安装后，在 home 下编辑 *.cpp 等不会自动补全，需要到项目路径下"
echo "      coc-python:         python 自动补全"
echo "      coc-cmake"
echo "      coc-snippets:       代码片段补全"
