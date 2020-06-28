let g:NERDTreeMapJumpPrevSibling="K"
let g:NERDTreeMapJumpNextSibling="J"
let g:NERDTreeMapJumpLastChild=""
let g:NERDTreeMapJumpFirstChild=""

highlight NERDTreeOpenable guifg=white
highlight NERDTreeClosable guifg=white
highlight NERDTreeUp guifg=white
highlight NERDTreeDir guifg=magenta ctermfg=magenta

nmap ,n :NERDTreeFind<CR>
nmap ,m :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
