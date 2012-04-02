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
set cursorline
set laststatus=2 " always show statusline
set encoding=utf-8
set bg=dark
syntax on
colorscheme molokai

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

" 4 space tabs are great, except 2 is better for front-end
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype css setlocal ts=2 sts=2 sw=2
autocmd Filetype less setlocal ts=2 sts=2 sw=2

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

" keybindings
" Tap enter to stop highlighting search, highlighting returns upon pressing n
" or new search.
nnoremap <CR> :noh<CR><CR>


" Load custom settings for vim plugins
for f in split(glob('~/.vim/plugin/settings/*.vim'), '\n')
    exe 'source' f
endfor

if filereadable(expand("~/.vimrc.after"))
    source ~/.vimrc.after
endif
