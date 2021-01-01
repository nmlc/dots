
source $HOME/.config/nvim/vim-plug.vim
source $HOME/.config/nvim/plug-config/nerdtree.vim
source $HOME/.config/nvim/plug-config/lightline.vim
source $HOME/.config/nvim/plug-config/gitgutter.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/git.vim
source $HOME/.config/nvim/plug-config/easymotion.vim

let g:terraform_fmt_on_save=1
let mapleader=","

set background=light
colorscheme PaperColor

set noswapfile
set nobackup
set noerrorbells
set novisualbell
set ignorecase
set expandtab
set shiftwidth=2
set updatetime=100
set splitbelow
set splitright
set hidden
set signcolumn=yes
highlight clear SignColumn

au BufLeave,FocusLost * nested silent! wall

nnoremap Y v$y 
nnoremap vv v$
nnoremap p ]p
nnoremap gp `[v`]
nnoremap <space>, `[v`]<
nnoremap <space>. `[v`]>

nnoremap <space>pp "0p
xnoremap <space>pp "0p
nnoremap <space>ps "*p
xnoremap <space>ps "*p
nnoremap <space>ys "*y
xnoremap <space>ys "*y

let g:vista_default_executive = 'coc'
