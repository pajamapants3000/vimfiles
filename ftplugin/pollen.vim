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
set foldenable
set smartindent
set lisp
execute 'set dictionary+='.g:PlatformIndependentVimFolder.'/dictionary/en_US.txt' 
execute 'set thesaurus+='.g:PlatformIndependentVimFolder.'/thesaurus/en_US.txt' 
set commentstring=◊;\ %s

