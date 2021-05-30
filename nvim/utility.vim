"================= commands ===================
au BufEnter * set fo-=c fo-=r fo-=o    " stop annoying auto commenting on newline
au FileType help wincmd L               " open help in vertical split
au BufWritePre * :%s/\s\+$//e           " remove trailing whitespaces before saving
" au CursorHold * silent call CocActionAsync('highlight') " highlight match cursor hold

" set tab width by file type
let smalltabtypes = ['javascript', 'js', 'ts', 'htm', 'html', 'css', 'sass', 'less', 'vue', 'jsx']
autocmd BufEnter * if index(smalltabtypes, &ft) >= 0 | setlocal shiftwidth=2 softtabstop=2 expandtab | endif

" enable spell check if only file type is text
let spellable = ['markdown', 'gitcommit', 'txt', 'text', 'liquid', 'rst']
autocmd BufEnter * if index(spellable, &ft) < 0 | set nospell | else | set spell | endif

" coc completion popup
" autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" startify if no passed argument or all buffers are closed
" augroup noargs
"     autocmd BufDelete * if empty(filter(tabpagebuflist(), '!buflisted(v:val)')) | Startify | endif
"     autocmd VimEnter * if argc() == 0 | Startify | endif
" augroup END

" fzf if passed folder
" augroup folderarg
"     autocmd VimEnter * if argc() != 0 && isdirectory(argv()[0]) | execute 'cd' fnameescape(argv()[0]) | endif
"     autocmd VimEnter * if argc() != 0 && isdirectory(argv()[0]) | Startify | endif
"     autocmd VimEnter * if argc() != 0 && isdirectory(argv()[0]) | execute 'Files' fnameescape(argv()[0]) | endif
" augroup END

" return to last edit position when opening file
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal! g`\"" |
            \ endif


