" #########################################################
" #                    nnoremap Bindings                  #
" #########################################################
nnoremap <Space>q :q<Cr>
nnoremap <Space>w :w<Cr>
nnoremap <Space>h <C-w>h
nnoremap <Space>j <C-w>j
nnoremap <Space>k <C-w>k
nnoremap <Space>l <C-w>l
nnoremap <Space>r :cclose<Cr>
nnoremap <Space>n :NERDTreeToggle<Cr>
nnoremap <Space>m :NERDTreeFind<CR>
nnoremap <Space>1 :set rnu<Cr>
nnoremap <Space>2 :set nornu<Cr>
nnoremap <Space>v :vsplit<CR><C-w>w
nnoremap <Space>tt :TagbarOpen<CR>
nnoremap <Space>tr :TagbarClose<CR>
nnoremap <Space>f :Files<CR>
nnoremap <Space>b :startinsert<CR><C-x><C-s>
nnoremap <Space>a :RG<CR>
nnoremap <Space>c :noh<Cr>
nnoremap gn :GitGutterNextHunk<Cr>
nnoremap gp :GitGutterPrevHunk<Cr>
nnoremap ggf :GitGutterFold<Cr>
nnoremap gu :GitGutterUndoHunk<Cr>
nnoremap gb :Gblame<Cr>
nnoremap gdm :G diff master echo @%<Cr>
nnoremap gds :G diff echo @%<Cr>

" #########################################################
" #                    imap Bindings                      #
" #########################################################
imap jk <Esc>
