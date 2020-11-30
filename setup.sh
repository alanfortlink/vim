#!/bin/bash

sudo apt update
sudo apt install nodejs npm build-essential tree ripgrep neovim python3.8 python3-pip ctags tmux -y
python3.8 -m pip install pipenv

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

cp .tmux.conf ~
cp .vimrc ~
mkdir -p ~/.vim
cp -R configs ~/.vim
cp coc-settings.json ~/.vim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

INIT_VIM_PATH="/home/alan/.config/nvim"
INIT_VIM="${INIT_VIM_PATH}/init.vim"
mkdir -p ${INIT_VIM_PATH}

rm -rf $INIT_VIM

echo "set runtimepath^=~/.vim runtimepath+=~/.vim/after" > ${INIT_VIM}
echo "let &packpath = &runtimepath" >> ${INIT_VIM}
echo "source ~/.vimrc" >> ${INIT_VIM}

nvim -c "PlugInstall" -c ":qa"

TMUX_PLUGIN_MANAGER_PATH=~/.tmux/plugins/tpm ~/.tmux/plugins/tpm/bin/install_plugins
TMUX_PLUGIN_MANAGER_PATH=~/.tmux/plugins/tpm ~/.tmux/plugins/tpm/bin/install_plugins
