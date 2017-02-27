" Personal syntax settings
" Language: ALL
" Version: 0.1
" Last Change: 2017/02/04
" Maintainer: Tommy Lincoln <pajamapants3000@gmail.com>

if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

syn case match

" set tlTokens
call TlTokenHi()

let &cpo = s:cpo_save
unlet s:cpo_save

