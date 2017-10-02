" File c.vim
" c-specific vim configuration

" Easy-compile single source file. Add interface/input later for linking and
"+other situation-specific settings and input
nnoremap <leader>o :!make -f %:h/Makefile
nnoremap <leader>[ :!%:p:r<CR>
nnoremap <leader>] :!%:p:r
if has('win32')
    nnoremap <leader>C :cd $AA_DRIVPATH\Code\C<CR>
    nnoremap <leader>K :cd $AA_DRIVPATH\Code\C\King<CR>
    nnoremap <leader>p :!gcc -Wall -std=gnu99 -o %:r.exe %<CR>
else
    nnoremap <leader>C :cd $DRIVEPATH/Copy/Code/C<CR>
    nnoremap <leader>K :cd $DRIVEPATH/Copy/Code/C/King<CR>
    nnoremap <leader>p :!gcc -Wall -std=gnu99 -o %:r %<CR>
endif
"
" Additional configuration
"*************************
if has('win32')
    setlocal tags+=$HOME\ctags\c.tags
else
    setlocal tags+=$HOME/.config/ctags/c.tags
endif

" path additions
setlocal path+=$CXXPATH/include
setlocal path+=$CPATH/include
if has('win32')
  setlocal path+=$LOCAL/include
else
  setlocal path+=/usr/include
  setlocal path+=/usr/local/include
endif

setlocal commentstring=//\ %s

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

