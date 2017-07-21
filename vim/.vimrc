set nocompatible
set showmode
filetype off
"" Pathogen
execute pathogen#infect()

"" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'The-NERD-Commenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'
Plugin 'myusuf3/numbers.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Chiel92/vim-autoformat'
call vundle#end()

filetype plugin indent on

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

"" Indent
set autoindent
set copyindent
" # of spaces to indent 
set shiftwidth=4
set shiftround
set smarttab

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

"" Open NERDTree on startup
autocmd vimenter * NERDTree | wincmd p

"dont show lines in nerdtree
let g:numbers_exclude = ['nerdtree']

"" git diff update time
set updatetime=250

"" Mac Preferences 
syntax enable
set background=dark
set t_Co=256 
let g:solarized_termcolors=256
colorscheme solarized
set titleold=
set laststatus=2
let g:airline#extensions#whitespace#show_message=0
let g:airline_powerline_fonts=1
let g:airline_theme="wombat"
if !exists('g:airline_symbols')
	let g:airline_symbols={}
endif
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
