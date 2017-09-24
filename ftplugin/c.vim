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
    set tags+=$HOME\ctags\c.tags
else
    set tags+=$HOME/.config/ctags/c.tags
endif

" path additions
set path+=$CXXPATH/include
set path+=$CPATH/include
if has('win32')
  set path+=$LOCAL/include
else
  set path+=/usr/include
  set path+=/usr/local/include
endif

set commentstring=//\ %s

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

