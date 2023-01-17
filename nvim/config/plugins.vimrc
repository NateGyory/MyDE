call plug#begin('~/.vim/plugged')

" #########################################################
" #                    General Plugins                    #
" #########################################################
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'mileszs/ack.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'xolox/vim-misc'
Plug 'arcticicestudio/nord-vim'
Plug 'suan/vim-instant-markdown'
" #########################################################
" #               FileType Specific Plugins               #
" #########################################################

call plug#end()

" NERDTree: File Manager
" Close vim when NERDTree is the only open window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Automatically open NERDTree buffer when file is open

" NerdFonts
set encoding=utf8
