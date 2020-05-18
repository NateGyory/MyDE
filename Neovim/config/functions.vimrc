" #########################################################
" #                    TrimWhiteSpaces                    #
" #                                                       #
" # - Removes all trailing whitespaces                    #
" #########################################################
function! TrimWhiteSpaces()
    %s/\s\+$//e
endfunction


" #########################################################
" #               HighlightTrailingSpaces                 #
" #                                                       #
" # - Highlight trailing whitespace in red.               #
" # - Highligh does not appear when you are typing in     #
" #   insert mode.                                        #
" # - Have the highlighting of whitespace apply when you  #
" #   open new buffers                                    #
" #########################################################
" Trailing whitespace alert
function! HighlightTrailingSpaces()
    highlight ExtraWhitespace ctermbg=red guibg=red
    match ExtraWhitespace /\s\+$/
    autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
    autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
    autocmd InsertLeave * match ExtraWhitespace /\s\+$/
    autocmd BufWinLeave * call clearmatches()
endfunction

" #########################################################
" #                    Scratch Window                     #
" #                                                       #
" # - Popup scratch window for notes                      #
" #########################################################
function! g:ScratchGenerator()
  echom "Creating scratchy..."
  exe "new" . "__Scratchy__"
  echom "Scratchy created!"
endfunction

function! g:PopulateTodo()
  setlocal bufhidden=hide
  setlocal noswapfile
endfunction

autocmd BufNewFile __Scratchy__ call s:ScratchMarkBuffer()
command! Todo call g:ScratchGenerator()

" #########################################################
" #                    Fuzzy Funcs                        #
" #                                                       #
" # - Fuzzy ripgrep and fuzzy file search with preview    #
" #   windows                                             #
" #########################################################
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)

""""""""""""""""""
function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
