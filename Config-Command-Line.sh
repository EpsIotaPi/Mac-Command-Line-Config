# 进入正确的目录
cd Download 
git clone https://github.com/EpsIotaPi/Mac-Command-Line-Config.git
cd ./Mac-Command-Line-Config

# 安装Homebrew
/bin/bash -c ./install-Tool/Homebrew/install.sh

# 配置zsh
cp myConfig/zshrc ~/.zshrc
## 安装oh-my-zsh
sh -c ./install-Tool/oh-my-zsh/install.sh
### 配置ys
cp ./myConfig/ys.zsh-theme ~/.oh-my-zsh/themes/
## 安装zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# 配置vim
cp ./myConfig/vimrc ~/.vim/vimrc
## 安装vim-Plug
cp ./install-Tool/vim-Plug/plug.vim ~/.vim/autoload/
