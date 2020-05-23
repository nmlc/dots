" https://github.com/ChristianChiarulli/nvim/blob/master/plug-config/sneak.vim
let g:sneak#label = 1

" case insensitive sneak
let g:sneak#use_ic_scs = 1

" imediately move tot the next instance of search, if you move the cursor sneak is back to default behavior
let g:sneak#s_next = 1


" Change the colors
highlight Sneak guifg=white guibg=magenta ctermfg=white ctermbg=magenta
highlight SneakScope guifg=white guibg=magenta ctermfg=white ctermbg=magenta
highlight SneakLabel guifg=white guibg=magenta ctermfg=white ctermbg=magenta
