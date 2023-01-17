#!/bin/bash

#Setup folders
mkdir -p ~/.local/share/nvim/site/autoload/
mkdir -p ~/Documents/Notes
mkdir -p ~/Pictures
mkdir -p ~/Development
mkdir -p ~/Build
mkdir -p ~/Downloads

echo 'Setting up environment'

# Setup symlinks
if [ ! -f ~/.config/nvim ]; then
    pushd ~/.config
    ln -s ~/Development/MyDE/nvim ./
    popd
fi

if [ ! -f ~/.local/share/nvim/site/autoload/plug.vim ]; then
    pushd ~/.local/share/nvim/site/autoload
    ln -s ~/Development/MyDE/nvim/plug.vim ./
    popd
fi

if [ ! -f ~/.config/tmux ]; then
    pushd ~/.config
    ln -s ~/Development/MyDE/tmux ./
    popd
fi

if [ ! -f ~/.zshrc ]; then
    pushd ~
    ln -s ~/Development/MyDE/zsh/zshrc ./.zshrc
    popd
fi
