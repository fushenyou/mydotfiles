#!/bin/bash

# 获取当前目录
current_path=`pwd`
echo "vim所在目录:$current_path" 

if [ -f ~/.vimrc ]; then
   echo "~/.vimrc文件已存在 备份到/tmp/vimrc_"`date +%Y%m%d%H%M`".bak"
   mv ~/.vimrc /tmp/vimrc_"`date +%Y%m%d%H%M`".bak
fi

if [ -f ~/.gvimrc ]; then
   echo "~/.gvimrc文件已存在 备份到/tmp/gvimrc_"`date +%Y%m%d%H%M`".bak"
   mv ~/.gvimrc /tmp/gvimrc_"`date +%Y%m%d%H%M`".bak
fi

if [ -f ~/.vimrc.bundles ]; then
   echo "~/.vimrc.bundles文件已存在 备份到/tmp/vimrc.bundles_"`date +%Y%m%d%H%M`".bak"
   mv ~/.vimrc.bundles /tmp/vimrc.bundles_"`date +%Y%m%d%H%M`".bak
fi

if [ -f ~/.vim ]; then
   echo "~/.vim文件已存在 备份到/tmp/vim_"`date +%Y%m%d%H%M`".bak"
   mv ~/.vim /tmp/vim_"`date +%Y%m%d%H%M`".bak
fi

# 创建软连接 
echo "创建软连接 ln -sf $current_path/vimrc ~/.vimrc"
ln -sf $current_path/vimrc ~/.vimrc
echo "创建软连接 ln -sf $current_path/gvimrc ~/.gvimrc"
ln -sf $current_path/gvimrc ~/.gvimrc
echo "创建软连接 ln -sf $current_path/vimrc.bundles ~/.vimrc.bundles"
ln -sf $current_path/vimrc.bundles ~/.vimrc.bundles
echo "创建软连接 ln -sf $current_path/vim ~/.vim"
ln -sf $current_path/vim ~/.vim

echo "success!!"
