nnoremap ; :
" map <F6> :Startify <CR>
nmap <leader>r :so $MYVIMRC<CR>
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

" ========================" fugitive mapping
nmap <leader>gd :Gdiffsplit<CR>
nmap <leader>gb :Gblame<CR>

" ======================== move line up and down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

