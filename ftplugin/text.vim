"
" Begin text.vim

"**************
" Vim Settings
"^^^^^^^^^^^^^^
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal noexpandtab
setlocal showcmd
setlocal incsearch
setlocal wrap
setlocal spell
setlocal foldenable
setlocal foldlevel=99
setlocal foldmethod=syntax
execute 'setlocal dictionary+=' . g:LocalConfig . '/dictionary/en_US.txt' 
execute 'setlocal thesaurus+=' . g:LocalConfig . '/thesaurus/en_US.txt' 
