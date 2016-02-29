" Runs CSApprox version in console

if has("gui_running")

    "%% SiSU Vim color file
    " Slate Maintainer: Ralph Amissah <ralph@amissah.com>
    " (originally looked at desert Hans Fugal <hans@fugal.net> http://hans.fugal.net/vim/colors/desert.vim (2003/05/06)
    :set background=dark
    :highlight clear
    if version > 580
    hi clear
    if exists("syntax_on")
    syntax reset
    endif
    endif
    let colors_name = "slate"
    :hi Normal guifg=White guibg=grey15
    :hi Cursor guibg=khaki guifg=slategrey
    :hi VertSplit guibg=#c2bfa5 guifg=grey40 gui=none cterm=reverse
    :hi Folded guibg=black guifg=grey40 ctermfg=grey ctermbg=darkgrey
    :hi FoldColumn guibg=black guifg=grey20 ctermfg=4 ctermbg=7
    :hi IncSearch guifg=green guibg=black cterm=none ctermfg=yellow ctermbg=green
    :hi ModeMsg guifg=goldenrod cterm=none ctermfg=brown
    :hi MoreMsg guifg=SeaGreen ctermfg=darkgreen
    :hi NonText guifg=RoyalBlue guibg=grey15 cterm=bold ctermfg=blue
    :hi Question guifg=springgreen ctermfg=green
    :hi Search guibg=peru guifg=wheat cterm=none ctermfg=grey ctermbg=blue
    :hi SpecialKey guifg=yellowgreen ctermfg=darkgreen
    :hi StatusLine guibg=#c2bfa5 guifg=black gui=none cterm=bold,reverse
    :hi StatusLineNC guibg=#c2bfa5 guifg=grey40 gui=none cterm=reverse
    :hi Title guifg=gold gui=bold cterm=bold ctermfg=yellow
    :hi Statement guifg=CornflowerBlue ctermfg=lightblue
    :hi Visual gui=none guifg=khaki guibg=olivedrab cterm=reverse
    :hi WarningMsg guifg=salmon ctermfg=1
    :hi String guifg=SkyBlue ctermfg=darkcyan
    :hi Comment term=bold ctermfg=11 guifg=grey40
    :hi Constant guifg=#ffa0a0 ctermfg=brown
    :hi Special guifg=darkkhaki ctermfg=brown
    :hi Identifier guifg=salmon ctermfg=red
    :hi Include guifg=red ctermfg=red
    :hi PreProc guifg=red guibg=white ctermfg=red
    :hi Operator guifg=Red ctermfg=Red
    :hi Define guifg=gold gui=bold ctermfg=yellow
    :hi Type guifg=CornflowerBlue ctermfg=2
    :hi Function guifg=navajowhite ctermfg=brown
    :hi Structure guifg=green ctermfg=green
    :hi LineNr guifg=grey50 ctermfg=3
    :hi Ignore guifg=grey40 cterm=bold ctermfg=7
    :hi Todo guifg=orangered guibg=yellow2
    :hi Directory ctermfg=darkcyan
    :hi ErrorMsg cterm=bold guifg=White guibg=Red cterm=bold ctermfg=7 ctermbg=1
    :hi VisualNOS cterm=bold,underline
    :hi WildMenu ctermfg=0 ctermbg=3
    :hi DiffAdd ctermbg=4
    :hi DiffChange ctermbg=5
    :hi DiffDelete cterm=bold ctermfg=4 ctermbg=6
    :hi DiffText cterm=bold ctermbg=1
    :hi Underlined cterm=underline ctermfg=5
    :hi Error guifg=White guibg=Red cterm=bold ctermfg=7 ctermbg=1
    :hi SpellErrors guifg=White guibg=Red cterm=bold ctermfg=7 ctermbg=1

else

    " This scheme was created by CSApproxSnapshot
    " on Sun, 12 Oct 2014

    hi clear
    if exists("syntax_on")
	syntax reset
    endif

    if v:version < 700
	let g:colors_name = expand("<sfile>:t:r")
	command! -nargs=+ CSAHi exe "hi" substitute(substitute(<q-args>, "undercurl", "underline", "g"), "guisp\\S\\+", "", "g")
    else
	let g:colors_name = expand("<sfile>:t:r")
	command! -nargs=+ CSAHi exe "hi" <q-args>
    endif

    function! s:old_kde()
      " Konsole only used its own palette up til KDE 4.2.0
      if executable('kde4-config') && system('kde4-config --kde-version') =~ '^4.[10].'
	return 1
      elseif executable('kde-config') && system('kde-config --version') =~# 'KDE: 3.'
	return 1
      else
	return 0
      endif
    endfunction

    if 0
    elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_konsole") && g:CSApprox_konsole) || (&term =~? "^konsole" && s:old_kde())
	CSAHi Normal term=NONE cterm=NONE ctermbg=235 ctermfg=231 gui=NONE guibg=#262626 guifg=#ffffff
	CSAHi rubyMethodDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyClassDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyModuleDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c_to_airline_x_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#303030 guifg=#303030
	CSAHi airline_a_to_airline_b_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=234 gui=NONE guibg=#262626 guifg=#1c1c1c
	CSAHi airline_y_to_airline_z_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=234 gui=NONE guibg=#262626 guifg=#1c1c1c
	CSAHi airline_b_to_airline_c_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_x term=NONE cterm=NONE ctermbg=234 ctermfg=158 gui=NONE guibg=#202020 guifg=#9cffd3
	CSAHi airline_x_bold term=bold cterm=bold ctermbg=234 ctermfg=158 gui=bold guibg=#202020 guifg=#9cffd3
	CSAHi airline_x_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi airline_y term=NONE cterm=NONE ctermbg=238 ctermfg=231 gui=NONE guibg=#444444 guifg=#ffffff
	CSAHi airline_y_bold term=bold cterm=bold ctermbg=238 ctermfg=231 gui=bold guibg=#444444 guifg=#ffffff
	CSAHi airline_y_red term=NONE cterm=NONE ctermbg=238 ctermfg=196 gui=NONE guibg=#444444 guifg=#ff0000
	CSAHi airline_y_inactive_red term=NONE cterm=NONE ctermbg=235 ctermfg=196 gui=NONE guibg=#262626 guifg=#ff0000
	CSAHi vimAutoEventList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynKeyRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_inactive_bold term=bold cterm=bold ctermbg=234 ctermfg=239 gui=bold guibg=#1c1c1c guifg=#4e4e4e
	CSAHi vimSynMatchRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynMtchCchar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynMtchGroup term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=149 gui=NONE guibg=bg guifg=#9acd32
	CSAHi NonText term=bold cterm=bold ctermbg=235 ctermfg=68 gui=bold guibg=#262626 guifg=#4169e1
	CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=51 gui=NONE guibg=bg guifg=#00ffff
	CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=#ff0000 guifg=#ffffff
	CSAHi IncSearch term=reverse cterm=reverse ctermbg=34 ctermfg=16 gui=reverse guibg=#000000 guifg=#008000
	CSAHi Search term=reverse cterm=NONE ctermbg=179 ctermfg=224 gui=NONE guibg=#cd853f guifg=#f5deb3
	CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=72 gui=bold guibg=bg guifg=#2e8b57
	CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=179 gui=bold guibg=bg guifg=#daa520
	CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=244 gui=NONE guibg=bg guifg=#7f7f7f
	CSAHi vimRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
	CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=51 gui=undercurl guibg=bg guifg=fg guisp=#00ffff
	CSAHi Pmenu term=NONE cterm=NONE ctermbg=201 ctermfg=fg gui=NONE guibg=#ff00ff guifg=fg
	CSAHi PmenuSel term=NONE cterm=NONE ctermbg=248 ctermfg=fg gui=NONE guibg=#a9a9a9 guifg=fg
	CSAHi vimAugroup term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=231 ctermfg=fg gui=NONE guibg=#ffffff guifg=fg
	CSAHi TabLine term=underline cterm=underline ctermbg=248 ctermfg=fg gui=underline guibg=#a9a9a9 guifg=fg
	CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
	CSAHi TabLineFill term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
	CSAHi CursorColumn term=reverse cterm=NONE ctermbg=102 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
	CSAHi vimIf term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyMethodBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyDoBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z term=NONE cterm=NONE ctermbg=190 ctermfg=18 gui=NONE guibg=#dfff00 guifg=#00005f
	CSAHi airline_z_bold term=bold cterm=bold ctermbg=190 ctermfg=18 gui=bold guibg=#dfff00 guifg=#00005f
	CSAHi airline_z_red term=NONE cterm=NONE ctermbg=190 ctermfg=196 gui=NONE guibg=#dfff00 guifg=#ff0000
	CSAHi airline_a term=NONE cterm=NONE ctermbg=190 ctermfg=18 gui=NONE guibg=#dfff00 guifg=#00005f
	CSAHi airline_a_bold term=bold cterm=bold ctermbg=190 ctermfg=18 gui=bold guibg=#dfff00 guifg=#00005f
	CSAHi airline_a_red term=NONE cterm=NONE ctermbg=190 ctermfg=196 gui=NONE guibg=#dfff00 guifg=#ff0000
	CSAHi airline_b term=NONE cterm=NONE ctermbg=238 ctermfg=231 gui=NONE guibg=#444444 guifg=#ffffff
	CSAHi airline_b_bold term=bold cterm=bold ctermbg=238 ctermfg=231 gui=bold guibg=#444444 guifg=#ffffff
	CSAHi airline_b_red term=NONE cterm=NONE ctermbg=238 ctermfg=196 gui=NONE guibg=#444444 guifg=#ff0000
	CSAHi airline_c term=NONE cterm=NONE ctermbg=234 ctermfg=158 gui=NONE guibg=#202020 guifg=#9cffd3
	CSAHi vimSynRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynPatMod term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSyncLines term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSyncMatch term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSyncLinebreak term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi CursorLine term=underline cterm=NONE ctermbg=102 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
	CSAHi ColorColumn term=reverse cterm=NONE ctermbg=124 ctermfg=fg gui=NONE guibg=#8b0000 guifg=fg
	CSAHi Cursor term=NONE cterm=NONE ctermbg=229 ctermfg=109 gui=NONE guibg=#f0e68c guifg=#708090
	CSAHi lCursor term=NONE cterm=NONE ctermbg=231 ctermfg=235 gui=NONE guibg=#ffffff guifg=#262626
	CSAHi vimEcho term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Error term=reverse cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=#ff0000 guifg=#ffffff
	CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=102 gui=NONE guibg=bg guifg=#666666
	CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=217 gui=NONE guibg=bg guifg=#ffa0a0
	CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=186 gui=NONE guibg=bg guifg=#bdb76b
	CSAHi rubyCurlyBlockDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyCurlyBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyArrayDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyArrayLiteral term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyBlockExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyCaseExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyConditionalExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyOptionalDoLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c_bold term=bold cterm=bold ctermbg=234 ctermfg=158 gui=bold guibg=#202020 guifg=#9cffd3
	CSAHi airline_c_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi airline_warning term=NONE cterm=NONE ctermbg=172 ctermfg=16 gui=NONE guibg=#df5f00 guifg=#000000
	CSAHi airline_warning_bold term=bold cterm=bold ctermbg=172 ctermfg=16 gui=bold guibg=#df5f00 guifg=#000000
	CSAHi airline_warning_red term=NONE cterm=NONE ctermbg=172 ctermfg=196 gui=NONE guibg=#df5f00 guifg=#ff0000
	CSAHi airline_c1_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_y_to_airline_z_bold term=bold cterm=bold ctermbg=238 ctermfg=190 gui=bold guibg=#444444 guifg=#dfff00
	CSAHi airline_y_to_airline_z_red term=NONE cterm=NONE ctermbg=238 ctermfg=196 gui=NONE guibg=#444444 guifg=#ff0000
	CSAHi airline_c_to_airline_x_bold term=bold cterm=bold ctermbg=234 ctermfg=234 gui=bold guibg=#202020 guifg=#202020
	CSAHi airline_c_to_airline_x_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi vimSyncLinecont term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSyncRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiLink term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiKeyList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimExecute term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=216 gui=NONE guibg=bg guifg=#fa8072
	CSAHi Statement term=bold cterm=bold ctermbg=bg ctermfg=111 gui=bold guibg=bg guifg=#6495ed
	CSAHi vimFuncBlank term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Type term=underline cterm=bold ctermbg=bg ctermfg=111 gui=bold guibg=bg guifg=#6495ed
	CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=147 gui=underline guibg=bg guifg=#80a0ff
	CSAHi vimEscapeBrace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Todo term=NONE cterm=NONE ctermbg=226 ctermfg=202 gui=NONE guibg=#eeee00 guifg=#ff4500
	CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=153 gui=NONE guibg=bg guifg=#87ceeb
	CSAHi rubyRepeatExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyMultilineComment term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi VertSplit term=reverse cterm=NONE ctermbg=187 ctermfg=102 gui=NONE guibg=#c2bfa5 guifg=#666666
	CSAHi airline_a_to_airline_b_bold term=bold cterm=bold ctermbg=238 ctermfg=190 gui=bold guibg=#444444 guifg=#dfff00
	CSAHi airline_a_to_airline_b_red term=NONE cterm=NONE ctermbg=238 ctermfg=196 gui=NONE guibg=#444444 guifg=#ff0000
	CSAHi airline_x_to_airline_y_bold term=bold cterm=bold ctermbg=234 ctermfg=238 gui=bold guibg=#202020 guifg=#444444
	CSAHi airline_x_to_airline_y_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi airline_b_to_airline_c_bold term=bold cterm=bold ctermbg=234 ctermfg=238 gui=bold guibg=#202020 guifg=#444444
	CSAHi airline_b_to_airline_c_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi airline_z_to_airline_warning_bold term=bold cterm=bold ctermbg=190 ctermfg=172 gui=bold guibg=#dfff00 guifg=#df5f00
	CSAHi airline_z_to_airline_warning_red term=NONE cterm=NONE ctermbg=190 ctermfg=196 gui=NONE guibg=#dfff00 guifg=#ff0000
	CSAHi airline_a_to_airline_b_inactive_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=234 gui=NONE guibg=#262626 guifg=#1c1c1c
	CSAHi airline_a_to_airline_b_inactive_inactive_bold term=bold cterm=bold ctermbg=235 ctermfg=234 gui=bold guibg=#262626 guifg=#1c1c1c
	CSAHi vimHiBang term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiCtermColor term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiFontname term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiGuiFontname term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSubstRep term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSubstRange term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=223 gui=NONE guibg=bg guifg=#ffdead
	CSAHi Operator term=NONE cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#ff0000
	CSAHi Include term=NONE cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#ff0000
	CSAHi rubyKeywordAsMethod term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimRubyRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_a_to_airline_b_inactive_inactive_red term=NONE cterm=NONE ctermbg=235 ctermfg=196 gui=NONE guibg=#262626 guifg=#ff0000
	CSAHi airline_b_to_airline_c_inactive_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_b_to_airline_c_inactive_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=235 gui=bold guibg=#303030 guifg=#262626
	CSAHi airline_b_to_airline_c_inactive_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_y_to_airline_z_inactive_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=234 gui=NONE guibg=#262626 guifg=#1c1c1c
	CSAHi airline_y_to_airline_z_inactive_inactive_bold term=bold cterm=bold ctermbg=235 ctermfg=234 gui=bold guibg=#262626 guifg=#1c1c1c
	CSAHi airline_y_to_airline_z_inactive_inactive_red term=NONE cterm=NONE ctermbg=235 ctermfg=196 gui=NONE guibg=#262626 guifg=#ff0000
	CSAHi airline_c_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#303030 guifg=#303030
	CSAHi airline_c_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=236 gui=bold guibg=#303030 guifg=#303030
	CSAHi airline_c_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_b_to_airline_c term=NONE cterm=NONE ctermbg=234 ctermfg=238 gui=NONE guibg=#202020 guifg=#444444
	CSAHi vimHiTermcap term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Define term=NONE cterm=bold ctermbg=bg ctermfg=220 gui=bold guibg=bg guifg=#ffd700
	CSAHi vimPatRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Structure term=NONE cterm=NONE ctermbg=bg ctermfg=34 gui=NONE guibg=bg guifg=#008000
	CSAHi vimCollection term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=244 ctermfg=fg gui=NONE guibg=#808080 guifg=fg
	CSAHi vimAugroupError term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_to_airline_warning_inactive_inactive term=NONE cterm=NONE ctermbg=234 ctermfg=172 gui=NONE guibg=#1c1c1c guifg=#df5f00
	CSAHi airline_z_to_airline_warning_inactive_inactive_bold term=bold cterm=bold ctermbg=234 ctermfg=172 gui=bold guibg=#1c1c1c guifg=#df5f00
	CSAHi airline_z_to_airline_warning_inactive_inactive_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#1c1c1c guifg=#ff0000
	CSAHi airline_x_to_airline_y_inactive_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_x_to_airline_y_inactive_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=235 gui=bold guibg=#303030 guifg=#262626
	CSAHi airline_x_to_airline_y_inactive_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_c1_to_airline_x term=NONE cterm=NONE ctermbg=235 ctermfg=234 gui=NONE guibg=#262626 guifg=#202020
	CSAHi vimCommentTitleLeader term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=102 gui=NONE guibg=bg guifg=#666666
	CSAHi MatchParen term=reverse cterm=NONE ctermbg=37 ctermfg=fg gui=NONE guibg=#008b8b guifg=fg
	CSAHi vimSubstPat term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSubstRep4 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_a_to_airline_b term=NONE cterm=NONE ctermbg=238 ctermfg=190 gui=NONE guibg=#444444 guifg=#dfff00
	CSAHi vimCollClass term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c_to_airline_x term=NONE cterm=NONE ctermbg=234 ctermfg=234 gui=NONE guibg=#202020 guifg=#202020
	CSAHi airline_x_to_airline_y term=NONE cterm=NONE ctermbg=234 ctermfg=238 gui=NONE guibg=#202020 guifg=#444444
	CSAHi airline_y_to_airline_z term=NONE cterm=NONE ctermbg=238 ctermfg=190 gui=NONE guibg=#444444 guifg=#dfff00
	CSAHi airline_z_to_airline_warning term=NONE cterm=NONE ctermbg=190 ctermfg=172 gui=NONE guibg=#dfff00 guifg=#df5f00
	CSAHi airline_x_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=239 gui=NONE guibg=#303030 guifg=#4e4e4e
	CSAHi airline_x_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=239 gui=bold guibg=#303030 guifg=#4e4e4e
	CSAHi airline_x_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi pythonSpaceError term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi pythonSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimPythonRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_to_airline_x term=NONE cterm=NONE ctermbg=235 ctermfg=234 gui=NONE guibg=#262626 guifg=#202020
	CSAHi vimStdPlugin term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c3_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyInterpolation term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi NONE term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyDelimEscape term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimFuncBody term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PreProc term=underline cterm=NONE ctermbg=231 ctermfg=196 gui=NONE guibg=#ffffff guifg=#ff0000
	CSAHi airline_y_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=239 gui=NONE guibg=#262626 guifg=#4e4e4e
	CSAHi airline_y_inactive_bold term=bold cterm=bold ctermbg=235 ctermfg=239 gui=bold guibg=#262626 guifg=#4e4e4e
	CSAHi vimAutoCmdSpace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_inactive term=NONE cterm=NONE ctermbg=234 ctermfg=239 gui=NONE guibg=#1c1c1c guifg=#4e4e4e
	CSAHi vimAutoCmdSfxList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_inactive_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#1c1c1c guifg=#ff0000
	CSAHi airline_a_inactive term=NONE cterm=NONE ctermbg=234 ctermfg=239 gui=NONE guibg=#1c1c1c guifg=#4e4e4e
	CSAHi airline_a_inactive_bold term=bold cterm=bold ctermbg=234 ctermfg=239 gui=bold guibg=#1c1c1c guifg=#4e4e4e
	CSAHi airline_a_inactive_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#1c1c1c guifg=#ff0000
	CSAHi airline_b_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=239 gui=NONE guibg=#262626 guifg=#4e4e4e
	CSAHi vimSetEqual term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimAugroupSyncA term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimGlobal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimExtCmd term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimFilter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyNestedParentheses term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyNestedCurlyBraces term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyNestedAngleBrackets term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyNestedSquareBrackets term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyRegexpParens term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMapRhs term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMapRhsExtend term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMenuBang term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMenuPriority term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c1_to_airline_x_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=236 gui=NONE guibg=#262626 guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=236 gui=NONE guibg=#262626 guifg=#303030
	CSAHi vimMenuMap term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyRegexpBrackets term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSet term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimUserCmd term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimCmdSep term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimIsCommand term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMenuRhs term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMapLhs term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimNormCmds term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimGroupList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyLocalVariableOrMethod term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyBlockArgument term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c1_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=231 ctermfg=236 gui=NONE guibg=#ffffff guifg=#303030
	CSAHi airline_c1_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=231 ctermfg=236 gui=bold guibg=#ffffff guifg=#303030
	CSAHi airline_c1_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=231 ctermfg=196 gui=NONE guibg=#ffffff guifg=#ff0000
	CSAHi airline_c2_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=231 ctermfg=236 gui=NONE guibg=#ffffff guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=231 ctermfg=236 gui=bold guibg=#ffffff guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=231 ctermfg=196 gui=NONE guibg=#ffffff guifg=#ff0000
	CSAHi cIf0 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_to_airline_x_bold term=bold cterm=bold ctermbg=231 ctermfg=234 gui=bold guibg=#ffffff guifg=#202020
	CSAHi airline_c2_to_airline_x_red term=NONE cterm=NONE ctermbg=231 ctermfg=196 gui=NONE guibg=#ffffff guifg=#ff0000
	CSAHi airline_c1_to_airline_x_bold term=bold cterm=bold ctermbg=231 ctermfg=234 gui=bold guibg=#ffffff guifg=#202020
	CSAHi CursorLineNr term=bold cterm=bold ctermbg=bg ctermfg=226 gui=bold guibg=bg guifg=#ffff00
	CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=48 gui=bold guibg=bg guifg=#00ff7f
	CSAHi StatusLine term=bold,reverse cterm=NONE ctermbg=187 ctermfg=16 gui=NONE guibg=#c2bfa5 guifg=#000000
	CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=187 ctermfg=102 gui=NONE guibg=#c2bfa5 guifg=#666666
	CSAHi vimFiletype term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=220 gui=bold guibg=bg guifg=#ffd700
	CSAHi Visual term=reverse cterm=NONE ctermbg=107 ctermfg=229 gui=NONE guibg=#6b8e23 guifg=#f0e68c
	CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
	CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=216 gui=NONE guibg=bg guifg=#fa8072
	CSAHi WildMenu term=NONE cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=#ffff00 guifg=#000000
	CSAHi rubyBlockParameterList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyHeredocStart term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimOperParen term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_b_inactive_bold term=bold cterm=bold ctermbg=235 ctermfg=239 gui=bold guibg=#262626 guifg=#4e4e4e
	CSAHi airline_b_inactive_red term=NONE cterm=NONE ctermbg=235 ctermfg=196 gui=NONE guibg=#262626 guifg=#ff0000
	CSAHi airline_c_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=239 gui=NONE guibg=#303030 guifg=#4e4e4e
	CSAHi airline_c_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=239 gui=bold guibg=#303030 guifg=#4e4e4e
	CSAHi airline_c_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_warning_inactive term=NONE cterm=NONE ctermbg=172 ctermfg=16 gui=NONE guibg=#df5f00 guifg=#000000
	CSAHi airline_warning_inactive_bold term=bold cterm=bold ctermbg=172 ctermfg=16 gui=bold guibg=#df5f00 guifg=#000000
	CSAHi airline_warning_inactive_red term=NONE cterm=NONE ctermbg=172 ctermfg=196 gui=NONE guibg=#df5f00 guifg=#ff0000
	CSAHi airline_x_to_airline_y_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_z_to_airline_warning_inactive term=NONE cterm=NONE ctermbg=234 ctermfg=172 gui=NONE guibg=#1c1c1c guifg=#df5f00
	CSAHi vimAuSyntax term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimClusterName term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c1_to_airline_x_red term=NONE cterm=NONE ctermbg=231 ctermfg=196 gui=NONE guibg=#ffffff guifg=#ff0000
	CSAHi Scrollbar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Menu term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi ShowMarksHL term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi diffOnly term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellErrors term=NONE cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=#ff0000 guifg=#ffffff
	CSAHi vimFunction term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Folded term=NONE cterm=NONE ctermbg=16 ctermfg=102 gui=NONE guibg=#000000 guifg=#666666
	CSAHi FoldColumn term=NONE cterm=NONE ctermbg=16 ctermfg=59 gui=NONE guibg=#000000 guifg=#333333
	CSAHi DiffAdd term=bold cterm=NONE ctermbg=19 ctermfg=fg gui=NONE guibg=#00008b guifg=fg
	CSAHi DiffChange term=bold cterm=NONE ctermbg=127 ctermfg=fg gui=NONE guibg=#8b008b guifg=fg
	CSAHi DiffDelete term=bold cterm=bold ctermbg=37 ctermfg=21 gui=bold guibg=#008b8b guifg=#0000ff
	CSAHi DiffText term=reverse cterm=bold ctermbg=196 ctermfg=fg gui=bold guibg=#ff0000 guifg=fg
	CSAHi SignColumn term=NONE cterm=NONE ctermbg=244 ctermfg=51 gui=NONE guibg=#808080 guifg=#00ffff
	CSAHi Conceal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=#ff0000
	CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=#0000ff
	CSAHi rubyAliasDeclaration2 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyAliasDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_eterm") && g:CSApprox_eterm) || &term =~? "^eterm"
	CSAHi Normal term=NONE cterm=NONE ctermbg=235 ctermfg=255 gui=NONE guibg=#262626 guifg=#ffffff
	CSAHi rubyMethodDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyClassDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyModuleDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c_to_airline_x_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#303030 guifg=#303030
	CSAHi airline_a_to_airline_b_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=234 gui=NONE guibg=#262626 guifg=#1c1c1c
	CSAHi airline_y_to_airline_z_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=234 gui=NONE guibg=#262626 guifg=#1c1c1c
	CSAHi airline_b_to_airline_c_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_x term=NONE cterm=NONE ctermbg=234 ctermfg=195 gui=NONE guibg=#202020 guifg=#9cffd3
	CSAHi airline_x_bold term=bold cterm=bold ctermbg=234 ctermfg=195 gui=bold guibg=#202020 guifg=#9cffd3
	CSAHi airline_x_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi airline_y term=NONE cterm=NONE ctermbg=238 ctermfg=255 gui=NONE guibg=#444444 guifg=#ffffff
	CSAHi airline_y_bold term=bold cterm=bold ctermbg=238 ctermfg=255 gui=bold guibg=#444444 guifg=#ffffff
	CSAHi airline_y_red term=NONE cterm=NONE ctermbg=238 ctermfg=196 gui=NONE guibg=#444444 guifg=#ff0000
	CSAHi airline_y_inactive_red term=NONE cterm=NONE ctermbg=235 ctermfg=196 gui=NONE guibg=#262626 guifg=#ff0000
	CSAHi vimAutoEventList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynKeyRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_inactive_bold term=bold cterm=bold ctermbg=234 ctermfg=239 gui=bold guibg=#1c1c1c guifg=#4e4e4e
	CSAHi vimSynMatchRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynMtchCchar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynMtchGroup term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=191 gui=NONE guibg=bg guifg=#9acd32
	CSAHi NonText term=bold cterm=bold ctermbg=235 ctermfg=105 gui=bold guibg=#262626 guifg=#4169e1
	CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=51 gui=NONE guibg=bg guifg=#00ffff
	CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=196 ctermfg=255 gui=NONE guibg=#ff0000 guifg=#ffffff
	CSAHi IncSearch term=reverse cterm=reverse ctermbg=34 ctermfg=16 gui=reverse guibg=#000000 guifg=#008000
	CSAHi Search term=reverse cterm=NONE ctermbg=215 ctermfg=230 gui=NONE guibg=#cd853f guifg=#f5deb3
	CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=72 gui=bold guibg=bg guifg=#2e8b57
	CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=221 gui=bold guibg=bg guifg=#daa520
	CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=145 gui=NONE guibg=bg guifg=#7f7f7f
	CSAHi vimRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
	CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=51 gui=undercurl guibg=bg guifg=fg guisp=#00ffff
	CSAHi Pmenu term=NONE cterm=NONE ctermbg=201 ctermfg=fg gui=NONE guibg=#ff00ff guifg=fg
	CSAHi PmenuSel term=NONE cterm=NONE ctermbg=248 ctermfg=fg gui=NONE guibg=#a9a9a9 guifg=fg
	CSAHi vimAugroup term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=255 ctermfg=fg gui=NONE guibg=#ffffff guifg=fg
	CSAHi TabLine term=underline cterm=underline ctermbg=248 ctermfg=fg gui=underline guibg=#a9a9a9 guifg=fg
	CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
	CSAHi TabLineFill term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
	CSAHi CursorColumn term=reverse cterm=NONE ctermbg=241 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
	CSAHi vimIf term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyMethodBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyDoBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z term=NONE cterm=NONE ctermbg=226 ctermfg=18 gui=NONE guibg=#dfff00 guifg=#00005f
	CSAHi airline_z_bold term=bold cterm=bold ctermbg=226 ctermfg=18 gui=bold guibg=#dfff00 guifg=#00005f
	CSAHi airline_z_red term=NONE cterm=NONE ctermbg=226 ctermfg=196 gui=NONE guibg=#dfff00 guifg=#ff0000
	CSAHi airline_a term=NONE cterm=NONE ctermbg=226 ctermfg=18 gui=NONE guibg=#dfff00 guifg=#00005f
	CSAHi airline_a_bold term=bold cterm=bold ctermbg=226 ctermfg=18 gui=bold guibg=#dfff00 guifg=#00005f
	CSAHi airline_a_red term=NONE cterm=NONE ctermbg=226 ctermfg=196 gui=NONE guibg=#dfff00 guifg=#ff0000
	CSAHi airline_b term=NONE cterm=NONE ctermbg=238 ctermfg=255 gui=NONE guibg=#444444 guifg=#ffffff
	CSAHi airline_b_bold term=bold cterm=bold ctermbg=238 ctermfg=255 gui=bold guibg=#444444 guifg=#ffffff
	CSAHi airline_b_red term=NONE cterm=NONE ctermbg=238 ctermfg=196 gui=NONE guibg=#444444 guifg=#ff0000
	CSAHi airline_c term=NONE cterm=NONE ctermbg=234 ctermfg=195 gui=NONE guibg=#202020 guifg=#9cffd3
	CSAHi vimSynRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynPatMod term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSyncLines term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSyncMatch term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSyncLinebreak term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi CursorLine term=underline cterm=NONE ctermbg=241 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
	CSAHi ColorColumn term=reverse cterm=NONE ctermbg=124 ctermfg=fg gui=NONE guibg=#8b0000 guifg=fg
	CSAHi Cursor term=NONE cterm=NONE ctermbg=229 ctermfg=145 gui=NONE guibg=#f0e68c guifg=#708090
	CSAHi lCursor term=NONE cterm=NONE ctermbg=255 ctermfg=235 gui=NONE guibg=#ffffff guifg=#262626
	CSAHi vimEcho term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Error term=reverse cterm=NONE ctermbg=196 ctermfg=255 gui=NONE guibg=#ff0000 guifg=#ffffff
	CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=241 gui=NONE guibg=bg guifg=#666666
	CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=224 gui=NONE guibg=bg guifg=#ffa0a0
	CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=187 gui=NONE guibg=bg guifg=#bdb76b
	CSAHi rubyCurlyBlockDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyCurlyBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyArrayDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyArrayLiteral term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyBlockExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyCaseExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyConditionalExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyOptionalDoLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c_bold term=bold cterm=bold ctermbg=234 ctermfg=195 gui=bold guibg=#202020 guifg=#9cffd3
	CSAHi airline_c_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi airline_warning term=NONE cterm=NONE ctermbg=208 ctermfg=16 gui=NONE guibg=#df5f00 guifg=#000000
	CSAHi airline_warning_bold term=bold cterm=bold ctermbg=208 ctermfg=16 gui=bold guibg=#df5f00 guifg=#000000
	CSAHi airline_warning_red term=NONE cterm=NONE ctermbg=208 ctermfg=196 gui=NONE guibg=#df5f00 guifg=#ff0000
	CSAHi airline_c1_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_y_to_airline_z_bold term=bold cterm=bold ctermbg=238 ctermfg=226 gui=bold guibg=#444444 guifg=#dfff00
	CSAHi airline_y_to_airline_z_red term=NONE cterm=NONE ctermbg=238 ctermfg=196 gui=NONE guibg=#444444 guifg=#ff0000
	CSAHi airline_c_to_airline_x_bold term=bold cterm=bold ctermbg=234 ctermfg=234 gui=bold guibg=#202020 guifg=#202020
	CSAHi airline_c_to_airline_x_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi vimSyncLinecont term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSyncRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiLink term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiKeyList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimExecute term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=217 gui=NONE guibg=bg guifg=#fa8072
	CSAHi Statement term=bold cterm=bold ctermbg=bg ctermfg=117 gui=bold guibg=bg guifg=#6495ed
	CSAHi vimFuncBlank term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Type term=underline cterm=bold ctermbg=bg ctermfg=117 gui=bold guibg=bg guifg=#6495ed
	CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=153 gui=underline guibg=bg guifg=#80a0ff
	CSAHi vimEscapeBrace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Todo term=NONE cterm=NONE ctermbg=226 ctermfg=208 gui=NONE guibg=#eeee00 guifg=#ff4500
	CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=159 gui=NONE guibg=bg guifg=#87ceeb
	CSAHi rubyRepeatExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyMultilineComment term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi VertSplit term=reverse cterm=NONE ctermbg=224 ctermfg=241 gui=NONE guibg=#c2bfa5 guifg=#666666
	CSAHi airline_a_to_airline_b_bold term=bold cterm=bold ctermbg=238 ctermfg=226 gui=bold guibg=#444444 guifg=#dfff00
	CSAHi airline_a_to_airline_b_red term=NONE cterm=NONE ctermbg=238 ctermfg=196 gui=NONE guibg=#444444 guifg=#ff0000
	CSAHi airline_x_to_airline_y_bold term=bold cterm=bold ctermbg=234 ctermfg=238 gui=bold guibg=#202020 guifg=#444444
	CSAHi airline_x_to_airline_y_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi airline_b_to_airline_c_bold term=bold cterm=bold ctermbg=234 ctermfg=238 gui=bold guibg=#202020 guifg=#444444
	CSAHi airline_b_to_airline_c_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi airline_z_to_airline_warning_bold term=bold cterm=bold ctermbg=226 ctermfg=208 gui=bold guibg=#dfff00 guifg=#df5f00
	CSAHi airline_z_to_airline_warning_red term=NONE cterm=NONE ctermbg=226 ctermfg=196 gui=NONE guibg=#dfff00 guifg=#ff0000
	CSAHi airline_a_to_airline_b_inactive_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=234 gui=NONE guibg=#262626 guifg=#1c1c1c
	CSAHi airline_a_to_airline_b_inactive_inactive_bold term=bold cterm=bold ctermbg=235 ctermfg=234 gui=bold guibg=#262626 guifg=#1c1c1c
	CSAHi vimHiBang term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiCtermColor term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiFontname term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiGuiFontname term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSubstRep term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSubstRange term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=230 gui=NONE guibg=bg guifg=#ffdead
	CSAHi Operator term=NONE cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#ff0000
	CSAHi Include term=NONE cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#ff0000
	CSAHi rubyKeywordAsMethod term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimRubyRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_a_to_airline_b_inactive_inactive_red term=NONE cterm=NONE ctermbg=235 ctermfg=196 gui=NONE guibg=#262626 guifg=#ff0000
	CSAHi airline_b_to_airline_c_inactive_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_b_to_airline_c_inactive_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=235 gui=bold guibg=#303030 guifg=#262626
	CSAHi airline_b_to_airline_c_inactive_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_y_to_airline_z_inactive_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=234 gui=NONE guibg=#262626 guifg=#1c1c1c
	CSAHi airline_y_to_airline_z_inactive_inactive_bold term=bold cterm=bold ctermbg=235 ctermfg=234 gui=bold guibg=#262626 guifg=#1c1c1c
	CSAHi airline_y_to_airline_z_inactive_inactive_red term=NONE cterm=NONE ctermbg=235 ctermfg=196 gui=NONE guibg=#262626 guifg=#ff0000
	CSAHi airline_c_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#303030 guifg=#303030
	CSAHi airline_c_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=236 gui=bold guibg=#303030 guifg=#303030
	CSAHi airline_c_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_b_to_airline_c term=NONE cterm=NONE ctermbg=234 ctermfg=238 gui=NONE guibg=#202020 guifg=#444444
	CSAHi vimHiTermcap term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Define term=NONE cterm=bold ctermbg=bg ctermfg=226 gui=bold guibg=bg guifg=#ffd700
	CSAHi vimPatRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Structure term=NONE cterm=NONE ctermbg=bg ctermfg=34 gui=NONE guibg=bg guifg=#008000
	CSAHi vimCollection term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=244 ctermfg=fg gui=NONE guibg=#808080 guifg=fg
	CSAHi vimAugroupError term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_to_airline_warning_inactive_inactive term=NONE cterm=NONE ctermbg=234 ctermfg=208 gui=NONE guibg=#1c1c1c guifg=#df5f00
	CSAHi airline_z_to_airline_warning_inactive_inactive_bold term=bold cterm=bold ctermbg=234 ctermfg=208 gui=bold guibg=#1c1c1c guifg=#df5f00
	CSAHi airline_z_to_airline_warning_inactive_inactive_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#1c1c1c guifg=#ff0000
	CSAHi airline_x_to_airline_y_inactive_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_x_to_airline_y_inactive_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=235 gui=bold guibg=#303030 guifg=#262626
	CSAHi airline_x_to_airline_y_inactive_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_c1_to_airline_x term=NONE cterm=NONE ctermbg=235 ctermfg=234 gui=NONE guibg=#262626 guifg=#202020
	CSAHi vimCommentTitleLeader term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=241 gui=NONE guibg=bg guifg=#666666
	CSAHi MatchParen term=reverse cterm=NONE ctermbg=37 ctermfg=fg gui=NONE guibg=#008b8b guifg=fg
	CSAHi vimSubstPat term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSubstRep4 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_a_to_airline_b term=NONE cterm=NONE ctermbg=238 ctermfg=226 gui=NONE guibg=#444444 guifg=#dfff00
	CSAHi vimCollClass term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c_to_airline_x term=NONE cterm=NONE ctermbg=234 ctermfg=234 gui=NONE guibg=#202020 guifg=#202020
	CSAHi airline_x_to_airline_y term=NONE cterm=NONE ctermbg=234 ctermfg=238 gui=NONE guibg=#202020 guifg=#444444
	CSAHi airline_y_to_airline_z term=NONE cterm=NONE ctermbg=238 ctermfg=226 gui=NONE guibg=#444444 guifg=#dfff00
	CSAHi airline_z_to_airline_warning term=NONE cterm=NONE ctermbg=226 ctermfg=208 gui=NONE guibg=#dfff00 guifg=#df5f00
	CSAHi airline_x_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=239 gui=NONE guibg=#303030 guifg=#4e4e4e
	CSAHi airline_x_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=239 gui=bold guibg=#303030 guifg=#4e4e4e
	CSAHi airline_x_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi pythonSpaceError term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi pythonSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimPythonRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_to_airline_x term=NONE cterm=NONE ctermbg=235 ctermfg=234 gui=NONE guibg=#262626 guifg=#202020
	CSAHi vimStdPlugin term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c3_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyInterpolation term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi NONE term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyDelimEscape term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimFuncBody term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PreProc term=underline cterm=NONE ctermbg=255 ctermfg=196 gui=NONE guibg=#ffffff guifg=#ff0000
	CSAHi airline_y_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=239 gui=NONE guibg=#262626 guifg=#4e4e4e
	CSAHi airline_y_inactive_bold term=bold cterm=bold ctermbg=235 ctermfg=239 gui=bold guibg=#262626 guifg=#4e4e4e
	CSAHi vimAutoCmdSpace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_inactive term=NONE cterm=NONE ctermbg=234 ctermfg=239 gui=NONE guibg=#1c1c1c guifg=#4e4e4e
	CSAHi vimAutoCmdSfxList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_inactive_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#1c1c1c guifg=#ff0000
	CSAHi airline_a_inactive term=NONE cterm=NONE ctermbg=234 ctermfg=239 gui=NONE guibg=#1c1c1c guifg=#4e4e4e
	CSAHi airline_a_inactive_bold term=bold cterm=bold ctermbg=234 ctermfg=239 gui=bold guibg=#1c1c1c guifg=#4e4e4e
	CSAHi airline_a_inactive_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#1c1c1c guifg=#ff0000
	CSAHi airline_b_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=239 gui=NONE guibg=#262626 guifg=#4e4e4e
	CSAHi vimSetEqual term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimAugroupSyncA term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimGlobal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimExtCmd term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimFilter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyNestedParentheses term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyNestedCurlyBraces term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyNestedAngleBrackets term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyNestedSquareBrackets term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyRegexpParens term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMapRhs term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMapRhsExtend term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMenuBang term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMenuPriority term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c1_to_airline_x_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=236 gui=NONE guibg=#262626 guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=236 gui=NONE guibg=#262626 guifg=#303030
	CSAHi vimMenuMap term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyRegexpBrackets term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSet term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimUserCmd term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimCmdSep term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimIsCommand term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMenuRhs term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMapLhs term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimNormCmds term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimGroupList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyLocalVariableOrMethod term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyBlockArgument term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c1_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=255 ctermfg=236 gui=NONE guibg=#ffffff guifg=#303030
	CSAHi airline_c1_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=255 ctermfg=236 gui=bold guibg=#ffffff guifg=#303030
	CSAHi airline_c1_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=255 ctermfg=196 gui=NONE guibg=#ffffff guifg=#ff0000
	CSAHi airline_c2_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=255 ctermfg=236 gui=NONE guibg=#ffffff guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=255 ctermfg=236 gui=bold guibg=#ffffff guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=255 ctermfg=196 gui=NONE guibg=#ffffff guifg=#ff0000
	CSAHi cIf0 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_to_airline_x_bold term=bold cterm=bold ctermbg=255 ctermfg=234 gui=bold guibg=#ffffff guifg=#202020
	CSAHi airline_c2_to_airline_x_red term=NONE cterm=NONE ctermbg=255 ctermfg=196 gui=NONE guibg=#ffffff guifg=#ff0000
	CSAHi airline_c1_to_airline_x_bold term=bold cterm=bold ctermbg=255 ctermfg=234 gui=bold guibg=#ffffff guifg=#202020
	CSAHi CursorLineNr term=bold cterm=bold ctermbg=bg ctermfg=226 gui=bold guibg=bg guifg=#ffff00
	CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=49 gui=bold guibg=bg guifg=#00ff7f
	CSAHi StatusLine term=bold,reverse cterm=NONE ctermbg=224 ctermfg=16 gui=NONE guibg=#c2bfa5 guifg=#000000
	CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=224 ctermfg=241 gui=NONE guibg=#c2bfa5 guifg=#666666
	CSAHi vimFiletype term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=226 gui=bold guibg=bg guifg=#ffd700
	CSAHi Visual term=reverse cterm=NONE ctermbg=143 ctermfg=229 gui=NONE guibg=#6b8e23 guifg=#f0e68c
	CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
	CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=217 gui=NONE guibg=bg guifg=#fa8072
	CSAHi WildMenu term=NONE cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=#ffff00 guifg=#000000
	CSAHi rubyBlockParameterList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyHeredocStart term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimOperParen term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_b_inactive_bold term=bold cterm=bold ctermbg=235 ctermfg=239 gui=bold guibg=#262626 guifg=#4e4e4e
	CSAHi airline_b_inactive_red term=NONE cterm=NONE ctermbg=235 ctermfg=196 gui=NONE guibg=#262626 guifg=#ff0000
	CSAHi airline_c_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=239 gui=NONE guibg=#303030 guifg=#4e4e4e
	CSAHi airline_c_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=239 gui=bold guibg=#303030 guifg=#4e4e4e
	CSAHi airline_c_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_warning_inactive term=NONE cterm=NONE ctermbg=208 ctermfg=16 gui=NONE guibg=#df5f00 guifg=#000000
	CSAHi airline_warning_inactive_bold term=bold cterm=bold ctermbg=208 ctermfg=16 gui=bold guibg=#df5f00 guifg=#000000
	CSAHi airline_warning_inactive_red term=NONE cterm=NONE ctermbg=208 ctermfg=196 gui=NONE guibg=#df5f00 guifg=#ff0000
	CSAHi airline_x_to_airline_y_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_z_to_airline_warning_inactive term=NONE cterm=NONE ctermbg=234 ctermfg=208 gui=NONE guibg=#1c1c1c guifg=#df5f00
	CSAHi vimAuSyntax term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimClusterName term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c1_to_airline_x_red term=NONE cterm=NONE ctermbg=255 ctermfg=196 gui=NONE guibg=#ffffff guifg=#ff0000
	CSAHi Scrollbar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Menu term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi ShowMarksHL term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi diffOnly term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellErrors term=NONE cterm=NONE ctermbg=196 ctermfg=255 gui=NONE guibg=#ff0000 guifg=#ffffff
	CSAHi vimFunction term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Folded term=NONE cterm=NONE ctermbg=16 ctermfg=241 gui=NONE guibg=#000000 guifg=#666666
	CSAHi FoldColumn term=NONE cterm=NONE ctermbg=16 ctermfg=236 gui=NONE guibg=#000000 guifg=#333333
	CSAHi DiffAdd term=bold cterm=NONE ctermbg=19 ctermfg=fg gui=NONE guibg=#00008b guifg=fg
	CSAHi DiffChange term=bold cterm=NONE ctermbg=127 ctermfg=fg gui=NONE guibg=#8b008b guifg=fg
	CSAHi DiffDelete term=bold cterm=bold ctermbg=37 ctermfg=21 gui=bold guibg=#008b8b guifg=#0000ff
	CSAHi DiffText term=reverse cterm=bold ctermbg=196 ctermfg=fg gui=bold guibg=#ff0000 guifg=fg
	CSAHi SignColumn term=NONE cterm=NONE ctermbg=244 ctermfg=51 gui=NONE guibg=#808080 guifg=#00ffff
	CSAHi Conceal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=#ff0000
	CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=#0000ff
	CSAHi rubyAliasDeclaration2 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyAliasDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    elseif has("gui_running") || &t_Co == 256
	CSAHi Normal term=NONE cterm=NONE ctermbg=235 ctermfg=231 gui=NONE guibg=#262626 guifg=#ffffff
	CSAHi rubyMethodDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyClassDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyModuleDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c_to_airline_x_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#303030 guifg=#303030
	CSAHi airline_a_to_airline_b_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=234 gui=NONE guibg=#262626 guifg=#1c1c1c
	CSAHi airline_y_to_airline_z_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=234 gui=NONE guibg=#262626 guifg=#1c1c1c
	CSAHi airline_b_to_airline_c_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_x term=NONE cterm=NONE ctermbg=234 ctermfg=158 gui=NONE guibg=#202020 guifg=#9cffd3
	CSAHi airline_x_bold term=bold cterm=bold ctermbg=234 ctermfg=158 gui=bold guibg=#202020 guifg=#9cffd3
	CSAHi airline_x_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi airline_y term=NONE cterm=NONE ctermbg=238 ctermfg=231 gui=NONE guibg=#444444 guifg=#ffffff
	CSAHi airline_y_bold term=bold cterm=bold ctermbg=238 ctermfg=231 gui=bold guibg=#444444 guifg=#ffffff
	CSAHi airline_y_red term=NONE cterm=NONE ctermbg=238 ctermfg=196 gui=NONE guibg=#444444 guifg=#ff0000
	CSAHi airline_y_inactive_red term=NONE cterm=NONE ctermbg=235 ctermfg=196 gui=NONE guibg=#262626 guifg=#ff0000
	CSAHi vimAutoEventList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynKeyRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_inactive_bold term=bold cterm=bold ctermbg=234 ctermfg=239 gui=bold guibg=#1c1c1c guifg=#4e4e4e
	CSAHi vimSynMatchRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynMtchCchar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynMtchGroup term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=113 gui=NONE guibg=bg guifg=#9acd32
	CSAHi NonText term=bold cterm=bold ctermbg=235 ctermfg=62 gui=bold guibg=#262626 guifg=#4169e1
	CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=51 gui=NONE guibg=bg guifg=#00ffff
	CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=#ff0000 guifg=#ffffff
	CSAHi IncSearch term=reverse cterm=reverse ctermbg=28 ctermfg=16 gui=reverse guibg=#000000 guifg=#008000
	CSAHi Search term=reverse cterm=NONE ctermbg=173 ctermfg=223 gui=NONE guibg=#cd853f guifg=#f5deb3
	CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=29 gui=bold guibg=bg guifg=#2e8b57
	CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=178 gui=bold guibg=bg guifg=#daa520
	CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=244 gui=NONE guibg=bg guifg=#7f7f7f
	CSAHi vimRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
	CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=51 gui=undercurl guibg=bg guifg=fg guisp=#00ffff
	CSAHi Pmenu term=NONE cterm=NONE ctermbg=201 ctermfg=fg gui=NONE guibg=#ff00ff guifg=fg
	CSAHi PmenuSel term=NONE cterm=NONE ctermbg=248 ctermfg=fg gui=NONE guibg=#a9a9a9 guifg=fg
	CSAHi vimAugroup term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=231 ctermfg=fg gui=NONE guibg=#ffffff guifg=fg
	CSAHi TabLine term=underline cterm=underline ctermbg=248 ctermfg=fg gui=underline guibg=#a9a9a9 guifg=fg
	CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
	CSAHi TabLineFill term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
	CSAHi CursorColumn term=reverse cterm=NONE ctermbg=241 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
	CSAHi vimIf term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyMethodBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyDoBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z term=NONE cterm=NONE ctermbg=190 ctermfg=17 gui=NONE guibg=#dfff00 guifg=#00005f
	CSAHi airline_z_bold term=bold cterm=bold ctermbg=190 ctermfg=17 gui=bold guibg=#dfff00 guifg=#00005f
	CSAHi airline_z_red term=NONE cterm=NONE ctermbg=190 ctermfg=196 gui=NONE guibg=#dfff00 guifg=#ff0000
	CSAHi airline_a term=NONE cterm=NONE ctermbg=190 ctermfg=17 gui=NONE guibg=#dfff00 guifg=#00005f
	CSAHi airline_a_bold term=bold cterm=bold ctermbg=190 ctermfg=17 gui=bold guibg=#dfff00 guifg=#00005f
	CSAHi airline_a_red term=NONE cterm=NONE ctermbg=190 ctermfg=196 gui=NONE guibg=#dfff00 guifg=#ff0000
	CSAHi airline_b term=NONE cterm=NONE ctermbg=238 ctermfg=231 gui=NONE guibg=#444444 guifg=#ffffff
	CSAHi airline_b_bold term=bold cterm=bold ctermbg=238 ctermfg=231 gui=bold guibg=#444444 guifg=#ffffff
	CSAHi airline_b_red term=NONE cterm=NONE ctermbg=238 ctermfg=196 gui=NONE guibg=#444444 guifg=#ff0000
	CSAHi airline_c term=NONE cterm=NONE ctermbg=234 ctermfg=158 gui=NONE guibg=#202020 guifg=#9cffd3
	CSAHi vimSynRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynPatMod term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSyncLines term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSyncMatch term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSyncLinebreak term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi CursorLine term=underline cterm=NONE ctermbg=241 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
	CSAHi ColorColumn term=reverse cterm=NONE ctermbg=88 ctermfg=fg gui=NONE guibg=#8b0000 guifg=fg
	CSAHi Cursor term=NONE cterm=NONE ctermbg=222 ctermfg=66 gui=NONE guibg=#f0e68c guifg=#708090
	CSAHi lCursor term=NONE cterm=NONE ctermbg=231 ctermfg=235 gui=NONE guibg=#ffffff guifg=#262626
	CSAHi vimEcho term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Error term=reverse cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=#ff0000 guifg=#ffffff
	CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=241 gui=NONE guibg=bg guifg=#666666
	CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=217 gui=NONE guibg=bg guifg=#ffa0a0
	CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=143 gui=NONE guibg=bg guifg=#bdb76b
	CSAHi rubyCurlyBlockDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyCurlyBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyArrayDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyArrayLiteral term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyBlockExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyCaseExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyConditionalExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyOptionalDoLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c_bold term=bold cterm=bold ctermbg=234 ctermfg=158 gui=bold guibg=#202020 guifg=#9cffd3
	CSAHi airline_c_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi airline_warning term=NONE cterm=NONE ctermbg=166 ctermfg=16 gui=NONE guibg=#df5f00 guifg=#000000
	CSAHi airline_warning_bold term=bold cterm=bold ctermbg=166 ctermfg=16 gui=bold guibg=#df5f00 guifg=#000000
	CSAHi airline_warning_red term=NONE cterm=NONE ctermbg=166 ctermfg=196 gui=NONE guibg=#df5f00 guifg=#ff0000
	CSAHi airline_c1_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_y_to_airline_z_bold term=bold cterm=bold ctermbg=238 ctermfg=190 gui=bold guibg=#444444 guifg=#dfff00
	CSAHi airline_y_to_airline_z_red term=NONE cterm=NONE ctermbg=238 ctermfg=196 gui=NONE guibg=#444444 guifg=#ff0000
	CSAHi airline_c_to_airline_x_bold term=bold cterm=bold ctermbg=234 ctermfg=234 gui=bold guibg=#202020 guifg=#202020
	CSAHi airline_c_to_airline_x_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi vimSyncLinecont term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSyncRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiLink term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiKeyList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimExecute term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=209 gui=NONE guibg=bg guifg=#fa8072
	CSAHi Statement term=bold cterm=bold ctermbg=bg ctermfg=69 gui=bold guibg=bg guifg=#6495ed
	CSAHi vimFuncBlank term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Type term=underline cterm=bold ctermbg=bg ctermfg=69 gui=bold guibg=bg guifg=#6495ed
	CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=111 gui=underline guibg=bg guifg=#80a0ff
	CSAHi vimEscapeBrace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Todo term=NONE cterm=NONE ctermbg=226 ctermfg=202 gui=NONE guibg=#eeee00 guifg=#ff4500
	CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=116 gui=NONE guibg=bg guifg=#87ceeb
	CSAHi rubyRepeatExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyMultilineComment term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi VertSplit term=reverse cterm=NONE ctermbg=145 ctermfg=241 gui=NONE guibg=#c2bfa5 guifg=#666666
	CSAHi airline_a_to_airline_b_bold term=bold cterm=bold ctermbg=238 ctermfg=190 gui=bold guibg=#444444 guifg=#dfff00
	CSAHi airline_a_to_airline_b_red term=NONE cterm=NONE ctermbg=238 ctermfg=196 gui=NONE guibg=#444444 guifg=#ff0000
	CSAHi airline_x_to_airline_y_bold term=bold cterm=bold ctermbg=234 ctermfg=238 gui=bold guibg=#202020 guifg=#444444
	CSAHi airline_x_to_airline_y_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi airline_b_to_airline_c_bold term=bold cterm=bold ctermbg=234 ctermfg=238 gui=bold guibg=#202020 guifg=#444444
	CSAHi airline_b_to_airline_c_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi airline_z_to_airline_warning_bold term=bold cterm=bold ctermbg=190 ctermfg=166 gui=bold guibg=#dfff00 guifg=#df5f00
	CSAHi airline_z_to_airline_warning_red term=NONE cterm=NONE ctermbg=190 ctermfg=196 gui=NONE guibg=#dfff00 guifg=#ff0000
	CSAHi airline_a_to_airline_b_inactive_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=234 gui=NONE guibg=#262626 guifg=#1c1c1c
	CSAHi airline_a_to_airline_b_inactive_inactive_bold term=bold cterm=bold ctermbg=235 ctermfg=234 gui=bold guibg=#262626 guifg=#1c1c1c
	CSAHi vimHiBang term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiCtermColor term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiFontname term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiGuiFontname term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSubstRep term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSubstRange term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=223 gui=NONE guibg=bg guifg=#ffdead
	CSAHi Operator term=NONE cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#ff0000
	CSAHi Include term=NONE cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#ff0000
	CSAHi rubyKeywordAsMethod term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimRubyRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_a_to_airline_b_inactive_inactive_red term=NONE cterm=NONE ctermbg=235 ctermfg=196 gui=NONE guibg=#262626 guifg=#ff0000
	CSAHi airline_b_to_airline_c_inactive_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_b_to_airline_c_inactive_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=235 gui=bold guibg=#303030 guifg=#262626
	CSAHi airline_b_to_airline_c_inactive_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_y_to_airline_z_inactive_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=234 gui=NONE guibg=#262626 guifg=#1c1c1c
	CSAHi airline_y_to_airline_z_inactive_inactive_bold term=bold cterm=bold ctermbg=235 ctermfg=234 gui=bold guibg=#262626 guifg=#1c1c1c
	CSAHi airline_y_to_airline_z_inactive_inactive_red term=NONE cterm=NONE ctermbg=235 ctermfg=196 gui=NONE guibg=#262626 guifg=#ff0000
	CSAHi airline_c_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#303030 guifg=#303030
	CSAHi airline_c_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=236 gui=bold guibg=#303030 guifg=#303030
	CSAHi airline_c_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_b_to_airline_c term=NONE cterm=NONE ctermbg=234 ctermfg=238 gui=NONE guibg=#202020 guifg=#444444
	CSAHi vimHiTermcap term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Define term=NONE cterm=bold ctermbg=bg ctermfg=220 gui=bold guibg=bg guifg=#ffd700
	CSAHi vimPatRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Structure term=NONE cterm=NONE ctermbg=bg ctermfg=28 gui=NONE guibg=bg guifg=#008000
	CSAHi vimCollection term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=244 ctermfg=fg gui=NONE guibg=#808080 guifg=fg
	CSAHi vimAugroupError term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_to_airline_warning_inactive_inactive term=NONE cterm=NONE ctermbg=234 ctermfg=166 gui=NONE guibg=#1c1c1c guifg=#df5f00
	CSAHi airline_z_to_airline_warning_inactive_inactive_bold term=bold cterm=bold ctermbg=234 ctermfg=166 gui=bold guibg=#1c1c1c guifg=#df5f00
	CSAHi airline_z_to_airline_warning_inactive_inactive_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#1c1c1c guifg=#ff0000
	CSAHi airline_x_to_airline_y_inactive_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_x_to_airline_y_inactive_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=235 gui=bold guibg=#303030 guifg=#262626
	CSAHi airline_x_to_airline_y_inactive_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_c1_to_airline_x term=NONE cterm=NONE ctermbg=235 ctermfg=234 gui=NONE guibg=#262626 guifg=#202020
	CSAHi vimCommentTitleLeader term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=241 gui=NONE guibg=bg guifg=#666666
	CSAHi MatchParen term=reverse cterm=NONE ctermbg=30 ctermfg=fg gui=NONE guibg=#008b8b guifg=fg
	CSAHi vimSubstPat term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSubstRep4 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_a_to_airline_b term=NONE cterm=NONE ctermbg=238 ctermfg=190 gui=NONE guibg=#444444 guifg=#dfff00
	CSAHi vimCollClass term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c_to_airline_x term=NONE cterm=NONE ctermbg=234 ctermfg=234 gui=NONE guibg=#202020 guifg=#202020
	CSAHi airline_x_to_airline_y term=NONE cterm=NONE ctermbg=234 ctermfg=238 gui=NONE guibg=#202020 guifg=#444444
	CSAHi airline_y_to_airline_z term=NONE cterm=NONE ctermbg=238 ctermfg=190 gui=NONE guibg=#444444 guifg=#dfff00
	CSAHi airline_z_to_airline_warning term=NONE cterm=NONE ctermbg=190 ctermfg=166 gui=NONE guibg=#dfff00 guifg=#df5f00
	CSAHi airline_x_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=239 gui=NONE guibg=#303030 guifg=#4e4e4e
	CSAHi airline_x_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=239 gui=bold guibg=#303030 guifg=#4e4e4e
	CSAHi airline_x_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi pythonSpaceError term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi pythonSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimPythonRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_to_airline_x term=NONE cterm=NONE ctermbg=235 ctermfg=234 gui=NONE guibg=#262626 guifg=#202020
	CSAHi vimStdPlugin term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c3_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyInterpolation term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi NONE term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyDelimEscape term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimFuncBody term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PreProc term=underline cterm=NONE ctermbg=231 ctermfg=196 gui=NONE guibg=#ffffff guifg=#ff0000
	CSAHi airline_y_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=239 gui=NONE guibg=#262626 guifg=#4e4e4e
	CSAHi airline_y_inactive_bold term=bold cterm=bold ctermbg=235 ctermfg=239 gui=bold guibg=#262626 guifg=#4e4e4e
	CSAHi vimAutoCmdSpace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_inactive term=NONE cterm=NONE ctermbg=234 ctermfg=239 gui=NONE guibg=#1c1c1c guifg=#4e4e4e
	CSAHi vimAutoCmdSfxList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_inactive_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#1c1c1c guifg=#ff0000
	CSAHi airline_a_inactive term=NONE cterm=NONE ctermbg=234 ctermfg=239 gui=NONE guibg=#1c1c1c guifg=#4e4e4e
	CSAHi airline_a_inactive_bold term=bold cterm=bold ctermbg=234 ctermfg=239 gui=bold guibg=#1c1c1c guifg=#4e4e4e
	CSAHi airline_a_inactive_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#1c1c1c guifg=#ff0000
	CSAHi airline_b_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=239 gui=NONE guibg=#262626 guifg=#4e4e4e
	CSAHi vimSetEqual term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimAugroupSyncA term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimGlobal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimExtCmd term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimFilter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyNestedParentheses term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyNestedCurlyBraces term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyNestedAngleBrackets term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyNestedSquareBrackets term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyRegexpParens term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMapRhs term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMapRhsExtend term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMenuBang term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMenuPriority term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c1_to_airline_x_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=236 gui=NONE guibg=#262626 guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=236 gui=NONE guibg=#262626 guifg=#303030
	CSAHi vimMenuMap term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyRegexpBrackets term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSet term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimUserCmd term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimCmdSep term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimIsCommand term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMenuRhs term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMapLhs term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimNormCmds term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimGroupList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyLocalVariableOrMethod term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyBlockArgument term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c1_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=231 ctermfg=236 gui=NONE guibg=#ffffff guifg=#303030
	CSAHi airline_c1_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=231 ctermfg=236 gui=bold guibg=#ffffff guifg=#303030
	CSAHi airline_c1_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=231 ctermfg=196 gui=NONE guibg=#ffffff guifg=#ff0000
	CSAHi airline_c2_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=231 ctermfg=236 gui=NONE guibg=#ffffff guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=231 ctermfg=236 gui=bold guibg=#ffffff guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=231 ctermfg=196 gui=NONE guibg=#ffffff guifg=#ff0000
	CSAHi cIf0 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_to_airline_x_bold term=bold cterm=bold ctermbg=231 ctermfg=234 gui=bold guibg=#ffffff guifg=#202020
	CSAHi airline_c2_to_airline_x_red term=NONE cterm=NONE ctermbg=231 ctermfg=196 gui=NONE guibg=#ffffff guifg=#ff0000
	CSAHi airline_c1_to_airline_x_bold term=bold cterm=bold ctermbg=231 ctermfg=234 gui=bold guibg=#ffffff guifg=#202020
	CSAHi CursorLineNr term=bold cterm=bold ctermbg=bg ctermfg=226 gui=bold guibg=bg guifg=#ffff00
	CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=48 gui=bold guibg=bg guifg=#00ff7f
	CSAHi StatusLine term=bold,reverse cterm=NONE ctermbg=145 ctermfg=16 gui=NONE guibg=#c2bfa5 guifg=#000000
	CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=145 ctermfg=241 gui=NONE guibg=#c2bfa5 guifg=#666666
	CSAHi vimFiletype term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=220 gui=bold guibg=bg guifg=#ffd700
	CSAHi Visual term=reverse cterm=NONE ctermbg=64 ctermfg=222 gui=NONE guibg=#6b8e23 guifg=#f0e68c
	CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
	CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=209 gui=NONE guibg=bg guifg=#fa8072
	CSAHi WildMenu term=NONE cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=#ffff00 guifg=#000000
	CSAHi rubyBlockParameterList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyHeredocStart term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimOperParen term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_b_inactive_bold term=bold cterm=bold ctermbg=235 ctermfg=239 gui=bold guibg=#262626 guifg=#4e4e4e
	CSAHi airline_b_inactive_red term=NONE cterm=NONE ctermbg=235 ctermfg=196 gui=NONE guibg=#262626 guifg=#ff0000
	CSAHi airline_c_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=239 gui=NONE guibg=#303030 guifg=#4e4e4e
	CSAHi airline_c_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=239 gui=bold guibg=#303030 guifg=#4e4e4e
	CSAHi airline_c_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_warning_inactive term=NONE cterm=NONE ctermbg=166 ctermfg=16 gui=NONE guibg=#df5f00 guifg=#000000
	CSAHi airline_warning_inactive_bold term=bold cterm=bold ctermbg=166 ctermfg=16 gui=bold guibg=#df5f00 guifg=#000000
	CSAHi airline_warning_inactive_red term=NONE cterm=NONE ctermbg=166 ctermfg=196 gui=NONE guibg=#df5f00 guifg=#ff0000
	CSAHi airline_x_to_airline_y_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_z_to_airline_warning_inactive term=NONE cterm=NONE ctermbg=234 ctermfg=166 gui=NONE guibg=#1c1c1c guifg=#df5f00
	CSAHi vimAuSyntax term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimClusterName term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c1_to_airline_x_red term=NONE cterm=NONE ctermbg=231 ctermfg=196 gui=NONE guibg=#ffffff guifg=#ff0000
	CSAHi Scrollbar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Menu term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi ShowMarksHL term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi diffOnly term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellErrors term=NONE cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=#ff0000 guifg=#ffffff
	CSAHi vimFunction term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Folded term=NONE cterm=NONE ctermbg=16 ctermfg=241 gui=NONE guibg=#000000 guifg=#666666
	CSAHi FoldColumn term=NONE cterm=NONE ctermbg=16 ctermfg=236 gui=NONE guibg=#000000 guifg=#333333
	CSAHi DiffAdd term=bold cterm=NONE ctermbg=18 ctermfg=fg gui=NONE guibg=#00008b guifg=fg
	CSAHi DiffChange term=bold cterm=NONE ctermbg=90 ctermfg=fg gui=NONE guibg=#8b008b guifg=fg
	CSAHi DiffDelete term=bold cterm=bold ctermbg=30 ctermfg=21 gui=bold guibg=#008b8b guifg=#0000ff
	CSAHi DiffText term=reverse cterm=bold ctermbg=196 ctermfg=fg gui=bold guibg=#ff0000 guifg=fg
	CSAHi SignColumn term=NONE cterm=NONE ctermbg=244 ctermfg=51 gui=NONE guibg=#808080 guifg=#00ffff
	CSAHi Conceal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=#ff0000
	CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=#0000ff
	CSAHi rubyAliasDeclaration2 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyAliasDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    elseif has("gui_running") || &t_Co == 88
	CSAHi Normal term=NONE cterm=NONE ctermbg=80 ctermfg=79 gui=NONE guibg=#262626 guifg=#ffffff
	CSAHi rubyMethodDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyClassDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyModuleDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c_to_airline_x_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#303030 guifg=#303030
	CSAHi airline_a_to_airline_b_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#262626 guifg=#1c1c1c
	CSAHi airline_y_to_airline_z_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#262626 guifg=#1c1c1c
	CSAHi airline_b_to_airline_c_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_x term=NONE cterm=NONE ctermbg=80 ctermfg=46 gui=NONE guibg=#202020 guifg=#9cffd3
	CSAHi airline_x_bold term=bold cterm=bold ctermbg=80 ctermfg=46 gui=bold guibg=#202020 guifg=#9cffd3
	CSAHi airline_x_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi airline_y term=NONE cterm=NONE ctermbg=80 ctermfg=79 gui=NONE guibg=#444444 guifg=#ffffff
	CSAHi airline_y_bold term=bold cterm=bold ctermbg=80 ctermfg=79 gui=bold guibg=#444444 guifg=#ffffff
	CSAHi airline_y_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#444444 guifg=#ff0000
	CSAHi airline_y_inactive_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#262626 guifg=#ff0000
	CSAHi vimAutoEventList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynKeyRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_inactive_bold term=bold cterm=bold ctermbg=80 ctermfg=81 gui=bold guibg=#1c1c1c guifg=#4e4e4e
	CSAHi vimSynMatchRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynMtchCchar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynMtchGroup term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=40 gui=NONE guibg=bg guifg=#9acd32
	CSAHi NonText term=bold cterm=bold ctermbg=80 ctermfg=22 gui=bold guibg=#262626 guifg=#4169e1
	CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=31 gui=NONE guibg=bg guifg=#00ffff
	CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=64 ctermfg=79 gui=NONE guibg=#ff0000 guifg=#ffffff
	CSAHi IncSearch term=reverse cterm=reverse ctermbg=20 ctermfg=16 gui=reverse guibg=#000000 guifg=#008000
	CSAHi Search term=reverse cterm=NONE ctermbg=52 ctermfg=74 gui=NONE guibg=#cd853f guifg=#f5deb3
	CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=21 gui=bold guibg=bg guifg=#2e8b57
	CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=52 gui=bold guibg=bg guifg=#daa520
	CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=82 gui=NONE guibg=bg guifg=#7f7f7f
	CSAHi vimRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=67 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
	CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=31 gui=undercurl guibg=bg guifg=fg guisp=#00ffff
	CSAHi Pmenu term=NONE cterm=NONE ctermbg=67 ctermfg=fg gui=NONE guibg=#ff00ff guifg=fg
	CSAHi PmenuSel term=NONE cterm=NONE ctermbg=84 ctermfg=fg gui=NONE guibg=#a9a9a9 guifg=fg
	CSAHi vimAugroup term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=79 ctermfg=fg gui=NONE guibg=#ffffff guifg=fg
	CSAHi TabLine term=underline cterm=underline ctermbg=84 ctermfg=fg gui=underline guibg=#a9a9a9 guifg=fg
	CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
	CSAHi TabLineFill term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
	CSAHi CursorColumn term=reverse cterm=NONE ctermbg=81 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
	CSAHi vimIf term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyMethodBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyDoBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z term=NONE cterm=NONE ctermbg=60 ctermfg=17 gui=NONE guibg=#dfff00 guifg=#00005f
	CSAHi airline_z_bold term=bold cterm=bold ctermbg=60 ctermfg=17 gui=bold guibg=#dfff00 guifg=#00005f
	CSAHi airline_z_red term=NONE cterm=NONE ctermbg=60 ctermfg=64 gui=NONE guibg=#dfff00 guifg=#ff0000
	CSAHi airline_a term=NONE cterm=NONE ctermbg=60 ctermfg=17 gui=NONE guibg=#dfff00 guifg=#00005f
	CSAHi airline_a_bold term=bold cterm=bold ctermbg=60 ctermfg=17 gui=bold guibg=#dfff00 guifg=#00005f
	CSAHi airline_a_red term=NONE cterm=NONE ctermbg=60 ctermfg=64 gui=NONE guibg=#dfff00 guifg=#ff0000
	CSAHi airline_b term=NONE cterm=NONE ctermbg=80 ctermfg=79 gui=NONE guibg=#444444 guifg=#ffffff
	CSAHi airline_b_bold term=bold cterm=bold ctermbg=80 ctermfg=79 gui=bold guibg=#444444 guifg=#ffffff
	CSAHi airline_b_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#444444 guifg=#ff0000
	CSAHi airline_c term=NONE cterm=NONE ctermbg=80 ctermfg=46 gui=NONE guibg=#202020 guifg=#9cffd3
	CSAHi vimSynRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynPatMod term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSyncLines term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSyncMatch term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSyncLinebreak term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi CursorLine term=underline cterm=NONE ctermbg=81 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
	CSAHi ColorColumn term=reverse cterm=NONE ctermbg=32 ctermfg=fg gui=NONE guibg=#8b0000 guifg=fg
	CSAHi Cursor term=NONE cterm=NONE ctermbg=73 ctermfg=37 gui=NONE guibg=#f0e68c guifg=#708090
	CSAHi lCursor term=NONE cterm=NONE ctermbg=79 ctermfg=80 gui=NONE guibg=#ffffff guifg=#262626
	CSAHi vimEcho term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Error term=reverse cterm=NONE ctermbg=64 ctermfg=79 gui=NONE guibg=#ff0000 guifg=#ffffff
	CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=81 gui=NONE guibg=bg guifg=#666666
	CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=69 gui=NONE guibg=bg guifg=#ffa0a0
	CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=57 gui=NONE guibg=bg guifg=#bdb76b
	CSAHi rubyCurlyBlockDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyCurlyBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyArrayDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyArrayLiteral term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyBlockExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyCaseExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyConditionalExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyOptionalDoLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c_bold term=bold cterm=bold ctermbg=80 ctermfg=46 gui=bold guibg=#202020 guifg=#9cffd3
	CSAHi airline_c_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi airline_warning term=NONE cterm=NONE ctermbg=52 ctermfg=16 gui=NONE guibg=#df5f00 guifg=#000000
	CSAHi airline_warning_bold term=bold cterm=bold ctermbg=52 ctermfg=16 gui=bold guibg=#df5f00 guifg=#000000
	CSAHi airline_warning_red term=NONE cterm=NONE ctermbg=52 ctermfg=64 gui=NONE guibg=#df5f00 guifg=#ff0000
	CSAHi airline_c1_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_y_to_airline_z_bold term=bold cterm=bold ctermbg=80 ctermfg=60 gui=bold guibg=#444444 guifg=#dfff00
	CSAHi airline_y_to_airline_z_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#444444 guifg=#ff0000
	CSAHi airline_c_to_airline_x_bold term=bold cterm=bold ctermbg=80 ctermfg=80 gui=bold guibg=#202020 guifg=#202020
	CSAHi airline_c_to_airline_x_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi vimSyncLinecont term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSyncRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiLink term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiKeyList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimExecute term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=69 gui=NONE guibg=bg guifg=#fa8072
	CSAHi Statement term=bold cterm=bold ctermbg=bg ctermfg=39 gui=bold guibg=bg guifg=#6495ed
	CSAHi vimFuncBlank term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Type term=underline cterm=bold ctermbg=bg ctermfg=39 gui=bold guibg=bg guifg=#6495ed
	CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=39 gui=underline guibg=bg guifg=#80a0ff
	CSAHi vimEscapeBrace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Todo term=NONE cterm=NONE ctermbg=76 ctermfg=64 gui=NONE guibg=#eeee00 guifg=#ff4500
	CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=43 gui=NONE guibg=bg guifg=#87ceeb
	CSAHi rubyRepeatExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyMultilineComment term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi VertSplit term=reverse cterm=NONE ctermbg=57 ctermfg=81 gui=NONE guibg=#c2bfa5 guifg=#666666
	CSAHi airline_a_to_airline_b_bold term=bold cterm=bold ctermbg=80 ctermfg=60 gui=bold guibg=#444444 guifg=#dfff00
	CSAHi airline_a_to_airline_b_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#444444 guifg=#ff0000
	CSAHi airline_x_to_airline_y_bold term=bold cterm=bold ctermbg=80 ctermfg=80 gui=bold guibg=#202020 guifg=#444444
	CSAHi airline_x_to_airline_y_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi airline_b_to_airline_c_bold term=bold cterm=bold ctermbg=80 ctermfg=80 gui=bold guibg=#202020 guifg=#444444
	CSAHi airline_b_to_airline_c_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#202020 guifg=#ff0000
	CSAHi airline_z_to_airline_warning_bold term=bold cterm=bold ctermbg=60 ctermfg=52 gui=bold guibg=#dfff00 guifg=#df5f00
	CSAHi airline_z_to_airline_warning_red term=NONE cterm=NONE ctermbg=60 ctermfg=64 gui=NONE guibg=#dfff00 guifg=#ff0000
	CSAHi airline_a_to_airline_b_inactive_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#262626 guifg=#1c1c1c
	CSAHi airline_a_to_airline_b_inactive_inactive_bold term=bold cterm=bold ctermbg=80 ctermfg=80 gui=bold guibg=#262626 guifg=#1c1c1c
	CSAHi vimHiBang term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiCtermColor term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiFontname term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiGuiFontname term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSubstRep term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSubstRange term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=74 gui=NONE guibg=bg guifg=#ffdead
	CSAHi Operator term=NONE cterm=NONE ctermbg=bg ctermfg=64 gui=NONE guibg=bg guifg=#ff0000
	CSAHi Include term=NONE cterm=NONE ctermbg=bg ctermfg=64 gui=NONE guibg=bg guifg=#ff0000
	CSAHi rubyKeywordAsMethod term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimRubyRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_a_to_airline_b_inactive_inactive_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#262626 guifg=#ff0000
	CSAHi airline_b_to_airline_c_inactive_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_b_to_airline_c_inactive_inactive_bold term=bold cterm=bold ctermbg=80 ctermfg=80 gui=bold guibg=#303030 guifg=#262626
	CSAHi airline_b_to_airline_c_inactive_inactive_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_y_to_airline_z_inactive_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#262626 guifg=#1c1c1c
	CSAHi airline_y_to_airline_z_inactive_inactive_bold term=bold cterm=bold ctermbg=80 ctermfg=80 gui=bold guibg=#262626 guifg=#1c1c1c
	CSAHi airline_y_to_airline_z_inactive_inactive_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#262626 guifg=#ff0000
	CSAHi airline_c_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#303030 guifg=#303030
	CSAHi airline_c_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=80 ctermfg=80 gui=bold guibg=#303030 guifg=#303030
	CSAHi airline_c_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_b_to_airline_c term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#202020 guifg=#444444
	CSAHi vimHiTermcap term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Define term=NONE cterm=bold ctermbg=bg ctermfg=72 gui=bold guibg=bg guifg=#ffd700
	CSAHi vimPatRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Structure term=NONE cterm=NONE ctermbg=bg ctermfg=20 gui=NONE guibg=bg guifg=#008000
	CSAHi vimCollection term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=83 ctermfg=fg gui=NONE guibg=#808080 guifg=fg
	CSAHi vimAugroupError term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_to_airline_warning_inactive_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=52 gui=NONE guibg=#1c1c1c guifg=#df5f00
	CSAHi airline_z_to_airline_warning_inactive_inactive_bold term=bold cterm=bold ctermbg=80 ctermfg=52 gui=bold guibg=#1c1c1c guifg=#df5f00
	CSAHi airline_z_to_airline_warning_inactive_inactive_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#1c1c1c guifg=#ff0000
	CSAHi airline_x_to_airline_y_inactive_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_x_to_airline_y_inactive_inactive_bold term=bold cterm=bold ctermbg=80 ctermfg=80 gui=bold guibg=#303030 guifg=#262626
	CSAHi airline_x_to_airline_y_inactive_inactive_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_c1_to_airline_x term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#262626 guifg=#202020
	CSAHi vimCommentTitleLeader term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=81 gui=NONE guibg=bg guifg=#666666
	CSAHi MatchParen term=reverse cterm=NONE ctermbg=21 ctermfg=fg gui=NONE guibg=#008b8b guifg=fg
	CSAHi vimSubstPat term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSubstRep4 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_a_to_airline_b term=NONE cterm=NONE ctermbg=80 ctermfg=60 gui=NONE guibg=#444444 guifg=#dfff00
	CSAHi vimCollClass term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c_to_airline_x term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#202020 guifg=#202020
	CSAHi airline_x_to_airline_y term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#202020 guifg=#444444
	CSAHi airline_y_to_airline_z term=NONE cterm=NONE ctermbg=80 ctermfg=60 gui=NONE guibg=#444444 guifg=#dfff00
	CSAHi airline_z_to_airline_warning term=NONE cterm=NONE ctermbg=60 ctermfg=52 gui=NONE guibg=#dfff00 guifg=#df5f00
	CSAHi airline_x_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=81 gui=NONE guibg=#303030 guifg=#4e4e4e
	CSAHi airline_x_inactive_bold term=bold cterm=bold ctermbg=80 ctermfg=81 gui=bold guibg=#303030 guifg=#4e4e4e
	CSAHi airline_x_inactive_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi pythonSpaceError term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi pythonSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimPythonRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_to_airline_x term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#262626 guifg=#202020
	CSAHi vimStdPlugin term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c3_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyInterpolation term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi NONE term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyDelimEscape term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimFuncBody term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PreProc term=underline cterm=NONE ctermbg=79 ctermfg=64 gui=NONE guibg=#ffffff guifg=#ff0000
	CSAHi airline_y_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=81 gui=NONE guibg=#262626 guifg=#4e4e4e
	CSAHi airline_y_inactive_bold term=bold cterm=bold ctermbg=80 ctermfg=81 gui=bold guibg=#262626 guifg=#4e4e4e
	CSAHi vimAutoCmdSpace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=81 gui=NONE guibg=#1c1c1c guifg=#4e4e4e
	CSAHi vimAutoCmdSfxList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_inactive_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#1c1c1c guifg=#ff0000
	CSAHi airline_a_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=81 gui=NONE guibg=#1c1c1c guifg=#4e4e4e
	CSAHi airline_a_inactive_bold term=bold cterm=bold ctermbg=80 ctermfg=81 gui=bold guibg=#1c1c1c guifg=#4e4e4e
	CSAHi airline_a_inactive_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#1c1c1c guifg=#ff0000
	CSAHi airline_b_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=81 gui=NONE guibg=#262626 guifg=#4e4e4e
	CSAHi vimSetEqual term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimAugroupSyncA term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimGlobal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimExtCmd term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimFilter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyNestedParentheses term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyNestedCurlyBraces term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyNestedAngleBrackets term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyNestedSquareBrackets term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyRegexpParens term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMapRhs term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMapRhsExtend term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMenuBang term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMenuPriority term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c1_to_airline_x_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#262626 guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#262626 guifg=#303030
	CSAHi vimMenuMap term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyRegexpBrackets term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSet term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimUserCmd term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimCmdSep term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimIsCommand term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMenuRhs term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimMapLhs term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimNormCmds term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimGroupList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyLocalVariableOrMethod term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyBlockArgument term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c1_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=79 ctermfg=80 gui=NONE guibg=#ffffff guifg=#303030
	CSAHi airline_c1_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=79 ctermfg=80 gui=bold guibg=#ffffff guifg=#303030
	CSAHi airline_c1_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=79 ctermfg=64 gui=NONE guibg=#ffffff guifg=#ff0000
	CSAHi airline_c2_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=79 ctermfg=80 gui=NONE guibg=#ffffff guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=79 ctermfg=80 gui=bold guibg=#ffffff guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=79 ctermfg=64 gui=NONE guibg=#ffffff guifg=#ff0000
	CSAHi cIf0 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_to_airline_x_bold term=bold cterm=bold ctermbg=79 ctermfg=80 gui=bold guibg=#ffffff guifg=#202020
	CSAHi airline_c2_to_airline_x_red term=NONE cterm=NONE ctermbg=79 ctermfg=64 gui=NONE guibg=#ffffff guifg=#ff0000
	CSAHi airline_c1_to_airline_x_bold term=bold cterm=bold ctermbg=79 ctermfg=80 gui=bold guibg=#ffffff guifg=#202020
	CSAHi CursorLineNr term=bold cterm=bold ctermbg=bg ctermfg=76 gui=bold guibg=bg guifg=#ffff00
	CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=29 gui=bold guibg=bg guifg=#00ff7f
	CSAHi StatusLine term=bold,reverse cterm=NONE ctermbg=57 ctermfg=16 gui=NONE guibg=#c2bfa5 guifg=#000000
	CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=57 ctermfg=81 gui=NONE guibg=#c2bfa5 guifg=#666666
	CSAHi vimFiletype term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=72 gui=bold guibg=bg guifg=#ffd700
	CSAHi Visual term=reverse cterm=NONE ctermbg=36 ctermfg=73 gui=NONE guibg=#6b8e23 guifg=#f0e68c
	CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
	CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=69 gui=NONE guibg=bg guifg=#fa8072
	CSAHi WildMenu term=NONE cterm=NONE ctermbg=76 ctermfg=16 gui=NONE guibg=#ffff00 guifg=#000000
	CSAHi rubyBlockParameterList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyHeredocStart term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimOperParen term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_b_inactive_bold term=bold cterm=bold ctermbg=80 ctermfg=81 gui=bold guibg=#262626 guifg=#4e4e4e
	CSAHi airline_b_inactive_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#262626 guifg=#ff0000
	CSAHi airline_c_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=81 gui=NONE guibg=#303030 guifg=#4e4e4e
	CSAHi airline_c_inactive_bold term=bold cterm=bold ctermbg=80 ctermfg=81 gui=bold guibg=#303030 guifg=#4e4e4e
	CSAHi airline_c_inactive_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_warning_inactive term=NONE cterm=NONE ctermbg=52 ctermfg=16 gui=NONE guibg=#df5f00 guifg=#000000
	CSAHi airline_warning_inactive_bold term=bold cterm=bold ctermbg=52 ctermfg=16 gui=bold guibg=#df5f00 guifg=#000000
	CSAHi airline_warning_inactive_red term=NONE cterm=NONE ctermbg=52 ctermfg=64 gui=NONE guibg=#df5f00 guifg=#ff0000
	CSAHi airline_x_to_airline_y_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_z_to_airline_warning_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=52 gui=NONE guibg=#1c1c1c guifg=#df5f00
	CSAHi vimAuSyntax term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimClusterName term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c1_to_airline_x_red term=NONE cterm=NONE ctermbg=79 ctermfg=64 gui=NONE guibg=#ffffff guifg=#ff0000
	CSAHi Scrollbar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Menu term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi ShowMarksHL term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi diffOnly term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellErrors term=NONE cterm=NONE ctermbg=64 ctermfg=79 gui=NONE guibg=#ff0000 guifg=#ffffff
	CSAHi vimFunction term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Folded term=NONE cterm=NONE ctermbg=16 ctermfg=81 gui=NONE guibg=#000000 guifg=#666666
	CSAHi FoldColumn term=NONE cterm=NONE ctermbg=16 ctermfg=80 gui=NONE guibg=#000000 guifg=#333333
	CSAHi DiffAdd term=bold cterm=NONE ctermbg=17 ctermfg=fg gui=NONE guibg=#00008b guifg=fg
	CSAHi DiffChange term=bold cterm=NONE ctermbg=33 ctermfg=fg gui=NONE guibg=#8b008b guifg=fg
	CSAHi DiffDelete term=bold cterm=bold ctermbg=21 ctermfg=19 gui=bold guibg=#008b8b guifg=#0000ff
	CSAHi DiffText term=reverse cterm=bold ctermbg=64 ctermfg=fg gui=bold guibg=#ff0000 guifg=fg
	CSAHi SignColumn term=NONE cterm=NONE ctermbg=83 ctermfg=31 gui=NONE guibg=#808080 guifg=#00ffff
	CSAHi Conceal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=64 gui=undercurl guibg=bg guifg=fg guisp=#ff0000
	CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=19 gui=undercurl guibg=bg guifg=fg guisp=#0000ff
	CSAHi rubyAliasDeclaration2 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyAliasDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    endif

    if 1
	delcommand CSAHi
    endif

endif