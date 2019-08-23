set nocompatible
set showmode
"" Pathogen
execute pathogen#infect()

"" vim-plug
call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'myusuf3/numbers.vim'
Plug 'Chiel92/vim-autoformat'

call plug#end()

au FileType pug setl sw=2 sts=2 et
"" Hide buffer
set hidden

"" Wrap lines
set nowrap

"" Tab 4 spaces
set tabstop=4

"" Line numbers
set number

"" backspace fix
set backspace=indent,eol,start

"" fix copy paste
set clipboard=unnamed

"" Undofile
if !isdirectory($HOME."/.vim")
    call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undo-dir")
    call mkdir($HOME."/.vim/undo-dir", "", 0700)
endif
set undodir=~/.vim/undo-dir
set undofile

"" Indent
set autoindent
set copyindent
" # of spaces to indent 
set shiftwidth=4
set shiftround
set expandtab

"" Search
set showmatch
" Stop searching
nnoremap <c-l> :noh<return><c-l>

" case sensitive search
set ignorecase
set hlsearch
set incsearch

"" Remember many previous commands 
set history=1000

"" Undo 1000 times
set undolevels=1000

"" Change terminal title
set title

"" No sounds
set visualbell
set noerrorbells

"" No trashes
set nobackup
set noswapfile

"" Folding
set foldmethod=indent
set foldlevel=20

"" Open NERDTree on startup
"autocmd vimenter * NERDTree | wincmd p

"dont show lines in nerdtree
let g:numbers_exclude = ['nerdtree']

"" git diff update time
set updatetime=250

"" Mac Preferences 
syntax enable
set background=dark
set t_Co=256 
colorscheme kuroi
set titleold=
set laststatus=2
set lazyredraw
let g:airline#extensions#whitespace#show_message=0
let g:airline_powerline_fonts=1
let g:airline_theme="wombat"
if !exists('g:airline_symbols')
	let g:airline_symbols={}
endif

"" Display symbols
set encoding=utf-8

"" FormatJSON command
com! FormatJSON %!python -m json.tool

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = ''
