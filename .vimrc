" Set compatibility to Vim only.
set nocompatible
" Turn off modelines
set modelines=0

" Display options
set showmode
set showcmd

" Helps force plug-ins to load correctly when it is turned back on below.
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
call vundle#end()
filetype plugin indent on


" Turn on syntax highlighting.
syntax on

" Automatically wrap text that extends beyond the screen length.
set wrap
set textwidth=120
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround

" Vim's auto indentation feature does not work properly with text copied
" from outside of Vim. Press the <F2> key to toggle paste mode on/off.
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

" Speed up scrolling in Vim
set ttyfast

" Display encoding
set encoding=utf-8
set lazyredraw

" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=5

" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set showmatch
set matchpairs+=<:>

" Display different types of white spaces.
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" Show line numbers
set number

set foldenable
set foldlevelstart=10
nnoremap <space> za
set foldmethod=indent

" Automatically save and load folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview"

" Status bar
set laststatus=2
" Set status line display
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

" highlight search, incremental search, ignorecase, smartcase
set hlsearch
set incsearch
set ignorecase
set smartcase
nnoremap <leader><space> :nohlsearch<CR>

" Store info from no more than 100 files at a time, 9999 lines of text,
" 100kb of data. Useful for copying large amounts of data between files.
set viminfo='100,<9999,s100

" Fixes common backspace problems
set backspace=indent,eol,start

