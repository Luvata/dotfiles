syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8

" Highlight columns
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Plugins 
call plug#begin('~/.vim/plugged')
    " Color Scheme
    Plug 'gruvbox-community/gruvbox'
    " FZF 
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " File browser
    Plug 'preservim/nerdtree'
    " Awesome auto complete
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Status bar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Zen mode
    Plug 'junegunn/goyo.vim'

call plug#end()

colorscheme gruvbox
set background=dark

" Fast moving around window
let mapleader = " "
nnoremap <silent> <leader>h :wincmd h<CR>
nnoremap <silent> <leader>j :wincmd j<CR>
nnoremap <silent> <leader>k :wincmd k<CR>
nnoremap <silent> <leader>l :wincmd l<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <silent> <leader>nt :NERDTreeToggle <CR>
nnoremap <silent> <leader>gy :Goyo <CR>

" Currently this map only work on .py files
nnoremap <silent> <leader>cci :CocCommand python.setInterpreter <CR>

" NERDTree settings
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Vim airline
let g:airline#extensions#tabline#enabled = 1

