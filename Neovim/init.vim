" !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
" !                              Key Mappings                          !
" !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
nnoremap <Space>q :q<Cr>
nnoremap <Space>w :w<Cr>
nnoremap <Space><Space> <C-w>w
nnoremap <Space>h <C-w>h
nnoremap <Space>j <C-w>j
nnoremap <Space>k <C-w>k
nnoremap <Space>l <C-w>l
nnoremap <Space>n :NERDTreeToggle<Cr>
nnoremap <Space>t :TagbarToggle<CR>
nnoremap <Space>f :Files<CR>
nnoremap <Space>a :Ack! 
nnoremap <Space>gh :GitGutterLineHighlightsToggle<CR>
nnoremap <Space>gn :GitGutterNextHunk<CR>
nnoremap <Space>gp :GitGutterPrevHunk<CR>
nnoremap <Space>ga :GitGutterStageHunk<CR>
nnoremap <Space>gv :GitGutterPreviewHunk<CR>
nnoremap <Space>gu :GitGutterUndoHunk<CR>
nnoremap <Space>gf :GitGutterFold<CR>

" !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
" !                               Autocmds                             !
" !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

autocmd BufWrite * :Neomake
autocmd CompleteDone * silent! pclose!

" !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
" !                               Functions                            !
" !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

function! TrimWhiteSpaces()
    %s/\s\+$//e
endfunction

" !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
" !                               Formatting                           !
" !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

" TABS General
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" TABS for JS, JSX and Ruby
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab

" Trailing whitespace alert
"  1) highlight trailing whitespace in red
"  2) have this highlighting not appear whilst you are typing in insert mode
"  3) have the highlighting of whitespace apply when you open new buffers
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Neomake settings
:highlight NeomakeWarningSign ctermfg=Yellow
:highlight NeomakeErrorSign ctermfg=Red
:highlight NeomakeVirtualtextWarning ctermfg=Yellow
:highlight NeomakeVirtualtextError ctermfg=Red
let g:neomake_warning_sign = {
    \   'text': '⚠',
    \   'texthl': 'NeomakeWarningSign',
    \ }

" Deoplete settings
let g:deoplete#enable_at_startup = 1

highlight PMenu ctermfg=Grey ctermbg=Black
highlight PMenuSel ctermfg=White gui=bold ctermbg=0 guibg=DarkBlue

" Ruby LSP
if executable('solargraph')
    " gem install solargraph
    au User lsp_setup call lsp#register_server({
        \ 'name': 'solargraph',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'solargraph stdio']},
        \ 'initialization_options': {"diagnostics": "true"},
        \ 'whitelist': ['ruby'],
        \ })
endif

" Ag mapping to ack.vim
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
" !                                Plugs                               !
" !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'neomake/neomake'
Plug 'Shougo/deoplete.nvim' , { 'do': ':UpdateRemotePlugs' }
" Plug 'prabirshrestha/asyncomplete.vim'
" Plug 'prabirshrestha/async.vim'
" Plug 'prabirshrestha/vim-lsp'
" Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'mileszs/ack.vim'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
" FileType specific plugins
Plug 'mattn/emmet-vim', { 'for' : [ 'javascript', 'html', 'css' ] }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'shougo/deoplete-clangx', { 'for' : [ 'c', 'cpp' ] }
Plug 'shougo/neoinclude.vim', { 'for' : [ 'c', 'cpp' ] }

call plug#end()
