"
" c_plugins.vimrc
" Vim plugin flags for coding in C/C++
" Each plugin managed by vundle should have an associated flag in this list
" this determines what plugins and settings are to be loaded

" A X_plugins.vimrc file should be sourced at the beginning of vimrc

" This plugins file will load plugins and settings appropriate to coding
" in C/C++. In particular, it loads the YouCompleteMe plugin.

let PLUGIN_VIM_AIRLINE = 1
let PLUGIN_VIM_AIRLINE_THEMES = 1
let PLUGIN_NERDTREE = 1
let PLUGIN_VIFM = 1
let PLUGIN_LOCALRC = 1
let PLUGIN_MINIBUFEXPL = 0
let PLUGIN_GUNDO = 1
let PLUGIN_TASKLIST = 1
let PLUGIN_LEXICAL = 0
let PLUGIN_CONQUETERM_VIM = 1
let PLUGIN_VIM_SESSION = 0
let PLUGIN_VIM_MISC = 1
let PLUGIN_VIM_SHELL = 1
let PLUGIN_AUTOCOMPLPOP = 0
let PLUGIN_SUPERTAB = 0
let PLUGIN_MATCHIT = 1
let PLUGIN_VIM_EASYMOTION = 1
let PLUGIN_INCSEARCH = 1
let PLUGIN_INCSEARCH_EASYMOTION = 1
let PLUGIN_INCSEARCH_FUZZY = 1
let PLUGIN_VIM_EASYOPERATOR_LINE = 0
let PLUGIN_VIM_EASYOPERATOR_PHRASE = 0
let PLUGIN_LINEDIFF = 1
let PLUGIN_VIM_SURROUND = 1
let PLUGIN_SUDO = 1
let PLUGIN_VIM_REF = 1
let PLUGIN_CAW = 1
let PLUGIN_VIM_BOOKMARKS = 1
let PLUGIN_SENSIBLE = 0
let PLUGIN_UNICODE = 1

" Unite
let PLUGIN_UNITE = 1
let PLUGIN_NEOYANK = 1
let PLUGIN_NEOMRU = 1
let PLUGIN_VIM_UNITE_HISTORY = 1
let PLUGIN_UNITE_COLORSCHEME = 1
let PLUGIN_NEOINCLUDE = 1
let PLUGIN_UNITE_TAG = 1
let PLUGIN_UNITE_QUICKFIX = 1
let PLUGIN_UNITE_OUTLINE = 1
let PLUGIN_UNITE_HELP = 1
let PLUGIN_UNITE_MARK = 1
let PLUGIN_VIM_UNITE_GITI = 0
let PLUGIN_VIMPROC = 1

" Wrappers and Integrations
let PLUGIN_VIM_FUGITIVE = 0
let PLUGIN_VIM_GITGUTTER = 0
let PLUGIN_VIM_SIGNIFY = 1
let PLUGIN_VIM_GITA = 0
let PLUGIN_AGIT = 0
let PLUGIN_GIST_VIM = 0
let PLUGIN_VIM_GISTA = 0
let PLUGIN_VIM_GISTA_UNITE = 0
let PLUGIN_VITAL_VCS_GIT = 0
let PLUGIN_VITAL = 1
let PLUGIN_VITAL_ARGUMENTPARSER = 1
let PLUGIN_VIM_MERCENARY = 1
let PLUGIN_VIM_LAWRENCIUM = 0
let PLUGIN_TMUXLINE = 1
let PLUGIN_PROMPTLINE = 1
let PLUGIN_OPEN_BROWSER = 1

" Vim as IDE
let PLUGIN_YOUCOMPLETEME = 1
let PLUGIN_COMPLETOR = 0
let PLUGIN_MUCOMPLETE = 0
let PLUGIN_VIMCOMPLETESME = 0
let PLUGIN_CONTEXTCOMPLETE = 0
let PLUGIN_ULTISNIPS = 1
let PLUGIN_VIM_ADDON_MW_UTILS = 0
let PLUGIN_TLIB_VIM = 0
let PLUGIN_VIM_SNIPMATE = 0
let PLUGIN_VIM_SNIPPETS = 1
let PLUGIN_SYNTASTIC = 0
let PLUGIN_VIM_TAGS = 0
let PLUGIN_VIM_EASYTAGS = 1
let PLUGIN_TAGBAR = 1
let PLUGIN_SPLITJOIN = 1
let PLUGIN_PYCLEWN = 1
let PLUGIN_TCOMMENT = 1
let PLUGIN_VIM_COMMENTARY = 0
let PLUGIN_OMNISHARP = 1
let PLUGIN_DISPATCH = 1
let PLUGIN_NEOCOMPLETE = 0
let PLUGIN_NECOVIM = 0
let PLUGIN_NEOSNIPPET = 0
let PLUGIN_NEOSNIPPET_SNIPPETS = 0

" C/C++
let PLUGIN_A = 1
let PLUGIN_VIM_CPP = 1

" C#
let PLUGIN_VIM_CSHARP = 1

" Lua
let PLUGIN_VIM_LUA_FTPLUGIN = 0
let PLUGIN_LUA_OMNI = 0
let PLUGIN_VIM_LUA_MANUAL = 0

" Python
let PLUGIN_JEDI_VIM = 0
let PLUGIN_PYDOC = 0
let PLUGIN_VIM_VIRTUALENV = 0

" Rust
let PLUGIN_VIM_RACER = 0

" Racket
let PLUGIN_VIM_RACKET = 1
let PLUGIN_VROD = 0

" SQL
let PLUGIN_SQLCOMPLETE = 0

" Colorscheme- and Theme-related
let PLUGIN_CSAPPROX = 1
let PLUGIN_VIM_COLORSTEPPER = 1
let PLUGIN_VIM_THEMATIC = 0
let PLUGIN_VIM_FONTZOOM = 1
let PLUGIN_TABPAGECOLORSCHEME = 1
let PLUGIN_POWERLINE_FONTS = 1

" Colorschemes
let PLUGIN_FLAZZ_VIM_COLORSCHEMES = 0
let PLUGIN_COLOUR_SAMPLER_PACK = 1
let PLUGIN_SCROLLCOLORS = 1
let PLUGIN_VIM_COLORS_SOLARIZED = 1
let PLUGIN_BASE16_VIM = 1
let PLUGIN_MOLOKAI = 1
let PLUGIN_SHIRACHA_VIM = 1
let PLUGIN_VIM_LUNA = 1
let PLUGIN_ZENESQUE = 1
let PLUGIN_NEVERLAND_VIM_THEME = 1
let PLUGIN_VIM_ALDMERIS = 1
let PLUGIN_VIM_HYBRID = 1
let PLUGIN_VIM_HYBRID_MATERIAL = 1
let PLUGIN_LAST256 = 1

" Additional syntax highlighting
let PLUGIN_VIM_QML = 1
let PLUGIN_FT_CMAKE = 1
let PLUGIN_MOONSCRIPT_VIM = 1
let PLUGIN_VIM_COFFEE_SCRIPT = 1
let PLUGIN_RCSHELL = 1
let PLUGIN_RUST = 1
let PLUGIN_VIM_TOML = 1
let PLUGIN_VBNET = 1
let PLUGIN_ASPNET = 1
let PLUGIN_HLA = 1
let PLUGIN_OPENSCAD = 1
let PLUGIN_VIM_PS1 = 1
let PLUGIN_POLLEN = 1
let PLUGIN_SCRIBBLE = 1

" Doing more with vim!
let PLUGIN_CALENDAR = 0
let PLUGIN_VIM_PAGER = 1
let PLUGIN_VIM_MANPAGER = 1
let PLUGIN_VIMSHELL = 0
let PLUGIN_VIMFILER = 0
let PLUGIN_VS_BROWSER = 0
let PLUGIN_SYNMARK = 0
let PLUGIN_MJBROWNIE_BROWSER = 0
let PLUGIN_VS_WEBBROWSER = 0
let PLUGIN_VIMWIKI = 1
let PLUGIN_VIM_NOTES = 1
let PLUGIN_VIM_ORGMODE = 1
let PLUGIN_VIM_TASKWARRIOR = 0
