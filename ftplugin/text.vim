"
" Begin text.vim

"**************
" Vim Settings
"^^^^^^^^^^^^^^
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set showcmd
set incsearch
set wrap
set spell
set foldenable
set foldlevel=99
set foldmethod=syntax
execute 'set dictionary+=' . g:LocalConfig . '/dictionary/en_US.txt' 
execute 'set thesaurus+=' . g:LocalConfig . '/thesaurus/en_US.txt' 
