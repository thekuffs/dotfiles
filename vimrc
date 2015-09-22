" use vim instead of vi settings
set nocompatible

" ~/.vimrc.before if it exists
if filereadable(expand("~/.vimrc.before"))
    source ~/.vimrc.before
endif

" re-map the leader key
let mapleader = ','

" easy window navigation
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
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
colorscheme solarized

" gui
set guioptions=egm
set guifont=Source\ Code\ Pro\ for\ Powerline\ 10
if has("gui_macvim")
    set guifont=Source\ Code\ Pro\ for\ Powerline:h12
endif

" search
set incsearch
set hlsearch
set viminfo='100,f1

" turn off swapfiles
set noswapfile
set nobackup
set nowb

" persistent undo
if version >= 730
    set undodir=~/.vim/backups
    set undofile
endif

" indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

" fix python comment tabbing
autocmd BufRead *.py inoremap # X<c-h>#

filetype plugin on
filetype indent on

" 4 space tabs are great, except 2 is better for front-end
autocmd Filetype html,htmldjango,handlebars setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript,coffee setlocal ts=2 sts=2 sw=2
autocmd Filetype sls setlocal ts=2 sts=2 sw=2
autocmd Filetype css,less,sass,scss,stylus setlocal ts=2 sts=2 sw=2
autocmd Filetype python setlocal textwidth=78
autocmd FileType markdown,gitcommit setlocal spell spelllang=en_us
autocmd FileType puppet setlocal ts=2 sts=2 sw=2
autocmd FileType yaml setlocal ts=2 sts=2 sw=2
autocmd FileType htmlcheetah setlocal ts=2 sts=2 sw=2

set nowrap
set linebreak

" folds
set foldmethod=indent
set foldnestmax=3
set nofoldenable

" completion
set wildmode=longest,list,full
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
