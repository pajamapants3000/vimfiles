" Runs CSApprox version in console

if has("gui_running")

    " Vim color file
    " Maintainer:	Yasuhiro Matsumoto <mattn@mail.goo.ne.jp>
    " Last Change:	2001 May 25

    " This look like normal text editor.
    " This color scheme uses a light background.

    " First remove all existing highlighting.
    set background=light
    hi clear
    if exists("syntax_on")
      syntax reset
    endif

    let colors_name = "shine"

    hi Normal ctermbg=White ctermfg=Black guifg=Black guibg=White

    " Groups used in the 'highlight' and 'guicursor' options default value.
    hi ErrorMsg term=standout ctermbg=DarkRed ctermfg=White guibg=Red guifg=White
    hi IncSearch term=reverse cterm=reverse gui=reverse
    hi ModeMsg term=bold cterm=bold gui=bold
    hi StatusLine term=reverse,bold cterm=reverse,bold gui=reverse,bold
    hi StatusLineNC term=reverse cterm=reverse gui=reverse
    hi VertSplit term=reverse cterm=reverse gui=reverse
    hi Visual term=reverse cterm=reverse gui=reverse guifg=Grey guibg=fg
    hi VisualNOS term=underline,bold cterm=underline,bold gui=underline,bold
    hi DiffText term=reverse cterm=bold ctermbg=Red gui=bold guibg=Red
    hi Cursor ctermbg=Green guibg=Green guifg=Black
    hi lCursor guibg=Cyan guifg=Black
    hi Directory term=bold ctermfg=LightRed guifg=Red
    hi LineNr term=underline ctermfg=Yellow guifg=Yellow
    hi MoreMsg term=bold ctermfg=LightGreen gui=bold guifg=SeaGreen
    hi NonText term=bold ctermfg=LightBlue gui=bold guifg=LightBlue guibg=grey90
    hi Question term=standout ctermfg=LightGreen gui=bold guifg=Green
    hi Search term=reverse ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black
    hi SpecialKey term=bold ctermfg=LightBlue guifg=Blue
    hi Title term=bold ctermfg=LightMagenta gui=bold guifg=Magenta
    hi WarningMsg term=standout ctermfg=LightRed guifg=Red
    hi WildMenu term=standout ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black
    hi Folded term=standout ctermbg=LightGrey ctermfg=DarkBlue guibg=LightGrey guifg=DarkBlue
    hi FoldColumn term=standout ctermbg=LightGrey ctermfg=DarkBlue guibg=Grey guifg=DarkBlue
    hi DiffAdd term=bold ctermbg=DarkBlue guibg=DarkBlue
    hi DiffChange term=bold ctermbg=DarkMagenta guibg=DarkMagenta
    hi DiffDelete term=bold ctermfg=Blue ctermbg=DarkCyan gui=bold guifg=Blue guibg=DarkCyan

    hi Comment ctermfg=DarkGrey ctermbg=White guifg=DarkGrey gui=bold
    hi SpecialChar ctermfg=DarkGrey ctermbg=White guifg=DarkGrey gui=bold
    hi StorageClass ctermfg=Red ctermbg=White guifg=Red gui=bold
    hi Number ctermfg=LightRed ctermbg=White guifg=LightRed gui=bold

    " Groups for syntax highlighting
    hi Constant term=underline ctermfg=Magenta guifg=#a07070 guibg=grey80
    hi Special term=bold ctermfg=LightRed guifg=DarkOrange guibg=grey80
    if &t_Co > 8
      hi Statement term=bold cterm=bold ctermfg=DarkGreen ctermbg=White guifg=#ffff60 gui=bold
    endif
    hi Ignore ctermfg=LightGrey guifg=grey90

    " vim: sw=2

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
	CSAHi NonText term=bold cterm=bold ctermbg=254 ctermfg=153 gui=bold guibg=#e5e5e5 guifg=#add8e6
	CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#ff0000
	CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=#ff0000 guifg=#ffffff
	CSAHi IncSearch term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
	CSAHi Search term=reverse cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=#ffff00 guifg=#000000
	CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=72 gui=bold guibg=bg guifg=#2e8b57
	CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
	CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=226 gui=NONE guibg=bg guifg=#ffff00
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
	CSAHi Cursor term=NONE cterm=NONE ctermbg=34 ctermfg=16 gui=NONE guibg=#008000 guifg=#000000
	CSAHi lCursor term=NONE cterm=NONE ctermbg=51 ctermfg=16 gui=NONE guibg=#00ffff guifg=#000000
	CSAHi vimEcho term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Error term=reverse cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=#ff0000 guifg=#ffffff
	CSAHi Comment term=bold cterm=bold ctermbg=bg ctermfg=248 gui=bold guibg=bg guifg=#a9a9a9
	CSAHi Constant term=underline cterm=NONE ctermbg=188 ctermfg=138 gui=NONE guibg=#cccccc guifg=#a07070
	CSAHi Special term=bold cterm=NONE ctermbg=188 ctermfg=214 gui=NONE guibg=#cccccc guifg=#ff8c00
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
	CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#008b8b
	CSAHi Statement term=bold cterm=bold ctermbg=bg ctermfg=131 gui=bold guibg=bg guifg=#a52a2a
	CSAHi vimFuncBlank term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Type term=underline cterm=bold ctermbg=bg ctermfg=72 gui=bold guibg=bg guifg=#2e8b57
	CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=104 gui=underline guibg=bg guifg=#6a5acd
	CSAHi vimEscapeBrace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Todo term=NONE cterm=NONE ctermbg=226 ctermfg=21 gui=NONE guibg=#ffff00 guifg=#0000ff
	CSAHi Number term=NONE cterm=bold ctermbg=bg ctermfg=224 gui=bold guibg=bg guifg=#ffbbbb
	CSAHi rubyRepeatExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyMultilineComment term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi VertSplit term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
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
	CSAHi StorageClass term=NONE cterm=bold ctermbg=bg ctermfg=196 gui=bold guibg=bg guifg=#ff0000
	CSAHi vimCollection term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpecialChar term=NONE cterm=bold ctermbg=bg ctermfg=248 gui=bold guibg=bg guifg=#a9a9a9
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
	CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e5e5e5
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
	CSAHi airline_c2_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=16 ctermfg=196 gui=NONE guibg=#000000 guifg=#ff0000
	CSAHi cIf0 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_to_airline_x_bold term=bold cterm=bold ctermbg=16 ctermfg=234 gui=bold guibg=#000000 guifg=#202020
	CSAHi airline_c2_to_airline_x_red term=NONE cterm=NONE ctermbg=16 ctermfg=196 gui=NONE guibg=#000000 guifg=#ff0000
	CSAHi airline_c1_to_airline_x_bold term=bold cterm=bold ctermbg=16 ctermfg=234 gui=bold guibg=#000000 guifg=#202020
	CSAHi CursorLineNr term=bold cterm=bold ctermbg=bg ctermfg=131 gui=bold guibg=bg guifg=#a52a2a
	CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=34 gui=bold guibg=bg guifg=#008000
	CSAHi StatusLine term=bold,reverse cterm=bold,reverse ctermbg=bg ctermfg=fg gui=bold,reverse guibg=bg guifg=fg
	CSAHi StatusLineNC term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
	CSAHi vimFiletype term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=201 gui=bold guibg=bg guifg=#ff00ff
	CSAHi Visual term=reverse cterm=reverse ctermbg=244 ctermfg=16 gui=reverse guibg=#000000 guifg=#808080
	CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
	CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#ff0000
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
	CSAHi vimFunction term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Folded term=NONE cterm=NONE ctermbg=252 ctermfg=19 gui=NONE guibg=#d3d3d3 guifg=#00008b
	CSAHi FoldColumn term=NONE cterm=NONE ctermbg=244 ctermfg=19 gui=NONE guibg=#808080 guifg=#00008b
	CSAHi DiffAdd term=bold cterm=NONE ctermbg=19 ctermfg=fg gui=NONE guibg=#00008b guifg=fg
	CSAHi DiffChange term=bold cterm=NONE ctermbg=127 ctermfg=fg gui=NONE guibg=#8b008b guifg=fg
	CSAHi DiffDelete term=bold cterm=bold ctermbg=37 ctermfg=21 gui=bold guibg=#008b8b guifg=#0000ff
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
	CSAHi NonText term=bold cterm=bold ctermbg=254 ctermfg=195 gui=bold guibg=#e5e5e5 guifg=#add8e6
	CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#ff0000
	CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=196 ctermfg=255 gui=NONE guibg=#ff0000 guifg=#ffffff
	CSAHi IncSearch term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
	CSAHi Search term=reverse cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=#ffff00 guifg=#000000
	CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=72 gui=bold guibg=bg guifg=#2e8b57
	CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
	CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=226 gui=NONE guibg=bg guifg=#ffff00
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
	CSAHi Cursor term=NONE cterm=NONE ctermbg=34 ctermfg=16 gui=NONE guibg=#008000 guifg=#000000
	CSAHi lCursor term=NONE cterm=NONE ctermbg=51 ctermfg=16 gui=NONE guibg=#00ffff guifg=#000000
	CSAHi vimEcho term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Error term=reverse cterm=NONE ctermbg=196 ctermfg=255 gui=NONE guibg=#ff0000 guifg=#ffffff
	CSAHi Comment term=bold cterm=bold ctermbg=bg ctermfg=248 gui=bold guibg=bg guifg=#a9a9a9
	CSAHi Constant term=underline cterm=NONE ctermbg=252 ctermfg=181 gui=NONE guibg=#cccccc guifg=#a07070
	CSAHi Special term=bold cterm=NONE ctermbg=252 ctermfg=214 gui=NONE guibg=#cccccc guifg=#ff8c00
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
	CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#008b8b
	CSAHi Statement term=bold cterm=bold ctermbg=bg ctermfg=167 gui=bold guibg=bg guifg=#a52a2a
	CSAHi vimFuncBlank term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Type term=underline cterm=bold ctermbg=bg ctermfg=72 gui=bold guibg=bg guifg=#2e8b57
	CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=105 gui=underline guibg=bg guifg=#6a5acd
	CSAHi vimEscapeBrace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Todo term=NONE cterm=NONE ctermbg=226 ctermfg=21 gui=NONE guibg=#ffff00 guifg=#0000ff
	CSAHi Number term=NONE cterm=bold ctermbg=bg ctermfg=224 gui=bold guibg=bg guifg=#ffbbbb
	CSAHi rubyRepeatExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyMultilineComment term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi VertSplit term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
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
	CSAHi StorageClass term=NONE cterm=bold ctermbg=bg ctermfg=196 gui=bold guibg=bg guifg=#ff0000
	CSAHi vimCollection term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpecialChar term=NONE cterm=bold ctermbg=bg ctermfg=248 gui=bold guibg=bg guifg=#a9a9a9
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
	CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e5e5e5
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
	CSAHi airline_c2_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=16 ctermfg=196 gui=NONE guibg=#000000 guifg=#ff0000
	CSAHi cIf0 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_to_airline_x_bold term=bold cterm=bold ctermbg=16 ctermfg=234 gui=bold guibg=#000000 guifg=#202020
	CSAHi airline_c2_to_airline_x_red term=NONE cterm=NONE ctermbg=16 ctermfg=196 gui=NONE guibg=#000000 guifg=#ff0000
	CSAHi airline_c1_to_airline_x_bold term=bold cterm=bold ctermbg=16 ctermfg=234 gui=bold guibg=#000000 guifg=#202020
	CSAHi CursorLineNr term=bold cterm=bold ctermbg=bg ctermfg=167 gui=bold guibg=bg guifg=#a52a2a
	CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=34 gui=bold guibg=bg guifg=#008000
	CSAHi StatusLine term=bold,reverse cterm=bold,reverse ctermbg=bg ctermfg=fg gui=bold,reverse guibg=bg guifg=fg
	CSAHi StatusLineNC term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
	CSAHi vimFiletype term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=201 gui=bold guibg=bg guifg=#ff00ff
	CSAHi Visual term=reverse cterm=reverse ctermbg=244 ctermfg=16 gui=reverse guibg=#000000 guifg=#808080
	CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
	CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#ff0000
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
	CSAHi vimFunction term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Folded term=NONE cterm=NONE ctermbg=231 ctermfg=19 gui=NONE guibg=#d3d3d3 guifg=#00008b
	CSAHi FoldColumn term=NONE cterm=NONE ctermbg=244 ctermfg=19 gui=NONE guibg=#808080 guifg=#00008b
	CSAHi DiffAdd term=bold cterm=NONE ctermbg=19 ctermfg=fg gui=NONE guibg=#00008b guifg=fg
	CSAHi DiffChange term=bold cterm=NONE ctermbg=127 ctermfg=fg gui=NONE guibg=#8b008b guifg=fg
	CSAHi DiffDelete term=bold cterm=bold ctermbg=37 ctermfg=21 gui=bold guibg=#008b8b guifg=#0000ff
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
	CSAHi NonText term=bold cterm=bold ctermbg=254 ctermfg=152 gui=bold guibg=#e5e5e5 guifg=#add8e6
	CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#ff0000
	CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=#ff0000 guifg=#ffffff
	CSAHi IncSearch term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
	CSAHi Search term=reverse cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=#ffff00 guifg=#000000
	CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=29 gui=bold guibg=bg guifg=#2e8b57
	CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
	CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=226 gui=NONE guibg=bg guifg=#ffff00
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
	CSAHi Cursor term=NONE cterm=NONE ctermbg=28 ctermfg=16 gui=NONE guibg=#008000 guifg=#000000
	CSAHi lCursor term=NONE cterm=NONE ctermbg=51 ctermfg=16 gui=NONE guibg=#00ffff guifg=#000000
	CSAHi vimEcho term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Error term=reverse cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=#ff0000 guifg=#ffffff
	CSAHi Comment term=bold cterm=bold ctermbg=bg ctermfg=248 gui=bold guibg=bg guifg=#a9a9a9
	CSAHi Constant term=underline cterm=NONE ctermbg=252 ctermfg=131 gui=NONE guibg=#cccccc guifg=#a07070
	CSAHi Special term=bold cterm=NONE ctermbg=252 ctermfg=208 gui=NONE guibg=#cccccc guifg=#ff8c00
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
	CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=30 gui=NONE guibg=bg guifg=#008b8b
	CSAHi Statement term=bold cterm=bold ctermbg=bg ctermfg=124 gui=bold guibg=bg guifg=#a52a2a
	CSAHi vimFuncBlank term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Type term=underline cterm=bold ctermbg=bg ctermfg=29 gui=bold guibg=bg guifg=#2e8b57
	CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=62 gui=underline guibg=bg guifg=#6a5acd
	CSAHi vimEscapeBrace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Todo term=NONE cterm=NONE ctermbg=226 ctermfg=21 gui=NONE guibg=#ffff00 guifg=#0000ff
	CSAHi Number term=NONE cterm=bold ctermbg=bg ctermfg=217 gui=bold guibg=bg guifg=#ffbbbb
	CSAHi rubyRepeatExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyMultilineComment term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi VertSplit term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
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
	CSAHi StorageClass term=NONE cterm=bold ctermbg=bg ctermfg=196 gui=bold guibg=bg guifg=#ff0000
	CSAHi vimCollection term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpecialChar term=NONE cterm=bold ctermbg=bg ctermfg=248 gui=bold guibg=bg guifg=#a9a9a9
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
	CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=254 gui=NONE guibg=bg guifg=#e5e5e5
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
	CSAHi airline_c2_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=16 ctermfg=196 gui=NONE guibg=#000000 guifg=#ff0000
	CSAHi cIf0 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_to_airline_x_bold term=bold cterm=bold ctermbg=16 ctermfg=234 gui=bold guibg=#000000 guifg=#202020
	CSAHi airline_c2_to_airline_x_red term=NONE cterm=NONE ctermbg=16 ctermfg=196 gui=NONE guibg=#000000 guifg=#ff0000
	CSAHi airline_c1_to_airline_x_bold term=bold cterm=bold ctermbg=16 ctermfg=234 gui=bold guibg=#000000 guifg=#202020
	CSAHi CursorLineNr term=bold cterm=bold ctermbg=bg ctermfg=124 gui=bold guibg=bg guifg=#a52a2a
	CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=28 gui=bold guibg=bg guifg=#008000
	CSAHi StatusLine term=bold,reverse cterm=bold,reverse ctermbg=bg ctermfg=fg gui=bold,reverse guibg=bg guifg=fg
	CSAHi StatusLineNC term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
	CSAHi vimFiletype term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=201 gui=bold guibg=bg guifg=#ff00ff
	CSAHi Visual term=reverse cterm=reverse ctermbg=244 ctermfg=16 gui=reverse guibg=#000000 guifg=#808080
	CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
	CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#ff0000
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
	CSAHi vimFunction term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Folded term=NONE cterm=NONE ctermbg=252 ctermfg=18 gui=NONE guibg=#d3d3d3 guifg=#00008b
	CSAHi FoldColumn term=NONE cterm=NONE ctermbg=244 ctermfg=18 gui=NONE guibg=#808080 guifg=#00008b
	CSAHi DiffAdd term=bold cterm=NONE ctermbg=18 ctermfg=fg gui=NONE guibg=#00008b guifg=fg
	CSAHi DiffChange term=bold cterm=NONE ctermbg=90 ctermfg=fg gui=NONE guibg=#8b008b guifg=fg
	CSAHi DiffDelete term=bold cterm=bold ctermbg=30 ctermfg=21 gui=bold guibg=#008b8b guifg=#0000ff
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
	CSAHi NonText term=bold cterm=bold ctermbg=87 ctermfg=58 gui=bold guibg=#e5e5e5 guifg=#add8e6
	CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=64 gui=NONE guibg=bg guifg=#ff0000
	CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=64 ctermfg=79 gui=NONE guibg=#ff0000 guifg=#ffffff
	CSAHi IncSearch term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
	CSAHi Search term=reverse cterm=NONE ctermbg=76 ctermfg=16 gui=NONE guibg=#ffff00 guifg=#000000
	CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=21 gui=bold guibg=bg guifg=#2e8b57
	CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
	CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=76 gui=NONE guibg=bg guifg=#ffff00
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
	CSAHi Cursor term=NONE cterm=NONE ctermbg=20 ctermfg=16 gui=NONE guibg=#008000 guifg=#000000
	CSAHi lCursor term=NONE cterm=NONE ctermbg=31 ctermfg=16 gui=NONE guibg=#00ffff guifg=#000000
	CSAHi vimEcho term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Error term=reverse cterm=NONE ctermbg=64 ctermfg=79 gui=NONE guibg=#ff0000 guifg=#ffffff
	CSAHi Comment term=bold cterm=bold ctermbg=bg ctermfg=84 gui=bold guibg=bg guifg=#a9a9a9
	CSAHi Constant term=underline cterm=NONE ctermbg=58 ctermfg=37 gui=NONE guibg=#cccccc guifg=#a07070
	CSAHi Special term=bold cterm=NONE ctermbg=58 ctermfg=68 gui=NONE guibg=#cccccc guifg=#ff8c00
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
	CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#008b8b
	CSAHi Statement term=bold cterm=bold ctermbg=bg ctermfg=32 gui=bold guibg=bg guifg=#a52a2a
	CSAHi vimFuncBlank term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Type term=underline cterm=bold ctermbg=bg ctermfg=21 gui=bold guibg=bg guifg=#2e8b57
	CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=38 gui=underline guibg=bg guifg=#6a5acd
	CSAHi vimEscapeBrace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Todo term=NONE cterm=NONE ctermbg=76 ctermfg=19 gui=NONE guibg=#ffff00 guifg=#0000ff
	CSAHi Number term=NONE cterm=bold ctermbg=bg ctermfg=74 gui=bold guibg=bg guifg=#ffbbbb
	CSAHi rubyRepeatExpression term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi rubyMultilineComment term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi VertSplit term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
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
	CSAHi StorageClass term=NONE cterm=bold ctermbg=bg ctermfg=64 gui=bold guibg=bg guifg=#ff0000
	CSAHi vimCollection term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi SpecialChar term=NONE cterm=bold ctermbg=bg ctermfg=84 gui=bold guibg=bg guifg=#a9a9a9
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
	CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=87 gui=NONE guibg=bg guifg=#e5e5e5
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
	CSAHi airline_c2_to_airline_x_inactive_inactive_red term=NONE cterm=NONE ctermbg=16 ctermfg=64 gui=NONE guibg=#000000 guifg=#ff0000
	CSAHi cIf0 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi airline_c2_to_airline_x_bold term=bold cterm=bold ctermbg=16 ctermfg=80 gui=bold guibg=#000000 guifg=#202020
	CSAHi airline_c2_to_airline_x_red term=NONE cterm=NONE ctermbg=16 ctermfg=64 gui=NONE guibg=#000000 guifg=#ff0000
	CSAHi airline_c1_to_airline_x_bold term=bold cterm=bold ctermbg=16 ctermfg=80 gui=bold guibg=#000000 guifg=#202020
	CSAHi CursorLineNr term=bold cterm=bold ctermbg=bg ctermfg=32 gui=bold guibg=bg guifg=#a52a2a
	CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=20 gui=bold guibg=bg guifg=#008000
	CSAHi StatusLine term=bold,reverse cterm=bold,reverse ctermbg=bg ctermfg=fg gui=bold,reverse guibg=bg guifg=fg
	CSAHi StatusLineNC term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
	CSAHi vimFiletype term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=67 gui=bold guibg=bg guifg=#ff00ff
	CSAHi Visual term=reverse cterm=reverse ctermbg=83 ctermfg=16 gui=reverse guibg=#000000 guifg=#808080
	CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
	CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=64 gui=NONE guibg=bg guifg=#ff0000
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
	CSAHi vimFunction term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
	CSAHi Folded term=NONE cterm=NONE ctermbg=86 ctermfg=17 gui=NONE guibg=#d3d3d3 guifg=#00008b
	CSAHi FoldColumn term=NONE cterm=NONE ctermbg=83 ctermfg=17 gui=NONE guibg=#808080 guifg=#00008b
	CSAHi DiffAdd term=bold cterm=NONE ctermbg=17 ctermfg=fg gui=NONE guibg=#00008b guifg=fg
	CSAHi DiffChange term=bold cterm=NONE ctermbg=33 ctermfg=fg gui=NONE guibg=#8b008b guifg=fg
	CSAHi DiffDelete term=bold cterm=bold ctermbg=21 ctermfg=19 gui=bold guibg=#008b8b guifg=#0000ff
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