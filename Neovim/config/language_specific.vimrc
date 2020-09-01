" TABS for JS, JSX and Ruby

" #########################################################
" #                         Ruby                          #
" #########################################################
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab

" #########################################################
" #                    javascript                         #
" #########################################################
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab

" #########################################################
" #                        yaml                           #
" #########################################################
autocmd Filetype yaml setlocal ts=2 sw=2 expandtab

" #########################################################
" #                        tsx                            #
" #########################################################
autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx
autocmd Filetype typescript setlocal ts=2 sw=2 expandtab
autocmd Filetype typescript.tsx setlocal ts=2 sw=2 expandtab
