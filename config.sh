#!/bin/bash

#Setup folders
mkdir -p ~/.config/nvim/
mkdir -p ~/.local/share/nvim/site/autoload/

echo "Setting up environment"
cat ./farfrompuken.txt

user=$USER

# Ask for line to execute for package manager

read -p 'Enter package manager install command: ' pkgCmd
read -p 'Enter terminal command: ' terminalCmd

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

if ! hash ag 2>/dev/null
then
    echo "====================================================================="
    echo "Installing ag"
    eval "$pkgCmd the_silver_searcher"
fi

if ! hash git 2>/dev/null
then
    echo "====================================================================="
    echo "Installing git"
    eval "$pkgCmd git"
fi

# Setup symlinks
if [ ! -f ~/.config/nvim/init.vim ]; then
    pushd ~/.config/nvim
    ln -s ~/Dev/MyDE/Neovim/init.vim ./
    popd
fi

if [ ! -f ~/.local/share/nvim/site/autoload/plug.vim ]; then
    pushd ~/.local/share/nvim/site/autoload
    ln -s ~/Dev/MyDE/Neovim/plug.vim ./
    popd
fi

if [ ! -f ~/.tmux.conf ]; then
    pushd ~
    ln -s ~/Dev/MyDE/Tmux/tmux.conf ./.tmux.conf
    popd
fi

if [ ! -f ~/.tmux.conf.local ]; then
    pushd ~
    ln -s ~/Dev/MyDE/Tmux/tmux.conf.local ./.tmux.conf.local
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

if ! hash ag 2>/dev/null
then
    echo "ag did not install correctly. Please manually install"
fi

if ! hash git 2>/dev/null
then
    echo "git did not install correctly. Please manually install"
fi

# Get oh-my-zsh and plugins
getOMZ='sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"'
eval '$terminalCmd $getomz'

pushd .oh-my-zsh/plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone https://github.com/djui/alias-tips.git
popd

pushd ~
rm -f .zshrc
ln -s ~/Dev/MyDE/Rc/zshrc ./.zshrc
popd

chsh --shell /bin/zsh $user
