" I'll manage my own path
let g:ctrlp_working_path_mode = 0
" Start in regexp mode by default (ctrl-r to toggle)
let g:ctrlp_regexp = 1
" Let's ignore version control and compiled files
let g:ctrlp_custom_ignore = {
    \ 'dir':    '\.git$\|\.hg$\|\.svn|node_modules$',
    \ 'file':   '\.pyc$',
    \ }
