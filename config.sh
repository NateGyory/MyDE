#!/bin/bash

#Setup folders
mkdir -p ~/.config/nvim/config
mkdir -p ~/.local/share/nvim/site/autoload/

echo "Setting up environment"
cat ./farfrompuken.txt

# Ask for line to execute for package manager

read -p 'Enter package manager install command: ' pkgCmd

if ! hash neofetch 2>/dev/null
then
    echo "====================================================================="
    echo "Installing neofetch"
    eval "$pkgCmd neofetch"
fi

if ! hash nvim 2>/dev/null
then
    echo "====================================================================="
    echo "Installing neovim"
    eval "$pkgCmd neovim"
fi

if ! hash tmux 2>/dev/null
then
    echo "====================================================================="
    echo "Installing tmux"
    eval "$pkgCmd tmux"
fi

if ! hash fzf 2>/dev/null
then
    echo "====================================================================="
    echo "Installing fzf"
    eval "$pkgCmd fzf"
fi

if ! hash rg 2>/dev/null
then
    echo "====================================================================="
    echo "Installing ag"
    eval "$pkgCmd ripgrep"
fi

if ! hash zsh 2>/dev/null
then
    echo "====================================================================="
    echo "Installing ag"
    eval "$pkgCmd zsh"
fi

# Setup symlinks
if [ ! -f ~/.config/nvim/init.vim ]; then
    pushd ~/.config/nvim
    ln -s ~/Development/MyDE/Neovim/init.vim ./
    pushd config
    ln -s ~/Development/MyDE/Neovim/config/* ./
    popd
    popd
fi

if [ ! -f ~/.local/share/nvim/site/autoload/plug.vim ]; then
    pushd ~/.local/share/nvim/site/autoload
    ln -s ~/Development/MyDE/Neovim/plug.vim ./
    popd
fi

if [ ! -f ~/.tmux.conf ]; then
    pushd ~
    ln -s ~/Development/MyDE/Tmux/tmux.conf ./.tmux.conf
    popd
fi

if [ ! -f ~/.tmux.conf.local ]; then
    pushd ~
    ln -s ~/Development/MyDE/Tmux/tmux.conf.local ./.tmux.conf.local
    popd
fi

# Check required software
if ! hash nvim 2>/dev/null
then
    echo "nvim did not install correctly. Please manually install"
fi

if ! hash neofetch 2>/dev/null
then
    echo "neofetch did not install correctly. Please manually install"
fi

if ! hash tmux 2>/dev/null
then
    echo "tmux did not install correctly. Please manually install"
fi

if ! hash fzf 2>/dev/null
then
    echo "fzf did not install correctly. Please manually install"
fi

if ! hash rg 2>/dev/null
then
    echo "rg did not install correctly. Please manually install"
fi

if ! hash zsh 2>/dev/null
then
    echo "zsh did not install correctly. Please manually install"
fi

chsh --shell /bin/zsh $USER
