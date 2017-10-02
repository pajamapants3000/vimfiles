" File ahk.vim
" AutoHotkey-specific vim configuration
if has('win32')
    nnoremap    <leader>[   :!%:p<CR>
endif
setlocal commentstring=;\ %s

" setlocal b:match_words for matchit
" I don't know if autohotkey has any use for this
"let b:match_words = '\<foo\>:\<bar\>'

"**************
" Vim settings
"^^^^^^^^^^^^^^
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal foldmethod=marker
setlocal foldlevel=99
setlocal showcmd
setlocal incsearch
setlocal nowrap
setlocal nospell
