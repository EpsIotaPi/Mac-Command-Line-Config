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
### 安装node.js以适应自动补全插件
curl -sL install-node.now.sh/lts | bash
## 安装yarn
brew install yarn
## 安装neovim
brew install neovim
pip install neovim
### 用软链接配置neovim
ln -s ~/.vim .config/nvim
ln -s ~/.vim/vimrc .config/nvim/init.vim
