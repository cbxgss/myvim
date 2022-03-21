#!/bin/bash

get_time() {
    echo `date +"%Y%m%d%H%M%S"`
}

myvim=`pwd -P`
cd $HOME

echo "\033[0;35mStart to install vim-conf\033[0m"

echo "\033[0;36mLooking for an existing vim config...\033[0m"
if [ -f ~/.vimrc ] || [ -h ~/.vimrc ]; then
    echo "\033[0;33mFound ~/.vimrc.\033[0m \033[0;32mBacking up to ~/.vimrc.`get_time`\033[0m";
    mv ~/.vimrc ~/.vimrc.`get_time`;
fi

if [ -d ~/.vim ]; then
    echo "\033[0;33mFound ~/.vim.\033[0m \033[0;32mBacking up to ~/.vim.`get_time`\033[0m";
    mv ~/.vim ~/.vim.`get_time`;
fi

echo "\033[0;36mCopying .vimrc and .vim\033[0m"
echo "\033[0;32mln -s ${myvim}/.vimrc .vimrc\033[0m"
ln -s ${myvim}/.vimrc .vimrc
echo "\033[0;32mln -s ${myvim}/.vim .vim\033[0m"
ln -s ${myvim}/.vim .vim

echo "然后打开vim, 使用 :CocInstall xxx 下载如下子插件"
echo "coc-marketplace: Coc的插件商店"
echo "coc-lists"
echo "coc-json"
echo "coc-tsserver: 使用 lsp 自动补全框架, 以使用下面的各类语言的自动补全"
echo "coc-ccls: c, c++ 自动补全(需要使用 sudo apt install ccls 先下载 ccls)"
echo "coc-python: python 自动补全"
echo "coc-cmake"
echo "coc-snippets: 代码片段补全"
