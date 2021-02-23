" auto-install vim-plug
if empty(glob($HOME . '/AppData/Local/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/AppData/Local/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin($HOME . '/AppData/Local/nvim/plugged')

  Plug 'vim-airline/vim-airline'                          " airline status bar
  Plug 'vim-airline/vim-airline-themes'
  Plug 'luochen1990/rainbow'                              " rainbow parenthesis
  Plug 'hzchirs/vim-material'                             " material color themes
  Plug 'gregsexton/MatchTag'                              " highlight matching html tags
  Plug 'Jorengarenar/vim-MvVis'                           " move visual selection
  Plug 'sainnhe/gruvbox-material'
  Plug 'mhinz/vim-startify'                               " cool start up screen
  " Plug 'ryanoasis/vim-devicons' 

  Plug 'neoclide/coc.nvim', {'branch': 'release'}         " LSP and more
  Plug 'neoclide/coc-prettier', { 'do': 'yarn install --frozen-lockfile' } " coc-prettier can not install with npm
  Plug 'junegunn/fzf'     " fzf itself
  Plug 'junegunn/fzf.vim'                                 " fuzzy search integration
  Plug 'SirVer/ultisnips'                                 " snippets manager
  Plug 'honza/vim-snippets'                               " actual snippets
  Plug 'Yggdroot/indentLine'                              " show indentation lines
  Plug 'tpope/vim-commentary'                             " better commenting
  Plug 'tpope/vim-fugitive'                               " git support
  Plug 'psliwka/vim-smoothie'                             " some very smooth ass scrolling
  Plug 'machakann/vim-sandwich'                           " make sandwiches
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }


  Plug 'airblade/vim-rooter'
  Plug 'brooth/far.vim'

  Plug 'voldikss/vim-floaterm'

  " Plug 'puremourning/vimspector'
  Plug 'mfussenegger/nvim-dap'

call plug#end()

" auto install missing plugins on startup
autocmd VimEnter *
  \ if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|    PlugInstall --sync | q
  \| endif

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
"set undofile
"set undodir=~/AppData/Local/nvim/undo
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
set re=1

set nobackup
set nowritebackup
set updatetime=300
set shortmess+=c
set signcolumn=yes

let g:highlighedyank_highligh_duration=1000

autocmd vimenter * ++nested colorscheme gruvbox-material

