syntax on "syntax highlight
set nu "numeracao de linhas
set paste

" Condition to Makefile
let _curfile = expand("%.t")
" TODO: replace this condition with a regex
if _curfile =~ "Makefile" || _curfile =~ "makefile" || _curfile =~ ".*\.mk"
  set noexpandtab
else
  set ts=2 "Seta onde o tab para
  set sw=2 "largura do tab
  set et "espacos em vez de tab
  set showmatch
endif

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" My plugins
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'
Plugin 'sickill/vim-monokai'
Plugin 'vim-airline/vim-airline'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'easymotion/vim-easymotion'

" Config for NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Use ctrl+n to toggle nerdtree
map <C-n> :NERDTreeToggle<CR>

colorscheme monokai

let g:EasyMotion_do_mapping = 0
nmap s <Plug>(easymotion-overwin-f)
let g:EasyMotion_smartcase = 1

