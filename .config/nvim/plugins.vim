call plug#begin()
    " Color Scheme
    Plug 'gruvbox-community/gruvbox'
    Plug 'sainnhe/gruvbox-material'
    Plug 'phanviet/vim-monokai-pro'
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
    " Snippet
    Plug 'honza/vim-snippets'
    Plug 'yggdroot/indentline'
call plug#end()
