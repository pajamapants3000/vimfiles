" File racket.vim
" Racket file-type plugin

set tabstop=2
set softtabstop=2
set shiftwidth=2

" Additional configuration
"*************************
" ctags - not sure if this is even of use
if has('win32')
    set tags+=$HOME\ctags\racket.tags
else
    set tags+=$HOME/.config/ctags/racket.tags
endif

