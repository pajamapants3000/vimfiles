" File c.vim
" c-specific vim configuration

" Easy-compile single source file. Add interface/input later for linking and
"+other situation-specific settings and input
map <leader>p :!javac %<CR>
map <leader>[ :!java %:r<CR>
if has('win32')
    map <leader>J :cd $SYNCPATH\Copy\Code\Java<CR>
    map <leader>H :cd $SYNCPATH\Copy\Code\Java\Head_First<CR>
else
    map <leader>J :cd ~/Copy/Code/Java<CR>
    map <leader>H :cd ~/Copy/Code/Java/Head_First<CR>
endif
"
" Additional configuration
"*************************
if has('win32')
    set tags+=$HOME\ctags\java.tags
else
    set tags+=$HOME/.config/ctags/java.tags
endif

