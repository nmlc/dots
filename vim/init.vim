if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
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

call plug#end()

let g:NERDTreeMapJumpPrevSibling=""
let g:NERDTreeMapJumpNextSibling=""

highlight NERDTreeOpenable guifg=white
highlight NERDTreeClosable guifg=white
highlight NERDTreeUp guifg=white
highlight NERDTreeDir guifg=magenta ctermfg=magenta

let g:ctrlsf_default_view_mode = 'compact'
let g:ctrlsf_regex_pattern = 1

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

:au BufLeave,FocusLost * :wa
autocmd BufLeave,FocusLost * silent! wall

let g:ctrlsf_auto_focus = {
  \ "at": "done"
  \ }
let g:ctrlsf_auto_close = {
    \ "normal" : 1,
    \ "compact": 1
    \}
nnoremap <space>fs :CtrlSF<Cr>
nnoremap <space>fn :CtrlSF 
nnoremap <space>ff :CtrlSFToggle<Cr>
nmap <space>fp <Plug>CtrlSFPwordPath
let g:ctrlsf_ackprg = 'rg'

nnoremap <space>fi :RG!<Cr>

nnoremap <space>gl :Gclog! -10 --pretty=format:"%ad %an %s" --date=short -- %<Cr>
nnoremap <space>gb :Gblame --date=short<Cr>


let g:vista_default_executive = 'coc'

nmap ,n :NERDTreeFind<CR>
nmap ,m :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" nnoremap qj :GitGutterNextHunk<Cr>
" nnoremap qk :GitGutterPrevHunk<Cr>
" nnoremap qp :GitGutterPreview<Cr>
" nnoremap qu :GitGutterUndoHunk<Cr>
" nnoremap qs :GitGutterStageHunk<Cr>
" nnoremap qf :GitGutterFold<Cr>


nnoremap <C-p> :Files<Cr>
nnoremap <C-s> :History<Cr>
nnoremap <C-d> :GFiles?<Cr>
