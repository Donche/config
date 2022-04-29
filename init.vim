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
Plug 'ellisonleao/gruvbox.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'webdevel/tabulous'
" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" tags
Plug 'vim-scripts/taglist.vim'
" terminal
Plug 'akinsho/toggleterm.nvim'
" misc
Plug 'tpope/vim-surround'
Plug 'tpope/vim-obsession'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-markdown'
" nvim
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
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

" highlighting
" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <CR> :nohlsearch<Bar>:echo<CR>
nnoremap <SPACE> <Nop>

" tabs
nnoremap H gT
nnoremap L gt
" tab line
set stal=1
let tabulousLabelModifiedStr = '+'
let tabulousLabelNumberStr = '.'
" panes
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Coc
" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"NERDTree
map <C-n> :NERDTreeToggle<CR>

lua << END
require('lualine').setup {
  options = {theme = 'codedark'},
}
require("toggleterm").setup{}
END

" markdown codeblock highlighting
let g:markdown_fenced_languages = ['html', 'python', 'c', 'cpp', 'bash=sh']

" terminal emulator, use esc to return to normal mode
tnoremap <Esc> <C-\><C-n>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
