" File ahk.vim
" AutoHotkey-specific vim configuration
if has('win32')
    nnoremap    <leader>[   :!%:p<CR>
endif
set commentstring=;\ %s

" Set b:match_words for matchit
" I don't know if autohotkey has any use for this
"let b:match_words = '\<foo\>:\<bar\>'

"**************
" Vim Settings
"^^^^^^^^^^^^^^
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set foldmethod=marker
set foldlevel=99
set showcmd
set incsearch
set nowrap
set nospell

