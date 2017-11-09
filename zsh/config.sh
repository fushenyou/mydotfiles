#!/bin/bash

# 获取当前目录
current_path=`pwd`
echo "zshrc所在目录:$current_path" 


export ZSH="$current_path/oh-my-zsh"; 
echo $ZSH


if [ -f ~/.zshrc ]; then
   echo "~/.zshrc文件已存在 备份到/tmp/zshrc_"`date +%Y%m%d%H%M`".bak"
   mv ~/.zshrc /tmp/zshrc_"`date +%Y%m%d%H%M`".bak
fi

echo "加载新主题"
cp $current_path/my.zsh-theme $ZSH/themes/

# 创建软连接 
echo "替换配置文件 cp $current_path/zshrc ~/.zshrc"
cp $current_path/zshrc ~/.zshrc

excode=`sed -i "" "s:ZSH=~/.oh-my-zsh:ZSH=${ZSH}:" ~/.zshrc`


