" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'nmlc/vim-rhubarb'

Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'

Plug 'airblade/vim-gitgutter'

" Changes the working directory to the project root when you open a file or directory
Plug 'airblade/vim-rooter'

Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'sebdah/vim-delve'
Plug 'liuchengxu/vista.vim'
Plug 'google/vim-jsonnet'
Plug 'itchyny/lightline.vim'
Plug 'hashivim/vim-terraform'
Plug 'easymotion/vim-easymotion'
Plug 'NLKNguyen/papercolor-theme'

Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()
