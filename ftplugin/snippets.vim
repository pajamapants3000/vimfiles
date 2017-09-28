"
" Begin snippets.vim

"**************
" Vim Settings
"^^^^^^^^^^^^^^
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set showcmd
set incsearch
set nowrap
set nospell
set foldenable
set foldmethod=syntax
execute 'set dictionary+=' . g:LocalConfig . '/dictionary/en_US.txt' 
execute 'set thesaurus+=' . g:LocalConfig . '/thesaurus/en_US.txt' 

set commentstring=#\ %s

" Collapse entire file except specific snippet being worked on
" This makes the script double as a nice concise listing of available snippets
set foldlevel=0
set foldclose=all

" Set b:match_words for matchit
"let b:match_words = '\<foo\>:\<bar\>'

