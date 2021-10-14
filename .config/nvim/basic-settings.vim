set nocompatible
syntax on
filetype plugin on
set ignorecase
set timeoutlen=500
set showmatch
set hidden       " Required to keep multiple buffers open multiple buffers
set nowrap       " Display long lines as just one line
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent

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

" Copy paste between vim and everything else
set clipboard=unnamedplus               
