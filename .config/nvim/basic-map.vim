" Basics
let mapleader=" "
set pastetoggle=<F3>

" Search highlighting off
map <leader>n :nohlsearch<CR>

" Help
map <leader>h :h 

" Spellcheck
map <F4> :setlocal spell!<cr>

" Saving
map <leader>w :update<CR>
map <F2> :update<CR>
map <leader>W :w !sudo tee %<CR><CR>
map <leader>q :bw<CR>

" Remap Q to be useful to me
nnoremap Q q:
vnoremap Q q:

" Toggle cursor highlighting
map <leader>c :set cursorline! cursorcolumn!<CR>

" change vimrc on the fly
nmap <leader>s :source $MYVIMRC <CR>
nmap <leader>v :tabedit $MYVIMRC <CR>
" auto source when writing to init.vm alternatively you can run :source $MYVIMRC
au! BufWritePost $MYVIMRC source %      

" Movements

" Make h,l cosistent with other movements
nnoremap H 0
nnoremap L $

" Easier scrolling
nnoremap K <c-y>
nnoremap J <c-e>
" Remap J functionality
map <leader>j :j<CR>

" map movements to esc
inoremap jj <ESC>
inoremap kk <ESC>
inoremap hh <ESC>

" Smart way to move between windows
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

" open new file on gf if file doesn't exist
nnoremap gf :e <cfile><CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

