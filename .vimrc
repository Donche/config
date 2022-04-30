set nocompatible
filetype plugin indent on
syntax on
call plug#begin()
" auto-complete, syntax-related
Plug 'vim-scripts/delimitMate.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" tree
Plug 'scrooloose/nerdtree'
" theme
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'webdevel/tabulous'
" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" tags
Plug 'vim-scripts/taglist.vim'
" misc
Plug 'tpope/vim-surround'
Plug 'tpope/vim-obsession'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-markdown'
call plug#end()

set number
set softtabstop=2
set tabstop=2
set shiftwidth=2
set timeout timeoutlen=1000
set ttimeoutlen=50
set listchars=tab:\|\ 
set list
set colorcolumn=80
set wildmenu
set wildmode=longest:full,full
set hlsearch
set cmdheight=1
let mapleader=" "

" colors
set background=dark
colorscheme gruvbox
set t_Co=256
hi Search guibg=LightBlue

" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <CR> :nohlsearch<Bar>:echo<CR>
nnoremap <SPACE> <Nop>

" tabs
nnoremap H gT
nnoremap L gt
set stal=1
let tabulousLabelModifiedStr = '+'
let tabulousLabelNumberStr = '.'

" panes
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"NERDTree
map <C-n> :NERDTreeToggle<CR>

" colors
colorscheme gruvbox
set background=dark
set t_Co=256
let g:airline_powerline_fonts = 1
let g:airline_theme = 'gruvbox'
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" parentheses
let g:rainbow_active = 1

" markdown codeblock highlighting
let g:markdown_fenced_languages = ['html', 'python', 'c', 'cpp', 'bash=sh']

" terminal emulator, use esc to return to normal mode
tnoremap <Esc> <C-\><C-n>
