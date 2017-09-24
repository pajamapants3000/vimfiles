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
    set tags+=$HOME\ctags\lua.tags
else
    set tags+=$HOME/.config/ctags/lua.tags
endif

"**************
" Vim Settings
"^^^^^^^^^^^^^^
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set foldmethod=marker
set foldlevel=99
set showcmd
set incsearch
set nowrap
set nospell
set foldenable

set commentstring=--[[\ %s\ ]]

