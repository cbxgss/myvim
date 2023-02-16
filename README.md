# 入门

```shell
. install.sh
```

# copilot 插件

copilot 插件需要安装更新版本的 [vim](https://github.com/vim/vim) (9.0.0185 或更新版本)，或者更简单的，直接用 apt 安装 nvim

```shell
sudo apt install neovim
```

之后进行一些 nvim 的配置

1. 安装 插件管理器 vim-plug

    ```shell
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    ```

    或者直接安装
    1. 手动创建文件 `-$HOME/.local/share}"/nvim/site/autoload/plug.vim`
    2. 复制[链接](https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim)里的内容
2. 创建 nvim 的配置文件

   复制本项目 vim 的配置文件即可，下面的命令采用了软链接的方式

   ```shell
   mkdir ~/.config/nvim/
   cd ~/.config/nvim/
   ln -s ~/.vimrc init.vim

   nvim
   :PlugInstall
   ```

3. 安装 [copilot](https://github.com/github/copilot.vim) 插件

    插件官网安装方法很详细，下面是其中给 nvim 的安装方法

   ```shell
   git clone https://github.com/github/copilot.vim.git ~/.config/nvim/pack/github/start/copilot.vim

   nvim
   :Copilot setup
   ```
