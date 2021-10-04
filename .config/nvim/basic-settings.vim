set nocompatible
syntax on
filetype plugin on
set ignorecase
set timeoutlen=500
set showmatch

" Some display things
set termguicolors
set relativenumber
set so=5
set wildmode=longest,full
" Vertically center document when entering insert mode
autocmd InsertEnter * norm zz

" Save folds
autocmd BufWinLeave *.* mkview!
autocmd BufWinEnter *.* silent! loadview

" Disables automatic commenting on newline:
        autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Perform dot commands over visual blocks:
        vnoremap . :normal .<CR>

" Resize splits when the window is resized
au VimResized * :wincmd =

