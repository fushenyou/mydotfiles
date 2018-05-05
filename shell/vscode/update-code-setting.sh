#!/bin/bash

curr_path=`pwd`;
echo "所在目录:$curr_path"

cd /usr/local/bin/
echo "进入/usr/local/bin/目录"
ln -s "/Applications/Visual Studio Code.app/Contents/MacOS/Electron" code
echo "创建code软链接：/Applications/Visual Studio Code.app/Contents/MacOS/Electron => /usr/local/bin/code"

code --install-extension asvetliakov.snapshot-tools && echo "asvetliakov.snapshot-tools 安装成功" || echo "asvetliakov.snapshot-tools 安装失败"
code --install-extension eamodio.gitlens && echo "eamodio.gitlens 安装成功" || echo "eamodio.gitlens 安装失败"
code --install-extension eg2.tslint && echo "eg2.tslint 安装成功" || echo "eg2.tslint 安装失败"
code --install-extension esbenp.prettier-vscode && echo "esbenp.prettier-vscode 安装成功" || echo "esbenp.prettier-vscode 安装失败"
code --install-extension MS-CEINTL.vscode-language-pack-zh-hans && echo "MS-CEINTL.vscode-language-pack-zh-hans 安装成功" || echo "MS-CEINTL.vscode-language-pack-zh-hans 安装失败"
code --install-extension formulahendry.code-runner && echo "formulahendry.code-runner 安装成功" || echo "formulahendry.code-runner 安装失败"
code --install-extension mrmlnc.vscode-attrs-sorter && echo "mrmlnc.vscode-attrs-sorter 安装成功" || echo "mrmlnc.vscode-attrs-sorter 安装失败"
code --install-extension mrmlnc.vscode-jade-snippets && echo "mrmlnc.vscode-jade-snippets 安装成功" || echo "mrmlnc.vscode-jade-snippets 安装失败"
code --install-extension ms-vscode.node-debug2 && echo "ms-vscode.node-debug2 安装成功" || echo "ms-vscode.node-debug2 安装失败"
code --install-extension octref.vetur && echo "octref.vetur 安装成功" || echo "octref.vetur 安装失败"
code --install-extension vsmobile.vscode-react-native && echo "vsmobile.vscode-react-native 安装成功" || echo "vsmobile.vscode-react-native 安装失败"
code --install-extension wayou.vscode-todo-highlight && echo "wayou.vscode-todo-highlight 安装成功" || echo "wayou.vscode-todo-highlight 安装失败"

cp -R $curr_path/settings.json $HOME/Library/Application\ Support/Code/User/settings.json