#!/bin/bash

# Setup folders
mkdir -p ~/.config/nvim/
mkdir -p ~/.local/share/nvim/site/autoload/
mkdir -p ~/Envs/

# Setup symlinks
if [ ! -f ~/.config/nvim/init.vim ]; then
    ln -s ./Neovim/init.vim ~/.config/nvim/
fi

if [ ! -f ~/.local/share/nvim/site/autoload/plug.vim ]; then
    ln -s ./Neovim/plug.vim ~/.local/share/nvim/site/autoload/
fi

if [ ! -f ~/.tmux.conf ]; then
    ln -s ./Tmux/tmux.conf ~/.tmux.conf
fi

for filePath in "./Rc"/*
do
    fileName=$(basename "$filePath")
    if [ ! -f ~/.$fileName ]; then
        ln -s ./Rc/$fileName ~/.$fileName
    fi
done

for filePath in "./Setup"/*
do
    fileName=$(basename "$filePath")
    if [ ! -f ~/Envs/$fileName ]; then
        ln -s ./Setup/$fileName ~/Envs/$fileName
    fi
done

# Check required software
if ! hash nvim 2>/dev/null
then
    echo "nvim not found in PATH. Please update PATH or install"
fi

if ! hash tmux 2>/dev/null
then
    echo "tmux not found in PATH. Please update PATH or install"
fi

if ! hash fzf 2>/dev/null
then
    echo "fzf not found in PATH. Please update PATH or install"
fi

if ! hash ag 2>/dev/null
then
    echo "ag not found in PATH. Please update PATH or install"
fi
