" Runs CSApprox version in console

if has("gui_running")

    " local syntax file - set colors on a per-machine basis:
    " vim: tw=0 ts=4 sw=4
    " Vim color file
    " Maintainer:	Ron Aaron <ron@ronware.org>
    " Last Change:	2003 May 02

    set background=light
    hi clear
    if exists("syntax_on")
      syntax reset
    endif
    let g:colors_name = "zellner"

    hi Comment term=bold ctermfg=Red guifg=Red
    hi Normal guifg=black guibg=white
    hi Constant term=underline ctermfg=Magenta guifg=Magenta
    hi Special term=bold ctermfg=Magenta guifg=Magenta
    hi Identifier term=underline ctermfg=Blue guifg=Blue
    hi Statement term=bold ctermfg=DarkRed gui=NONE guifg=Brown
    hi PreProc term=underline ctermfg=Magenta guifg=Purple
    hi Type term=underline ctermfg=Blue gui=NONE guifg=Blue
    hi Visual term=reverse ctermfg=Yellow ctermbg=Red gui=NONE guifg=Black guibg=Yellow
    hi Search term=reverse ctermfg=Black ctermbg=Cyan gui=NONE guifg=Black guibg=Cyan
    hi Tag term=bold ctermfg=DarkGreen guifg=DarkGreen
    hi Error term=reverse ctermfg=15 ctermbg=9 guibg=Red guifg=White
    hi Todo term=standout ctermbg=Yellow ctermfg=Black guifg=Blue guibg=Yellow
    hi  StatusLine term=bold,reverse cterm=NONE ctermfg=Yellow ctermbg=DarkGray gui=NONE guifg=Yellow guibg=DarkGray
    hi! link MoreMsg Comment
    hi! link ErrorMsg Visual
    hi! link WarningMsg ErrorMsg
    hi! link Question Comment
    hi link String	Constant
    hi link Character	Constant
    hi link Number	Constant
    hi link Boolean	Constant
    hi link Float		Number
    hi link Function	Identifier
    hi link Conditional	Statement
    hi link Repeat	Statement
    hi link Label		Statement
    hi link Operator	Statement
    hi link Keyword	Statement
    hi link Exception	Statement
    hi link Include	PreProc
    hi link Define	PreProc
    hi link Macro		PreProc
    hi link PreCondit	PreProc
    hi link StorageClass	Type
    hi link Structure	Type
    hi link Typedef	Type
    hi link SpecialChar	Special
    hi link Delimiter	Special
    hi link SpecialComment Special
    hi link Debug		Special

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
	CSAHi Normal term=NONE cterm=NONE ctermbg=231 ctermfg=16 gui=NONE guibg=#ffffff guifg=#000000
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
	CSAHi vimAutoCmdSpace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_inactive term=NONE cterm=NONE ctermbg=234 ctermfg=239 gui=NONE guibg=#1c1c1c guifg=#4e4e4e
	CSAHi vimSynKeyRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimAutoCmdSfxList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynMatchRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynMtchCchar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynMtchGroup term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#0000ff
	CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=21 gui=bold guibg=bg guifg=#0000ff
	CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#0000ff
	CSAHi IncSearch term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
	CSAHi Search term=reverse cterm=NONE ctermbg=51 ctermfg=16 gui=NONE guibg=#00ffff guifg=#000000
	CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
	CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=131 gui=NONE guibg=bg guifg=#a52a2a
	CSAHi vimRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
	CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=37 gui=undercurl guibg=bg guifg=fg guisp=#008b8b
	CSAHi Pmenu term=NONE cterm=NONE ctermbg=225 ctermfg=fg gui=NONE guibg=#ffbbff guifg=fg
	CSAHi PmenuSel term=NONE cterm=NONE ctermbg=244 ctermfg=fg gui=NONE guibg=#808080 guifg=fg
	CSAHi vimAugroup term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=16 ctermfg=fg gui=NONE guibg=#000000 guifg=fg
	CSAHi TabLine term=underline cterm=underline ctermbg=252 ctermfg=fg gui=underline guibg=#d3d3d3 guifg=fg
	CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
	CSAHi TabLineFill term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
	CSAHi CursorColumn term=reverse cterm=NONE ctermbg=254 ctermfg=fg gui=NONE guibg=#e5e5e5 guifg=fg
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
	CSAHi CursorLine term=underline cterm=NONE ctermbg=254 ctermfg=fg gui=NONE guibg=#e5e5e5 guifg=fg
	CSAHi ColorColumn term=reverse cterm=NONE ctermbg=224 ctermfg=fg gui=NONE guibg=#ffbbbb guifg=fg
	CSAHi Cursor term=NONE cterm=NONE ctermbg=16 ctermfg=231 gui=NONE guibg=#000000 guifg=#ffffff
	CSAHi lCursor term=NONE cterm=NONE ctermbg=16 ctermfg=231 gui=NONE guibg=#000000 guifg=#ffffff
	CSAHi vimEcho term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Error term=reverse cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=#ff0000 guifg=#ffffff
	CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#ff0000
	CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=201 gui=NONE guibg=bg guifg=#ff00ff
	CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=201 gui=NONE guibg=bg guifg=#ff00ff
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
	CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#0000ff
	CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=131 gui=NONE guibg=bg guifg=#a52a2a
	CSAHi vimFuncBlank term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#0000ff
	CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=104 gui=underline guibg=bg guifg=#6a5acd
	CSAHi vimEscapeBrace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Todo term=NONE cterm=NONE ctermbg=226 ctermfg=21 gui=NONE guibg=#ffff00 guifg=#0000ff
	CSAHi rubyRepeatExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyMultilineComment term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimFiletype term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
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
	CSAHi vimCollClass term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiTermcap term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimPatRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimCollection term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=244 ctermfg=fg gui=NONE guibg=#808080 guifg=fg
	CSAHi vimAugroupError term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_to_airline_warning_inactive_inactive term=NONE cterm=NONE ctermbg=234 ctermfg=172 gui=NONE guibg=#1c1c1c guifg=#df5f00
	CSAHi airline_z_to_airline_warning_inactive_inactive_bold term=bold cterm=bold ctermbg=234 ctermfg=172 gui=bold guibg=#1c1c1c guifg=#df5f00
	CSAHi airline_z_to_airline_warning_inactive_inactive_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#1c1c1c guifg=#ff0000
	CSAHi airline_x_to_airline_y_inactive_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_x_to_airline_y_inactive_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=235 gui=bold guibg=#303030 guifg=#262626
	CSAHi airline_x_to_airline_y_inactive_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_c1_to_airline_x term=NONE cterm=NONE ctermbg=231 ctermfg=234 gui=NONE guibg=#ffffff guifg=#202020
	CSAHi vimCommentTitleLeader term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=231 gui=NONE guibg=bg guifg=#ffffff
	CSAHi MatchParen term=reverse cterm=NONE ctermbg=51 ctermfg=fg gui=NONE guibg=#00ffff guifg=fg
	CSAHi vimSubstPat term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSubstRep4 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_a_to_airline_b term=NONE cterm=NONE ctermbg=238 ctermfg=190 gui=NONE guibg=#444444 guifg=#dfff00
	CSAHi airline_b_to_airline_c term=NONE cterm=NONE ctermbg=234 ctermfg=238 gui=NONE guibg=#202020 guifg=#444444
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
	CSAHi airline_c2_to_airline_x term=NONE cterm=NONE ctermbg=231 ctermfg=234 gui=NONE guibg=#ffffff guifg=#202020
	CSAHi vimStdPlugin term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c3_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyInterpolation term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi NONE term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyDelimEscape term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=16 ctermfg=196 gui=NONE guibg=#000000 guifg=#ff0000
	CSAHi vimFuncBody term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=127 gui=NONE guibg=bg guifg=#800080
	CSAHi airline_y_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=239 gui=NONE guibg=#262626 guifg=#4e4e4e
	CSAHi airline_y_inactive_bold term=bold cterm=bold ctermbg=235 ctermfg=239 gui=bold guibg=#262626 guifg=#4e4e4e
	CSAHi airline_y_inactive_red term=NONE cterm=NONE ctermbg=235 ctermfg=196 gui=NONE guibg=#262626 guifg=#ff0000
	CSAHi vimAutoEventList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_inactive_bold term=bold cterm=bold ctermbg=234 ctermfg=239 gui=bold guibg=#1c1c1c guifg=#4e4e4e
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
	CSAHi airline_c1_to_airline_x_inactive term=NONE cterm=NONE ctermbg=231 ctermfg=236 gui=NONE guibg=#ffffff guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive term=NONE cterm=NONE ctermbg=231 ctermfg=236 gui=NONE guibg=#ffffff guifg=#303030
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
	CSAHi airline_c1_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=16 ctermfg=236 gui=NONE guibg=#000000 guifg=#303030
	CSAHi airline_c1_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=16 ctermfg=236 gui=bold guibg=#000000 guifg=#303030
	CSAHi airline_c1_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=16 ctermfg=196 gui=NONE guibg=#000000 guifg=#ff0000
	CSAHi airline_c2_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=16 ctermfg=236 gui=NONE guibg=#000000 guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=16 ctermfg=236 gui=bold guibg=#000000 guifg=#303030
	CSAHi Tag term=bold cterm=NONE ctermbg=bg ctermfg=28 gui=NONE guibg=bg guifg=#006400
	CSAHi cIf0 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_to_airline_x_bold term=bold cterm=bold ctermbg=16 ctermfg=234 gui=bold guibg=#000000 guifg=#202020
	CSAHi airline_c2_to_airline_x_red term=NONE cterm=NONE ctermbg=16 ctermfg=196 gui=NONE guibg=#000000 guifg=#ff0000
	CSAHi airline_c1_to_airline_x_bold term=bold cterm=bold ctermbg=16 ctermfg=234 gui=bold guibg=#000000 guifg=#202020
	CSAHi CursorLineNr term=bold cterm=bold ctermbg=bg ctermfg=131 gui=bold guibg=bg guifg=#a52a2a
	CSAHi StatusLine term=bold,reverse cterm=NONE ctermbg=248 ctermfg=226 gui=NONE guibg=#a9a9a9 guifg=#ffff00
	CSAHi StatusLineNC term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
	CSAHi VertSplit term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
	CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=201 gui=bold guibg=bg guifg=#ff00ff
	CSAHi Visual term=reverse cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=#ffff00 guifg=#000000
	CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
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
	CSAHi airline_c1_to_airline_x_red term=NONE cterm=NONE ctermbg=16 ctermfg=196 gui=NONE guibg=#000000 guifg=#ff0000
	CSAHi Scrollbar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Menu term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi ShowMarksHL term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi diffOnly term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellErrors term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimFunction term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Folded term=NONE cterm=NONE ctermbg=252 ctermfg=19 gui=NONE guibg=#d3d3d3 guifg=#00008b
	CSAHi FoldColumn term=NONE cterm=NONE ctermbg=244 ctermfg=19 gui=NONE guibg=#808080 guifg=#00008b
	CSAHi DiffAdd term=bold cterm=NONE ctermbg=153 ctermfg=fg gui=NONE guibg=#add8e6 guifg=fg
	CSAHi DiffChange term=bold cterm=NONE ctermbg=225 ctermfg=fg gui=NONE guibg=#ffbbff guifg=fg
	CSAHi DiffDelete term=bold cterm=bold ctermbg=195 ctermfg=21 gui=bold guibg=#e0ffff guifg=#0000ff
	CSAHi DiffText term=reverse cterm=bold ctermbg=196 ctermfg=fg gui=bold guibg=#ff0000 guifg=fg
	CSAHi SignColumn term=NONE cterm=NONE ctermbg=244 ctermfg=19 gui=NONE guibg=#808080 guifg=#00008b
	CSAHi Conceal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=#ff0000
	CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=#0000ff
	CSAHi rubyAliasDeclaration2 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyAliasDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_eterm") && g:CSApprox_eterm) || &term =~? "^eterm"
	CSAHi Normal term=NONE cterm=NONE ctermbg=255 ctermfg=16 gui=NONE guibg=#ffffff guifg=#000000
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
	CSAHi vimAutoCmdSpace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_inactive term=NONE cterm=NONE ctermbg=234 ctermfg=239 gui=NONE guibg=#1c1c1c guifg=#4e4e4e
	CSAHi vimSynKeyRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimAutoCmdSfxList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynMatchRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynMtchCchar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynMtchGroup term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#0000ff
	CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=21 gui=bold guibg=bg guifg=#0000ff
	CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#0000ff
	CSAHi IncSearch term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
	CSAHi Search term=reverse cterm=NONE ctermbg=51 ctermfg=16 gui=NONE guibg=#00ffff guifg=#000000
	CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
	CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=167 gui=NONE guibg=bg guifg=#a52a2a
	CSAHi vimRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
	CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=37 gui=undercurl guibg=bg guifg=fg guisp=#008b8b
	CSAHi Pmenu term=NONE cterm=NONE ctermbg=225 ctermfg=fg gui=NONE guibg=#ffbbff guifg=fg
	CSAHi PmenuSel term=NONE cterm=NONE ctermbg=244 ctermfg=fg gui=NONE guibg=#808080 guifg=fg
	CSAHi vimAugroup term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=16 ctermfg=fg gui=NONE guibg=#000000 guifg=fg
	CSAHi TabLine term=underline cterm=underline ctermbg=231 ctermfg=fg gui=underline guibg=#d3d3d3 guifg=fg
	CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
	CSAHi TabLineFill term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
	CSAHi CursorColumn term=reverse cterm=NONE ctermbg=254 ctermfg=fg gui=NONE guibg=#e5e5e5 guifg=fg
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
	CSAHi CursorLine term=underline cterm=NONE ctermbg=254 ctermfg=fg gui=NONE guibg=#e5e5e5 guifg=fg
	CSAHi ColorColumn term=reverse cterm=NONE ctermbg=224 ctermfg=fg gui=NONE guibg=#ffbbbb guifg=fg
	CSAHi Cursor term=NONE cterm=NONE ctermbg=16 ctermfg=255 gui=NONE guibg=#000000 guifg=#ffffff
	CSAHi lCursor term=NONE cterm=NONE ctermbg=16 ctermfg=255 gui=NONE guibg=#000000 guifg=#ffffff
	CSAHi vimEcho term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Error term=reverse cterm=NONE ctermbg=196 ctermfg=255 gui=NONE guibg=#ff0000 guifg=#ffffff
	CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#ff0000
	CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=201 gui=NONE guibg=bg guifg=#ff00ff
	CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=201 gui=NONE guibg=bg guifg=#ff00ff
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
	CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#0000ff
	CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=167 gui=NONE guibg=bg guifg=#a52a2a
	CSAHi vimFuncBlank term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#0000ff
	CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=105 gui=underline guibg=bg guifg=#6a5acd
	CSAHi vimEscapeBrace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Todo term=NONE cterm=NONE ctermbg=226 ctermfg=21 gui=NONE guibg=#ffff00 guifg=#0000ff
	CSAHi rubyRepeatExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyMultilineComment term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimFiletype term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
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
	CSAHi vimCollClass term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiTermcap term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimPatRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimCollection term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=244 ctermfg=fg gui=NONE guibg=#808080 guifg=fg
	CSAHi vimAugroupError term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_to_airline_warning_inactive_inactive term=NONE cterm=NONE ctermbg=234 ctermfg=208 gui=NONE guibg=#1c1c1c guifg=#df5f00
	CSAHi airline_z_to_airline_warning_inactive_inactive_bold term=bold cterm=bold ctermbg=234 ctermfg=208 gui=bold guibg=#1c1c1c guifg=#df5f00
	CSAHi airline_z_to_airline_warning_inactive_inactive_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#1c1c1c guifg=#ff0000
	CSAHi airline_x_to_airline_y_inactive_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_x_to_airline_y_inactive_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=235 gui=bold guibg=#303030 guifg=#262626
	CSAHi airline_x_to_airline_y_inactive_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_c1_to_airline_x term=NONE cterm=NONE ctermbg=255 ctermfg=234 gui=NONE guibg=#ffffff guifg=#202020
	CSAHi vimCommentTitleLeader term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=255 gui=NONE guibg=bg guifg=#ffffff
	CSAHi MatchParen term=reverse cterm=NONE ctermbg=51 ctermfg=fg gui=NONE guibg=#00ffff guifg=fg
	CSAHi vimSubstPat term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSubstRep4 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_a_to_airline_b term=NONE cterm=NONE ctermbg=238 ctermfg=226 gui=NONE guibg=#444444 guifg=#dfff00
	CSAHi airline_b_to_airline_c term=NONE cterm=NONE ctermbg=234 ctermfg=238 gui=NONE guibg=#202020 guifg=#444444
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
	CSAHi airline_c2_to_airline_x term=NONE cterm=NONE ctermbg=255 ctermfg=234 gui=NONE guibg=#ffffff guifg=#202020
	CSAHi vimStdPlugin term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c3_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyInterpolation term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi NONE term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyDelimEscape term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=16 ctermfg=196 gui=NONE guibg=#000000 guifg=#ff0000
	CSAHi vimFuncBody term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=127 gui=NONE guibg=bg guifg=#800080
	CSAHi airline_y_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=239 gui=NONE guibg=#262626 guifg=#4e4e4e
	CSAHi airline_y_inactive_bold term=bold cterm=bold ctermbg=235 ctermfg=239 gui=bold guibg=#262626 guifg=#4e4e4e
	CSAHi airline_y_inactive_red term=NONE cterm=NONE ctermbg=235 ctermfg=196 gui=NONE guibg=#262626 guifg=#ff0000
	CSAHi vimAutoEventList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_inactive_bold term=bold cterm=bold ctermbg=234 ctermfg=239 gui=bold guibg=#1c1c1c guifg=#4e4e4e
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
	CSAHi airline_c1_to_airline_x_inactive term=NONE cterm=NONE ctermbg=255 ctermfg=236 gui=NONE guibg=#ffffff guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive term=NONE cterm=NONE ctermbg=255 ctermfg=236 gui=NONE guibg=#ffffff guifg=#303030
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
	CSAHi airline_c1_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=16 ctermfg=236 gui=NONE guibg=#000000 guifg=#303030
	CSAHi airline_c1_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=16 ctermfg=236 gui=bold guibg=#000000 guifg=#303030
	CSAHi airline_c1_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=16 ctermfg=196 gui=NONE guibg=#000000 guifg=#ff0000
	CSAHi airline_c2_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=16 ctermfg=236 gui=NONE guibg=#000000 guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=16 ctermfg=236 gui=bold guibg=#000000 guifg=#303030
	CSAHi Tag term=bold cterm=NONE ctermbg=bg ctermfg=28 gui=NONE guibg=bg guifg=#006400
	CSAHi cIf0 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_to_airline_x_bold term=bold cterm=bold ctermbg=16 ctermfg=234 gui=bold guibg=#000000 guifg=#202020
	CSAHi airline_c2_to_airline_x_red term=NONE cterm=NONE ctermbg=16 ctermfg=196 gui=NONE guibg=#000000 guifg=#ff0000
	CSAHi airline_c1_to_airline_x_bold term=bold cterm=bold ctermbg=16 ctermfg=234 gui=bold guibg=#000000 guifg=#202020
	CSAHi CursorLineNr term=bold cterm=bold ctermbg=bg ctermfg=167 gui=bold guibg=bg guifg=#a52a2a
	CSAHi StatusLine term=bold,reverse cterm=NONE ctermbg=248 ctermfg=226 gui=NONE guibg=#a9a9a9 guifg=#ffff00
	CSAHi StatusLineNC term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
	CSAHi VertSplit term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
	CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=201 gui=bold guibg=bg guifg=#ff00ff
	CSAHi Visual term=reverse cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=#ffff00 guifg=#000000
	CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
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
	CSAHi airline_c1_to_airline_x_red term=NONE cterm=NONE ctermbg=16 ctermfg=196 gui=NONE guibg=#000000 guifg=#ff0000
	CSAHi Scrollbar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Menu term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi ShowMarksHL term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi diffOnly term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellErrors term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimFunction term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Folded term=NONE cterm=NONE ctermbg=231 ctermfg=19 gui=NONE guibg=#d3d3d3 guifg=#00008b
	CSAHi FoldColumn term=NONE cterm=NONE ctermbg=244 ctermfg=19 gui=NONE guibg=#808080 guifg=#00008b
	CSAHi DiffAdd term=bold cterm=NONE ctermbg=195 ctermfg=fg gui=NONE guibg=#add8e6 guifg=fg
	CSAHi DiffChange term=bold cterm=NONE ctermbg=225 ctermfg=fg gui=NONE guibg=#ffbbff guifg=fg
	CSAHi DiffDelete term=bold cterm=bold ctermbg=231 ctermfg=21 gui=bold guibg=#e0ffff guifg=#0000ff
	CSAHi DiffText term=reverse cterm=bold ctermbg=196 ctermfg=fg gui=bold guibg=#ff0000 guifg=fg
	CSAHi SignColumn term=NONE cterm=NONE ctermbg=244 ctermfg=19 gui=NONE guibg=#808080 guifg=#00008b
	CSAHi Conceal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=#ff0000
	CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=#0000ff
	CSAHi rubyAliasDeclaration2 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyAliasDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    elseif has("gui_running") || &t_Co == 256
	CSAHi Normal term=NONE cterm=NONE ctermbg=231 ctermfg=16 gui=NONE guibg=#ffffff guifg=#000000
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
	CSAHi vimAutoCmdSpace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_inactive term=NONE cterm=NONE ctermbg=234 ctermfg=239 gui=NONE guibg=#1c1c1c guifg=#4e4e4e
	CSAHi vimSynKeyRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimAutoCmdSfxList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynMatchRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynMtchCchar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynMtchGroup term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#0000ff
	CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=21 gui=bold guibg=bg guifg=#0000ff
	CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#0000ff
	CSAHi IncSearch term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
	CSAHi Search term=reverse cterm=NONE ctermbg=51 ctermfg=16 gui=NONE guibg=#00ffff guifg=#000000
	CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
	CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=124 gui=NONE guibg=bg guifg=#a52a2a
	CSAHi vimRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
	CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=30 gui=undercurl guibg=bg guifg=fg guisp=#008b8b
	CSAHi Pmenu term=NONE cterm=NONE ctermbg=219 ctermfg=fg gui=NONE guibg=#ffbbff guifg=fg
	CSAHi PmenuSel term=NONE cterm=NONE ctermbg=244 ctermfg=fg gui=NONE guibg=#808080 guifg=fg
	CSAHi vimAugroup term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=16 ctermfg=fg gui=NONE guibg=#000000 guifg=fg
	CSAHi TabLine term=underline cterm=underline ctermbg=252 ctermfg=fg gui=underline guibg=#d3d3d3 guifg=fg
	CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
	CSAHi TabLineFill term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
	CSAHi CursorColumn term=reverse cterm=NONE ctermbg=254 ctermfg=fg gui=NONE guibg=#e5e5e5 guifg=fg
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
	CSAHi CursorLine term=underline cterm=NONE ctermbg=254 ctermfg=fg gui=NONE guibg=#e5e5e5 guifg=fg
	CSAHi ColorColumn term=reverse cterm=NONE ctermbg=217 ctermfg=fg gui=NONE guibg=#ffbbbb guifg=fg
	CSAHi Cursor term=NONE cterm=NONE ctermbg=16 ctermfg=231 gui=NONE guibg=#000000 guifg=#ffffff
	CSAHi lCursor term=NONE cterm=NONE ctermbg=16 ctermfg=231 gui=NONE guibg=#000000 guifg=#ffffff
	CSAHi vimEcho term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Error term=reverse cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=#ff0000 guifg=#ffffff
	CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#ff0000
	CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=201 gui=NONE guibg=bg guifg=#ff00ff
	CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=201 gui=NONE guibg=bg guifg=#ff00ff
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
	CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#0000ff
	CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=124 gui=NONE guibg=bg guifg=#a52a2a
	CSAHi vimFuncBlank term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#0000ff
	CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=62 gui=underline guibg=bg guifg=#6a5acd
	CSAHi vimEscapeBrace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Todo term=NONE cterm=NONE ctermbg=226 ctermfg=21 gui=NONE guibg=#ffff00 guifg=#0000ff
	CSAHi rubyRepeatExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyMultilineComment term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimFiletype term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
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
	CSAHi vimCollClass term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiTermcap term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimPatRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimCollection term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=244 ctermfg=fg gui=NONE guibg=#808080 guifg=fg
	CSAHi vimAugroupError term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_to_airline_warning_inactive_inactive term=NONE cterm=NONE ctermbg=234 ctermfg=166 gui=NONE guibg=#1c1c1c guifg=#df5f00
	CSAHi airline_z_to_airline_warning_inactive_inactive_bold term=bold cterm=bold ctermbg=234 ctermfg=166 gui=bold guibg=#1c1c1c guifg=#df5f00
	CSAHi airline_z_to_airline_warning_inactive_inactive_red term=NONE cterm=NONE ctermbg=234 ctermfg=196 gui=NONE guibg=#1c1c1c guifg=#ff0000
	CSAHi airline_x_to_airline_y_inactive_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_x_to_airline_y_inactive_inactive_bold term=bold cterm=bold ctermbg=236 ctermfg=235 gui=bold guibg=#303030 guifg=#262626
	CSAHi airline_x_to_airline_y_inactive_inactive_red term=NONE cterm=NONE ctermbg=236 ctermfg=196 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_c1_to_airline_x term=NONE cterm=NONE ctermbg=231 ctermfg=234 gui=NONE guibg=#ffffff guifg=#202020
	CSAHi vimCommentTitleLeader term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=231 gui=NONE guibg=bg guifg=#ffffff
	CSAHi MatchParen term=reverse cterm=NONE ctermbg=51 ctermfg=fg gui=NONE guibg=#00ffff guifg=fg
	CSAHi vimSubstPat term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSubstRep4 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_a_to_airline_b term=NONE cterm=NONE ctermbg=238 ctermfg=190 gui=NONE guibg=#444444 guifg=#dfff00
	CSAHi airline_b_to_airline_c term=NONE cterm=NONE ctermbg=234 ctermfg=238 gui=NONE guibg=#202020 guifg=#444444
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
	CSAHi airline_c2_to_airline_x term=NONE cterm=NONE ctermbg=231 ctermfg=234 gui=NONE guibg=#ffffff guifg=#202020
	CSAHi vimStdPlugin term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c3_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyInterpolation term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi NONE term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyDelimEscape term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=16 ctermfg=196 gui=NONE guibg=#000000 guifg=#ff0000
	CSAHi vimFuncBody term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=90 gui=NONE guibg=bg guifg=#800080
	CSAHi airline_y_inactive term=NONE cterm=NONE ctermbg=235 ctermfg=239 gui=NONE guibg=#262626 guifg=#4e4e4e
	CSAHi airline_y_inactive_bold term=bold cterm=bold ctermbg=235 ctermfg=239 gui=bold guibg=#262626 guifg=#4e4e4e
	CSAHi airline_y_inactive_red term=NONE cterm=NONE ctermbg=235 ctermfg=196 gui=NONE guibg=#262626 guifg=#ff0000
	CSAHi vimAutoEventList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_inactive_bold term=bold cterm=bold ctermbg=234 ctermfg=239 gui=bold guibg=#1c1c1c guifg=#4e4e4e
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
	CSAHi airline_c1_to_airline_x_inactive term=NONE cterm=NONE ctermbg=231 ctermfg=236 gui=NONE guibg=#ffffff guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive term=NONE cterm=NONE ctermbg=231 ctermfg=236 gui=NONE guibg=#ffffff guifg=#303030
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
	CSAHi airline_c1_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=16 ctermfg=236 gui=NONE guibg=#000000 guifg=#303030
	CSAHi airline_c1_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=16 ctermfg=236 gui=bold guibg=#000000 guifg=#303030
	CSAHi airline_c1_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=16 ctermfg=196 gui=NONE guibg=#000000 guifg=#ff0000
	CSAHi airline_c2_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=16 ctermfg=236 gui=NONE guibg=#000000 guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=16 ctermfg=236 gui=bold guibg=#000000 guifg=#303030
	CSAHi Tag term=bold cterm=NONE ctermbg=bg ctermfg=22 gui=NONE guibg=bg guifg=#006400
	CSAHi cIf0 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_to_airline_x_bold term=bold cterm=bold ctermbg=16 ctermfg=234 gui=bold guibg=#000000 guifg=#202020
	CSAHi airline_c2_to_airline_x_red term=NONE cterm=NONE ctermbg=16 ctermfg=196 gui=NONE guibg=#000000 guifg=#ff0000
	CSAHi airline_c1_to_airline_x_bold term=bold cterm=bold ctermbg=16 ctermfg=234 gui=bold guibg=#000000 guifg=#202020
	CSAHi CursorLineNr term=bold cterm=bold ctermbg=bg ctermfg=124 gui=bold guibg=bg guifg=#a52a2a
	CSAHi StatusLine term=bold,reverse cterm=NONE ctermbg=248 ctermfg=226 gui=NONE guibg=#a9a9a9 guifg=#ffff00
	CSAHi StatusLineNC term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
	CSAHi VertSplit term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
	CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=201 gui=bold guibg=bg guifg=#ff00ff
	CSAHi Visual term=reverse cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=#ffff00 guifg=#000000
	CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
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
	CSAHi airline_c1_to_airline_x_red term=NONE cterm=NONE ctermbg=16 ctermfg=196 gui=NONE guibg=#000000 guifg=#ff0000
	CSAHi Scrollbar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Menu term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi ShowMarksHL term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi diffOnly term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellErrors term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimFunction term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Folded term=NONE cterm=NONE ctermbg=252 ctermfg=18 gui=NONE guibg=#d3d3d3 guifg=#00008b
	CSAHi FoldColumn term=NONE cterm=NONE ctermbg=244 ctermfg=18 gui=NONE guibg=#808080 guifg=#00008b
	CSAHi DiffAdd term=bold cterm=NONE ctermbg=152 ctermfg=fg gui=NONE guibg=#add8e6 guifg=fg
	CSAHi DiffChange term=bold cterm=NONE ctermbg=219 ctermfg=fg gui=NONE guibg=#ffbbff guifg=fg
	CSAHi DiffDelete term=bold cterm=bold ctermbg=195 ctermfg=21 gui=bold guibg=#e0ffff guifg=#0000ff
	CSAHi DiffText term=reverse cterm=bold ctermbg=196 ctermfg=fg gui=bold guibg=#ff0000 guifg=fg
	CSAHi SignColumn term=NONE cterm=NONE ctermbg=244 ctermfg=18 gui=NONE guibg=#808080 guifg=#00008b
	CSAHi Conceal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=#ff0000
	CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=#0000ff
	CSAHi rubyAliasDeclaration2 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyAliasDeclaration term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    elseif has("gui_running") || &t_Co == 88
	CSAHi Normal term=NONE cterm=NONE ctermbg=79 ctermfg=16 gui=NONE guibg=#ffffff guifg=#000000
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
	CSAHi vimAutoCmdSpace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=81 gui=NONE guibg=#1c1c1c guifg=#4e4e4e
	CSAHi vimSynKeyRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimAutoCmdSfxList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynMatchRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynMtchCchar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynMtchGroup term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=19 gui=NONE guibg=bg guifg=#0000ff
	CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=19 gui=bold guibg=bg guifg=#0000ff
	CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=19 gui=NONE guibg=bg guifg=#0000ff
	CSAHi IncSearch term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
	CSAHi Search term=reverse cterm=NONE ctermbg=31 ctermfg=16 gui=NONE guibg=#00ffff guifg=#000000
	CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
	CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=32 gui=NONE guibg=bg guifg=#a52a2a
	CSAHi vimRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSynLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=67 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
	CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=#008b8b
	CSAHi Pmenu term=NONE cterm=NONE ctermbg=75 ctermfg=fg gui=NONE guibg=#ffbbff guifg=fg
	CSAHi PmenuSel term=NONE cterm=NONE ctermbg=83 ctermfg=fg gui=NONE guibg=#808080 guifg=fg
	CSAHi vimAugroup term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=16 ctermfg=fg gui=NONE guibg=#000000 guifg=fg
	CSAHi TabLine term=underline cterm=underline ctermbg=86 ctermfg=fg gui=underline guibg=#d3d3d3 guifg=fg
	CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
	CSAHi TabLineFill term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
	CSAHi CursorColumn term=reverse cterm=NONE ctermbg=87 ctermfg=fg gui=NONE guibg=#e5e5e5 guifg=fg
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
	CSAHi CursorLine term=underline cterm=NONE ctermbg=87 ctermfg=fg gui=NONE guibg=#e5e5e5 guifg=fg
	CSAHi ColorColumn term=reverse cterm=NONE ctermbg=74 ctermfg=fg gui=NONE guibg=#ffbbbb guifg=fg
	CSAHi Cursor term=NONE cterm=NONE ctermbg=16 ctermfg=79 gui=NONE guibg=#000000 guifg=#ffffff
	CSAHi lCursor term=NONE cterm=NONE ctermbg=16 ctermfg=79 gui=NONE guibg=#000000 guifg=#ffffff
	CSAHi vimEcho term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Error term=reverse cterm=NONE ctermbg=64 ctermfg=79 gui=NONE guibg=#ff0000 guifg=#ffffff
	CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=64 gui=NONE guibg=bg guifg=#ff0000
	CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=67 gui=NONE guibg=bg guifg=#ff00ff
	CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=67 gui=NONE guibg=bg guifg=#ff00ff
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
	CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=19 gui=NONE guibg=bg guifg=#0000ff
	CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=32 gui=NONE guibg=bg guifg=#a52a2a
	CSAHi vimFuncBlank term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=19 gui=NONE guibg=bg guifg=#0000ff
	CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=38 gui=underline guibg=bg guifg=#6a5acd
	CSAHi vimEscapeBrace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Todo term=NONE cterm=NONE ctermbg=76 ctermfg=19 gui=NONE guibg=#ffff00 guifg=#0000ff
	CSAHi rubyRepeatExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyMultilineComment term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimFiletype term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
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
	CSAHi vimCollClass term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimHiTermcap term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimPatRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimCollection term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=83 ctermfg=fg gui=NONE guibg=#808080 guifg=fg
	CSAHi vimAugroupError term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_to_airline_warning_inactive_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=52 gui=NONE guibg=#1c1c1c guifg=#df5f00
	CSAHi airline_z_to_airline_warning_inactive_inactive_bold term=bold cterm=bold ctermbg=80 ctermfg=52 gui=bold guibg=#1c1c1c guifg=#df5f00
	CSAHi airline_z_to_airline_warning_inactive_inactive_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#1c1c1c guifg=#ff0000
	CSAHi airline_x_to_airline_y_inactive_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#303030 guifg=#262626
	CSAHi airline_x_to_airline_y_inactive_inactive_bold term=bold cterm=bold ctermbg=80 ctermfg=80 gui=bold guibg=#303030 guifg=#262626
	CSAHi airline_x_to_airline_y_inactive_inactive_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#303030 guifg=#ff0000
	CSAHi airline_c1_to_airline_x term=NONE cterm=NONE ctermbg=79 ctermfg=80 gui=NONE guibg=#ffffff guifg=#202020
	CSAHi vimCommentTitleLeader term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=79 gui=NONE guibg=bg guifg=#ffffff
	CSAHi MatchParen term=reverse cterm=NONE ctermbg=31 ctermfg=fg gui=NONE guibg=#00ffff guifg=fg
	CSAHi vimSubstPat term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimSubstRep4 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_a_to_airline_b term=NONE cterm=NONE ctermbg=80 ctermfg=60 gui=NONE guibg=#444444 guifg=#dfff00
	CSAHi airline_b_to_airline_c term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#202020 guifg=#444444
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
	CSAHi airline_c2_to_airline_x term=NONE cterm=NONE ctermbg=79 ctermfg=80 gui=NONE guibg=#ffffff guifg=#202020
	CSAHi vimStdPlugin term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c3_inactive term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyInterpolation term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi NONE term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyDelimEscape term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=16 ctermfg=64 gui=NONE guibg=#000000 guifg=#ff0000
	CSAHi vimFuncBody term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=33 gui=NONE guibg=bg guifg=#800080
	CSAHi airline_y_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=81 gui=NONE guibg=#262626 guifg=#4e4e4e
	CSAHi airline_y_inactive_bold term=bold cterm=bold ctermbg=80 ctermfg=81 gui=bold guibg=#262626 guifg=#4e4e4e
	CSAHi airline_y_inactive_red term=NONE cterm=NONE ctermbg=80 ctermfg=64 gui=NONE guibg=#262626 guifg=#ff0000
	CSAHi vimAutoEventList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_z_inactive_bold term=bold cterm=bold ctermbg=80 ctermfg=81 gui=bold guibg=#1c1c1c guifg=#4e4e4e
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
	CSAHi airline_c1_to_airline_x_inactive term=NONE cterm=NONE ctermbg=79 ctermfg=80 gui=NONE guibg=#ffffff guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive term=NONE cterm=NONE ctermbg=79 ctermfg=80 gui=NONE guibg=#ffffff guifg=#303030
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
	CSAHi airline_c1_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=16 ctermfg=80 gui=NONE guibg=#000000 guifg=#303030
	CSAHi airline_c1_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=16 ctermfg=80 gui=bold guibg=#000000 guifg=#303030
	CSAHi airline_c1_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=16 ctermfg=64 gui=NONE guibg=#000000 guifg=#ff0000
	CSAHi airline_c2_to_airline_x_inactive_inactive term=NONE cterm=NONE ctermbg=16 ctermfg=80 gui=NONE guibg=#000000 guifg=#303030
	CSAHi airline_c2_to_airline_x_inactive_inactive_bold term=bold cterm=bold ctermbg=16 ctermfg=80 gui=bold guibg=#000000 guifg=#303030
	CSAHi Tag term=bold cterm=NONE ctermbg=bg ctermfg=20 gui=NONE guibg=bg guifg=#006400
	CSAHi cIf0 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_to_airline_x_bold term=bold cterm=bold ctermbg=16 ctermfg=80 gui=bold guibg=#000000 guifg=#202020
	CSAHi airline_c2_to_airline_x_red term=NONE cterm=NONE ctermbg=16 ctermfg=64 gui=NONE guibg=#000000 guifg=#ff0000
	CSAHi airline_c1_to_airline_x_bold term=bold cterm=bold ctermbg=16 ctermfg=80 gui=bold guibg=#000000 guifg=#202020
	CSAHi CursorLineNr term=bold cterm=bold ctermbg=bg ctermfg=32 gui=bold guibg=bg guifg=#a52a2a
	CSAHi StatusLine term=bold,reverse cterm=NONE ctermbg=84 ctermfg=76 gui=NONE guibg=#a9a9a9 guifg=#ffff00
	CSAHi StatusLineNC term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
	CSAHi VertSplit term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
	CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=67 gui=bold guibg=bg guifg=#ff00ff
	CSAHi Visual term=reverse cterm=NONE ctermbg=76 ctermfg=16 gui=NONE guibg=#ffff00 guifg=#000000
	CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
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
	CSAHi airline_c1_to_airline_x_red term=NONE cterm=NONE ctermbg=16 ctermfg=64 gui=NONE guibg=#000000 guifg=#ff0000
	CSAHi Scrollbar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Menu term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi ShowMarksHL term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi diffOnly term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpellErrors term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi vimFunction term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Folded term=NONE cterm=NONE ctermbg=86 ctermfg=17 gui=NONE guibg=#d3d3d3 guifg=#00008b
	CSAHi FoldColumn term=NONE cterm=NONE ctermbg=83 ctermfg=17 gui=NONE guibg=#808080 guifg=#00008b
	CSAHi DiffAdd term=bold cterm=NONE ctermbg=58 ctermfg=fg gui=NONE guibg=#add8e6 guifg=fg
	CSAHi DiffChange term=bold cterm=NONE ctermbg=75 ctermfg=fg gui=NONE guibg=#ffbbff guifg=fg
	CSAHi DiffDelete term=bold cterm=bold ctermbg=63 ctermfg=19 gui=bold guibg=#e0ffff guifg=#0000ff
	CSAHi DiffText term=reverse cterm=bold ctermbg=64 ctermfg=fg gui=bold guibg=#ff0000 guifg=fg
	CSAHi SignColumn term=NONE cterm=NONE ctermbg=83 ctermfg=17 gui=NONE guibg=#808080 guifg=#00008b
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