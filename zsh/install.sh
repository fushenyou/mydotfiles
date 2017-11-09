#!/bin/bash

# 获取当前目录
current_path=`pwd`
echo "zshrc所在目录:$current_path" 


export ZSH="$current_path/oh-my-zsh"; 
if [ -d $ZSH ]; then
    rm -rf $ZSH
    echo "重新下载oh-my-zsh"
fi
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


echo "success!!"
