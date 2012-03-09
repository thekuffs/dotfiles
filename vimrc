" use vim instead of vi settings
set nocompatible

" pathogen
runtime bundle/tpope-vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc

" general
set number
set backspace=indent,eol,start
set history=500
set showcmd
set showmode
set autoread
set ruler
set modeline
syntax on

" gui
set guioptions=egm
set guifont=Menlo\ Regular:h10

" search
set incsearch
set hlsearch
set viminfo='100,f1

" turn off swapfiles
set noswapfile
set nobackup
set nowb

" persistent undo
set undodir=~/.vim/backups
set undofile

" indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

filetype plugin on
filetype indent on

" display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set nowrap
set linebreak

" folds
set foldmethod=indent
set foldnestmax=3
set nofoldenable

" completion
set wildmode=list:longest
set wildmenu
set wildignore=*.o,*.obj,*~
set wildignore+=*vim/backups*

" scrolling
set scrolloff=8
set sidescrolloff=15
set sidescroll=1

