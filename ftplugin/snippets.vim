"
" Begin snippets.vim

"**************
" Vim Settings
"^^^^^^^^^^^^^^
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal showcmd
setlocal incsearch
setlocal nowrap
setlocal nospell
setlocal foldenable
setlocal foldmethod=syntax
execute 'setlocal dictionary+=' . g:LocalConfig . '/dictionary/en_US.txt' 
execute 'setlocal thesaurus+=' . g:LocalConfig . '/thesaurus/en_US.txt' 

setlocal commentstring=#\ %s

" Collapse entire file except specific snippet being worked on
" This makes the script double as a nice concise listing of available snippets
setlocal foldlevel=0
setlocal foldclose=all

" Set b:match_words for matchit
"let b:match_words = '\<foo\>:\<bar\>'

