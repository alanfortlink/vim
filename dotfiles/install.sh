#!/bin/bash

ext_proxy_alias='alias EXT_PROXY="http_proxy=http://proxy.bloomberg.com:81 https_proxy=http://proxy.bloomberg.com:81 GIT_SSL_NO_VERIFY=1"'

# apt-get install tmux -y

# Creates a backup of your current ~/.vimrc
if [[ -f ~/.vimrc ]]; then
    echo "BACKUP existing ~/.vimrc -> ~/.vimrc.backup"
    mv ~/.vimrc ~/.vimrc.backup
fi

# Creates a backup of your current ~/.tmux.conf
if [[ -f ~/.tmux.conf ]]; then
    echo "BACKUP existing ~/.tmux.conf -> ~/.tmux.conf.backup"
    mv ~/.tmux.conf ~/.tmux.conf.backup
fi

echo "MOVING .vimrc to ~/.vimrc"
cp .vimrc ~/.vimrc

echo "MOVING .tmux.conf to ~/.tmux.conf"
cp .tmux.conf ~/.tmux.conf

# If the external proxy alias is not set
if [[ -f ~/.bashrc && $(grep EXT_PROXY ~/.bashrc | wc -l) = 0 ]]; then
    echo "ADD EXT_PROXY alias to ~/.bashrc"
    echo "" >> ~/.bashrc
    echo $ext_proxy_alias >> ~/.bashrc
fi

if [[ -f ~/.zshrc && $(grep EXT_PROXY ~/.zshrc | wc -l) = 0 ]]; then
    echo "ADD EXT_PROXY alias to ~/.zshrc"
    echo "" >> ~/.zshrc
    echo $ext_proxy_alias >> ~/.zshrc
fi

export http_proxy=http://proxy.bloomberg.com:81
export https_proxy=http://proxy.bloomberg.com:81
export GIT_SSL_NO_VERIFY=1

if [[ ! -f ~/.vim/autoload/plug.vim ]]; then
    echo "Installing VimPlug"
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

if [[ ! -d ~/.tmux/plugins/tpm ]]; then
    echo "Installing TmuxPluginManager"
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

vim -c PlugInstall -c qa

cd ~/.tmux/plugins/tpm/bin/

TMUX_PLUGIN_MANAGER_PATH=~/.tmux/plugins/ ./install_plugins

cd -

echo "ADD .bashrc_extra"
cp .bashrc_extra ~/.bashrc_extra

if [[ $(grep "source ~/.bashrc_extra" ~/.bashrc | wc -l) = 0 ]]; then
    echo "" >> ~/.bashrc
    echo "source ~/.bashrc_extra" >> ~/.bashrc
fi

if [[ $(grep "source ~/.bashrc_extra" ~/.zshrc | wc -l) = 0 ]]; then
    echo "" >> ~/.zshrc
    echo "source ~/.bashrc_extra" >> ~/.zshrc
fi
