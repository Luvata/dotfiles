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
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set clipboard=unnamedplus


" Highlight columns
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

colorscheme gruvbox
set background=dark

" Fast moving around window
let mapleader = " "
nnoremap <silent> <leader>h :wincmd h<CR>
nnoremap <silent> <leader>j :wincmd j<CR>
nnoremap <silent> <leader>k :wincmd k<CR>
nnoremap <silent> <leader>l :wincmd l<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
nnoremap <silent> <leader>nt :NERDTreeToggle <CR>
nnoremap <silent> <leader>gy :Goyo <CR>
" fzf and ripgrep keymap
nnoremap <leader>pf :Files<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>pw :Rg <C-R>=expand("<cword>")<CR><CR>
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
" Default order is suck ;__;
let $FZF_DEFAULT_OPTS='--reverse --preview bat'

" Currently this map only work on .py files
nnoremap <silent> <leader>cci :CocCommand python.setInterpreter <CR>

" NERDTree settings
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Vim airline
let g:airline#extensions#tabline#enabled = 1

" Vim snippets
let g:coc_snippet_prev = '<c-k>'
let g:coc_snippet_next = '<c-j>'
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

" Transparent
highlight Normal guibg=none
" Resize
nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>

" fzf and ripgrep keymap
nnoremap <leader>pf :Files<CR>
nnoremap <leader>ps :Rg<SPACE>
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
" Default order is suck ;__;
let $FZF_DEFAULT_OPTS='--reverse'

" indentline
let g:indentLine_char = '|'
