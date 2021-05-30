" set leader key
let mapleader=" "
" set auto completion mode
set completeopt=menuone,noselect
"====================general config=================================
set termguicolors
set t_Co=256
set clipboard+=unnamedplus
set tabstop=4 softtabstop=4 shiftwidth=4 autoindent
set expandtab smarttab
set incsearch ignorecase smartcase hlsearch
set list listchars=trail:»,tab:»-
set fillchars+=vert:\┆
set wrap breakindent
set encoding=utf-8
set fileencoding=utf-8
set number relativenumber
set title
set noshowmode
set noshowcmd
set conceallevel=2
set splitright
set splitbelow
set tw=90
set emoji
set history=1000
set backspace=indent,eol,start
set inccommand=nosplit
set showtabline=2
set grepprg=rg\ --vimgrep

"set mouse=a

set iskeyword+=-
set formatoptions-=cro
syntax enable
set hidden
set pumheight=10
set whichwrap+=<,>,[,],h,l
set ruler
set cmdheight=2
set laststatus=2
set background=dark
set guicursor=n-v-c:block,i-ci-ve:block,r-cr-o:hor20
set cursorline
set foldenable
set foldlevel=0
set foldlevelstart=10
set foldmethod=syntax

" set nocursorline
" set nocursorcolumn
" set scrolljump=5
set lazyredraw
set redrawtime=10000
set synmaxcol=180
set re=0

set nobackup
set nowritebackup
set updatetime=300
set shortmess+=c
set signcolumn=yes

let g:highlighedyank_highligh_duration=1000


