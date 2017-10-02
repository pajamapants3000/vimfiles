" File rust.vim
" rust-specific vim configuration

" Easy-compile single source file. Add interface/input later for linking and
"+other situation-specific settings and input
map <leader>p :!rustc %<CR>
map <leader>[ :!"%:p:r"<CR>
map <leader>] :!"%:p:r"
map <leader>R :cd $RUSTPATH<CR>
"
"**************
" Vim Settings
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
setlocal foldenable

setlocal commentstring=//\ %s

" Additional configuration
"*************************
if has('win32')
    setlocal tags+=$USERPROFILE.'/ctags/rust.tags'
else
    setlocal tags+=$HOME.'/.config/ctags/rust.tags'
endif

setlocal cms=//\ %s
setlocal isk=a-z,A-Z,48-57,-,_,!,#

" Set b:match_words for matchit
"let b:match_words = '\<foo\>:\<bar\>'

