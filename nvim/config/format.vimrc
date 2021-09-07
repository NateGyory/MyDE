" #########################################################
" #                    Line Numbers                       #
" #########################################################
" Tagbar
:let g:tagbar_show_linenumbers = 1

" Set relative line numbers
set rnu


" #########################################################
" #                    Floating Window                    #
" #########################################################
" Popup menu color
highlight PMenu ctermfg=Grey ctermbg=Black
highlight PMenuSel ctermfg=White gui=bold ctermbg=0 guibg=DarkBlue


" #########################################################
" #                    Tabs and White Space               #
" #########################################################
" TABS General
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

call HighlightTrailingSpaces()

" #########################################################
" #                    Airline Theme                      #
" #########################################################
let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction

autocmd VimEnter * call ToggleHiddenAll()
colorscheme nord
