" File lua.vim
" lua-specific vim configuration

" mappings
"**********
" Run current script;
if has('win32')
  map <leader>p :!lua %:p<CR>
else
  map <leader>p :!/usr/bin/lua %:p<CR>
endif
" Omnicompletion - inserts first result;
imap <C-.> <C-X><C-O>
" Alternate that works in terminal
imap QQ <C-.>
" Omnicompletion - just opens window without modifying buffer;
imap <C-,> <C-X><C-O><C-P>
" Alternate that works in terminal
imap Qq <C-,>
" Additional configuration
"*************************
" Add any tags created for Lua
if has('win32')
    setlocal tags+=$HOME\ctags\lua.tags
else
    setlocal tags+=$HOME/.config/ctags/lua.tags
endif

"**************
" Vim Settings
"^^^^^^^^^^^^^^
setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal expandtab
setlocal foldmethod=marker
setlocal foldlevel=99
setlocal showcmd
setlocal incsearch
setlocal nowrap
setlocal nospell
setlocal foldenable
setlocal iskeyword=@,48-57,_,192-255

setlocal commentstring=--[[\ %s\ ]]

