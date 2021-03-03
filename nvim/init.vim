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

" some colors tweak
hi Pmenu guibg=#00010a guifg=white            " popup menu color
hi Comment gui=italic cterm=italic
hi Search guibg=#b16286 guifg=#ebdbb2 gui=NONE
hi NonText guifg=bg
hi clear CursorLineNr
hi CursorLineNr gui=bold
hi SpellBad guifg=NONE gui=bold,undercurl

" colors for git
"hi DiffAdd guibg=#0f111a guifg=#43a047
"hi DiffChange guibg=#0f111a guifg=#fdd835
"hi DiffRemoved guibg=#0f111a guifg=#e53935

" color for coc
"hi CocCursorRange guibg=#b16286 guifg=#ebdbb2


" plugin configs
" builtin plugin
let loaded_netrw=0
let g:omni_sql_no_default_maps=1    " disable omni sql completion

" vim rooter
let g:rooter_patterns = ['.git', 'Makefile', '*.sln', 'build/env.sh', '.idea']
let g:rooter_change_directory_for_non_project_files = 'current'
let g:rooter_resolve_links = 1

" vim airline
" let g:airline_theme='material'
let g:airline_skip_empty_sections = 1
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let g:airline#extensions#tabline#enabled=1
" let g:airline#extensions#tabline#buffer_min_count=2
let g:airline#extensions#tabline#fnamemod=':t'
let airline#extensions#coc#error_symbol='✘:'
let airline#extensions#coc#warning_symbol='⚠:'
" let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
    let g:airline_symbols={}
endif

" coc configs
" snippets
let g:coc_snippet_next = '<Tab>'
let g:coc_snippet_prev = '<S-Tab>'

" global extentions
let g:coc_global_extensions = [
            \'coc-yank',
            \'coc-pairs',
            \'coc-json',
            \'coc-actions',
            \'coc-html',
            \'coc-tsserver',
            \'coc-yaml',
            \'coc-lists',
            \'coc-snippets',
            \'coc-python',
            \'coc-clangd',
            \'coc-xml',
            \'coc-syntax',
            \'coc-git',
            \'coc-marketplace',
            \'coc-highlight',
            \'coc-flutter',
            \'coc-java',
            \'coc-todolist',
            \'coc-vetur'
            \]

" indentLine
" let g:indentLine_char_list = ['▏', '¦', '┆', '┊']
let g:indentLine_setColors = 0
let g:indentLine_setConceal = 0                         " actually fix the annoying markdown links conversion
let g:indentLine_fileTypeExclude = ['startify']

"" startify
let g:startify_padding_left = 10
let g:startify_session_persistence = 1
let g:startify_enable_special = 0
let g:startify_change_to_vcs_root = 1
let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_fortune_use_unicode = 1
let g:startify_enable_special = 0
let g:startify_lists = [
            \ { 'type': 'files'     },
            \ { 'type': 'sessions'  },
            \ { 'type': 'bookmarks' },
            \ { 'type': 'commands' },
            \ ]

" custom commands
let g:startify_commands = [
            \ {'ch':  ['Health Check', ':checkhealth']},
            \ {'ps': ['Plugins status', ':PlugStatus']},
            \ {'pu': ['Update vim plugins',':PlugUpdate | PlugUpgrade']},
            \ {'uc': ['Update coc Plugins', ':CocUpdate']},
            \ {'h':  ['Help', ':help']},
            \ ]

" rainbow brackets
let g:rainbow_active = 1

"" FZF
let g:fzf_action = {
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-x': 'split',
            \ 'ctrl-v': 'vsplit' }

let g:fzf_colors =
            \ { 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'border':  ['fg', 'Ignore'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }

let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'border': 'sharp' } }
let g:fzf_tags_command = 'ctags -R'

let $FZF_DEFAULT_OPTS = '--layout=reverse --inline-info'
let $FZF_DEFAULT_COMMAND = "rg --files --hidden -g \"!.git/**\" -g \"!node_modules/**\" -g \"!build\" -g \"!target\" -g \"!.idea\" -g \"!**.class\""

"================= commands ===================
au BufEnter * set fo-=c fo-=r fo-=o    " stop annoying auto commenting on newline
au FileType help wincmd L               " open help in vertical split
au BufWritePre * :%s/\s\+$//e           " remove trailing whitespaces before saving
au CursorHold * silent call CocActionAsync('highlight') " highlight match cursor hold

" set tab width by file type
let smalltabtypes = ['js', 'htm', 'html', 'css', 'sass', 'less', 'vue', 'jsx']
autocmd BufEnter * if index(smalltabtypes, &ft) >= 0 | setlocal shiftwidth=2 softtabstop=2 expandtab | endif

" enable spell check if only file type is text
let spellable = ['markdown', 'gitcommit', 'txt', 'text', 'liquid', 'rst']
autocmd BufEnter * if index(spellable, &ft) < 0 | set nospell | else | set spell | endif

" coc completion popup
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" startify if no passed argument or all buffers are closed
augroup noargs
    autocmd BufDelete * if empty(filter(tabpagebuflist(), '!buflisted(v:val)')) | Startify | endif
    autocmd VimEnter * if argc() == 0 | Startify | endif
augroup END

" fzf if passed folder
augroup folderarg
    autocmd VimEnter * if argc() != 0 && isdirectory(argv()[0]) | execute 'cd' fnameescape(argv()[0]) | endif
    autocmd VimEnter * if argc() != 0 && isdirectory(argv()[0]) | Startify | endif
    autocmd VimEnter * if argc() != 0 && isdirectory(argv()[0]) | execute 'Files' fnameescape(argv()[0]) | endif
augroup END

" return to last edit position when opening file
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal! g`\"" |
            \ endif

" coc-smartf auto
augroup Smartf
    autocmd User SmartfEnter :hi Conceal ctermfg=220 guifg=#6638F0
    autocmd User SmartfLeave :hi Conceal ctermfg=239 guifg=#504945
augroup END


" format command
command! -nargs=0 Format :call CocAction('format')
" organize imports
command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')
" files in fzf
command! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options':['--layout=reverse', '--inline-info']}), <bang>0)
" advanced grep
command! -nargs=* -bang Rg call RipgrepFzf(<q-args>, <bang>0)

"================== custom functions ===============
" advanced grep
function! RipgrepFzf(query, fullscreen)
    let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
    let initial_command = printf(command_fmt, shellescape(a:query))
    let reload_command = printf(command_fmt, '{q}')
    let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
    call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

" startify file icons
"function! StartifyEntryFormat()
"    return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
"endfunction

" check if last inserted char is a backspace (used by coc pmenu)
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" show docs on things with K
function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

" =============== mappings =======================
let mapleader = ' '
nnoremap ; :
map <F6> :Startify <CR>
nmap <leader>r :so ~/AppData/Local/nvim/init.vim<CR>
noremap <C-s> :w <CR>
noremap <C-q> :q<CR>
nmap <leader>q :bd<CR>
nmap <leader>w :w<CR>
map <leader>fm :Format<CR>
nmap <Tab> :bnext<CR>
nmap <S-Tab> :bprevious<CR>
noremap <leader>e :PlugInstall<CR>
map <F7> gg=G<C-o><C-o>
" new line in normal mode and back
map <Enter> o<ESC>
map <S-Enter> O<ESC>

" use different register fir delete and paste
nnoremap d "_d
vnoremap d "_d
vnoremap p "_dP
nnoremap x "_x

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" disable hl with 2 escape
noremap <silent><esc> <esc> :nohl<CR><esc>

" trim white spaces
nnoremap <F2> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" markdown preview
au FileType markdown nmap <leader>m :MarkdownPreview<CR>

" fzf
nnoremap <silent> <leader>f :Files<CR>
nmap <leader>b :Buffers<CR>
nmap <leader>c :Commands<CR>
nmap <leader>t :BTags<CR>
nmap <leader>/ :Rg<CR>
nmap <leader>gc :Commits<CR>
nmap <leader>gs :GFiles?<CR>
nmap <leader>sh :History/<CR>

" show mapping on all modes with F1
nmap <F1> <plug>(fzf-map-n)
imap <F1> <plug>(fzf-map-i)
vmap <F1> <plug>(fzf-map-x)

" ============================COC=======================
" use tab to navigate snippets placeholders
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
" use enter to accept snippet expansion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"
" crtl-space to force completion
inoremap <silent><expr> <c-space> coc#refresh()
" multi cursor shortcut
nmap <silent> <C-a> <Plug>(coc-cursors-word)
xmap <silent> <C-a> <Plug>(coc-cursors-range)
" use [g and ]g to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" other stuff
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>o :OR <CR>
" jump stuff
nmap <leader>jd <Plug>(coc-definition)
nmap <leader>jy <Plug>(coc-type-definition)
nmap <leader>ji <Plug>(coc-implementation)
nmap <leader>jr <Plug>(coc-references)
" other coc actions
xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open' . visualmode()<CR>
nmap <leader>a :CocCommand actions.open<CR>
nnoremap <silent> K :call <SID>show_documentation()<CR>
" flutter mapping
nnoremap <F3> :CocCommand flutter.devices<CR>
nnoremap <F4> :CocCommand flutter.emulator<CR>
nnoremap <F5> :CocCommand flutter.run<CR>

" fugitive mapping
nmap <leader>gd :Gdiffsplit<CR>
nmap <leader>gb :Gblame<CR>

