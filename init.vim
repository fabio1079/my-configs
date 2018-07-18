set nu

filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab

call plug#begin()

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'bronson/vim-trailing-whitespace'
Plug 'easymotion/vim-easymotion'
Plug 'reewr/vim-monokai-phoenix'

call plug#end()


" Use ctrl+n to toggle nerdtree
map <C-n> :NERDTreeToggle<CR>
" Display hidden files on nerdtree
let NERDTreeShowHidden=1

let g:EasyMotion_do_mapping = 0
nmap s <Plug>(easymotion-overwin-f)
let g:EasyMotion_smartcase = 1

colorscheme monokai-phoenix

