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
