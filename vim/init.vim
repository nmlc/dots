if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug "tpope/vim-fugitive"
Plug 'nmlc/vim-rhubarb'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'fatih/vim-go'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'sebdah/vim-delve'
Plug 'dyng/ctrlsf.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-commentary'
Plug 'liuchengxu/vista.vim'
Plug 'google/vim-jsonnet'
Plug 'itchyny/lightline.vim'
Plug 'hashivim/vim-terraform'
" Plug 'justinmk/vim-sneak'

call plug#end()

let g:terraform_fmt_on_save=1

source $HOME/.config/nvim/plug-config/nerdtree.vim
source $HOME/.config/nvim/plug-config/ctrlsf.vim
source $HOME/.config/nvim/plug-config/gitgutter.vim
source $HOME/.config/nvim/plug-config/sneak.vim
source $HOME/.config/nvim/plug-config/lightline.vim

function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

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
" set clipboard=unnamed
highlight clear SignColumn

au BufLeave,FocusLost * nested silent! wall


nnoremap <space>fi :RG!<Cr>
nnoremap <space>ff :Files<Cr>

" nnoremap <space>gl :Gclog! -10 --pretty=format:"%ad %an %s" --date=short -- %<Cr>
nnoremap <space>gb :Gblame --date=short<Cr>
nnoremap <space>gl '<,'>Gclog<Cr>

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

nnoremap <space>rb :GBrowse<Cr>
xnoremap <space>rb :GBrowse<Cr>

let g:vista_default_executive = 'coc'

nnoremap <C-s> :History<Cr>
nnoremap <C-d> :GFiles?<Cr>
