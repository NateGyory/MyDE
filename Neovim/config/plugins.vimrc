call plug#begin('~/.vim/plugged')

" #########################################################
" #                    General Plugins                    #
" #########################################################
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'mileszs/ack.vim'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'sjl/gundo.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sebdah/vim-delve'
Plug 'xolox/vim-misc'
Plug 'ryanoasis/vim-devicons'
Plug 'liuchengxu/vista.vim'
" #########################################################
" #               FileType Specific Plugins               #
" #########################################################
Plug 'mattn/emmet-vim', { 'for' : [ 'javascript', 'html', 'css' ] }
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'shougo/neoinclude.vim', { 'for' : [ 'c', 'cpp' ] }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go' }
Plug 'stamblerre/gocode', {'rtp': 'nvim/'}
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
Plug 'sheerun/vim-polyglot'

call plug#end()

" Delve: Go debugger
let g:delve_backend = "native"

" NERDTree: File Manager
" Close vim when NERDTree is the only open window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Automatically open NERDTree buffer when file is open

" NerdFonts
set encoding=utf8
