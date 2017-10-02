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
    setlocal tags+=$HOME\ctags\pollen.tags
else
    setlocal tags+=$HOME/.config/ctags/pollen.tags
endif

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
setlocal smartindent
setlocal lisp
execute 'setlocal dictionary+='.g:PlatformIndependentVimFolder.'/dictionary/en_US.txt' 
execute 'setlocal thesaurus+='.g:PlatformIndependentVimFolder.'/thesaurus/en_US.txt' 
setlocal commentstring=◊;\ %s

