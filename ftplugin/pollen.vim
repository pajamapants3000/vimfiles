" pollen.vim
" vim configuration for pollen preprocessor files (.pp, .pm, .pmd)

" pollen commands
nnoremap <leader>- :!raco pollen render %:p<CR>
nnoremap <leader>= :ConqueTermTab raco pollen start<CR>
" jump to important directories
if has('win32')
    nnoremap <leader>p :cd $USERPROFILE\pollen<CR>
else
    nnoremap <leader>p :cd $HOME/pollen<CR>
endif
"
" Additional configuration
"*************************
" ctags - not sure if this is even of use
if has('win32')
    set tags+=$HOME\ctags\pollen.tags
else
    set tags+=$HOME/.config/ctags/pollen.tags
endif

set smartindent
set lisp
" I don't think there are any working comments in pollen
"+only for the output file type (e.g. html)
set cms=<!--\ %s\ -->


