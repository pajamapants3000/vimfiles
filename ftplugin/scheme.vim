" File scheme.vim
" Scheme (Racket) file-type plugin

"**************
" Vim Settings
"^^^^^^^^^^^^^^
setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal expandtab
setlocal foldmethod=marker
setlocal foldlevel=99
setlocal showcmd
setlocal incsearch
setlocal nowrap
setlocal nospell
setlocal foldenable
setlocal lisp

setlocal commentstring=;\ %s

" Additional configuration
"*************************
" ctags - not sure if this is even of use
if has('win32')
    setlocal tags+=$HOME\ctags\scheme.tags
else
    setlocal tags+=$HOME/.config/ctags/scheme.tags
endif
