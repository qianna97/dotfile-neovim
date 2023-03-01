syntax enable
set encoding=utf-8
set number relativenumber
set backspace=indent,eol,start
set noexpandtab
set autoindent
set fileformat=unix
set splitbelow
set splitright
set foldmethod=indent
set foldlevel=99
set cursorline
set scrolloff=8
set termguicolors
set nocompatible
set scrolloff=10
set background=dark

filetype plugin on
filetype plugin indent on

call plug#begin('~/.nvim/plugged')

" bracket and pairing, commenter
Plug 'tpope/vim-surround'
Plug 'chun-yang/auto-pairs'
Plug 'scrooloose/nerdcommenter'

" status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" file and word search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'

" indent
Plug 'yggdroot/indentline'
Plug 'airblade/vim-rooter'
Plug 'vim-scripts/indentpython.vim'

" icon
Plug 'kyazdani42/nvim-web-devicons'

" theme
Plug 'flazz/vim-colorschemes'
Plug 'dracula/vim', { 'as': 'dracula' }

" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" python styling
Plug 'nvie/vim-flake8'

" c++
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-jp/vim-cpp'

" rust
Plug 'rust-lang/rust.vim'

" completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" config theme
let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:dracula_bold = 1
let g:dracula_italic = 1
let g:dracula_underline = 1
let g:dracula_undercurl = 1
let g:dracula_colorterm = 0
let g:dracula_full_special_attrs_support = 1
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

colorscheme dracula
hi Normal ctermbg=NONE
hi nonText ctermbg=NONE

" config syntax
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:syntastic_rust_checkers = ['cargo']
let g:rooter_patterns = ['=src']

" config nercommenter
let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'

" key mapping

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" folding
nnoremap <space> za

"fuzzy file finder
nnoremap <C-p> :Files<Cr>
nnoremap <C-g> :Rg<Cr>

"autocomplete with tab selector
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"inverse tab with superkey
" for command mode
nnoremap <S-Tab> <<
" for insert mode
inoremap <S-Tab> <C-d>
