" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin('~/.config/nvim/plugged')

" Misc
Plug 'glepnir/dashboard-nvim'
Plug 'mbbill/undotree'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'unblevable/quick-scope'
Plug 'townk/vim-autoclose'
Plug 'folke/which-key.nvim'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'vim-scripts/restore_view.vim'
" Plug 'mhinz/vim-startify'
Plug 'morhetz/gruvbox'
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
call plug#end()
