"
" min_plugins.vimrc
" Vim plugin flags for minimal, lightweight setup
" Each plugin managed by vundle should have an associated flag in this list
" this determines what plugins and settings are to be loaded

" A X_plugins.vimrc file should be sourced at the beginning of vimrc

" This plugins file will load just the most important plugins and settings
"

let PLUGIN_VIM_AIRLINE = 1
let PLUGIN_VIM_AIRLINE_THEMES = 1
let PLUGIN_NERDTREE = 1
let PLUGIN_VIFM = 0
let PLUGIN_LOCALRC = 0
let PLUGIN_MINIBUFEXPL = 1
let PLUGIN_GUNDO = 0
let PLUGIN_TASKLIST = 0
let PLUGIN_LEXICAL = 0
let PLUGIN_CONQUETERM_VIM = 0
let PLUGIN_VIM_SESSION = 0
let PLUGIN_VIM_MISC = 0
let PLUGIN_VIM_SHELL = 0
let PLUGIN_AUTOCOMPLPOP = 0
let PLUGIN_SUPERTAB = 0
let PLUGIN_MATCHIT = 1
let PLUGIN_VIM_EASYMOTION = 1
let PLUGIN_INCSEARCH = 1
let PLUGIN_INCSEARCH_EASYMOTION = 1
let PLUGIN_INCSEARCH_FUZZY = 1
let PLUGIN_VIM_EASYOPERATOR_LINE = 0
let PLUGIN_VIM_EASYOPERATOR_PHRASE = 0
let PLUGIN_LINEDIFF = 0
let PLUGIN_VIM_SURROUND = 1
let PLUGIN_SUDO = 0
let PLUGIN_VIM_REF = 0
let PLUGIN_CAW = 1
let PLUGIN_VIM_BOOKMARKS = 1
let PLUGIN_SENSIBLE = 0
let PLUGIN_UNICODE = 0

" Unite
let PLUGIN_UNITE = 0
let PLUGIN_NEOYANK = 0
let PLUGIN_NEOMRU = 0
let PLUGIN_VIM_UNITE_HISTORY = 0
let PLUGIN_UNITE_COLORSCHEME = 0
let PLUGIN_NEOINCLUDE = 0
let PLUGIN_UNITE_TAG = 0
let PLUGIN_UNITE_QUICKFIX = 0
let PLUGIN_UNITE_OUTLINE = 0
let PLUGIN_UNITE_HELP = 0
let PLUGIN_UNITE_MARK = 0
let PLUGIN_VIM_UNITE_GITI = 0
let PLUGIN_VIMPROC = 0

" Wrappers and Integrations
let PLUGIN_VIM_FUGITIVE = 1
let PLUGIN_VIM_GITGUTTER = 0
let PLUGIN_VIM_SIGNIFY = 1
let PLUGIN_VIM_GINA = 0
let PLUGIN_AGIT = 0
let PLUGIN_GIST_VIM = 0
let PLUGIN_VIM_GISTA = 0
let PLUGIN_VIM_GISTA_UNITE = 0
let PLUGIN_VITAL_VCS_GIT = 0
let PLUGIN_VITAL = 0
let PLUGIN_VITAL_ARGUMENTPARSER = 0
let PLUGIN_VIM_MERCENARY = 1
let PLUGIN_VIM_LAWRENCIUM = 1
let PLUGIN_TMUXLINE = 0
let PLUGIN_PROMPTLINE = 0
let PLUGIN_OPEN_BROWSER = 0

" Vim as IDE
let PLUGIN_YOUCOMPLETEME = 0
let PLUGIN_COMPLETOR = 1
let PLUGIN_MUCOMPLETE = 0
let PLUGIN_VIMCOMPLETESME = 0
let PLUGIN_CONTEXTCOMPLETE = 0
let PLUGIN_ULTISNIPS = 1
let PLUGIN_VIM_ADDON_MW_UTILS = 0
let PLUGIN_TLIB_VIM = 0
let PLUGIN_VIM_SNIPMATE = 0
let PLUGIN_VIM_SNIPPETS = 1
let PLUGIN_SYNTASTIC = 1
let PLUGIN_VIM_TAGS = 0
let PLUGIN_VIM_EASYTAGS = 0
let PLUGIN_TAGBAR = 0
let PLUGIN_SPLITJOIN = 0
let PLUGIN_PYCLEWN = 0
let PLUGIN_TCOMMENT = 0
let PLUGIN_VIM_COMMENTARY = 0
let PLUGIN_OMNISHARP = 0
let PLUGIN_DISPATCH = 0
let PLUGIN_NEOCOMPLETE = 0
let PLUGIN_NECOVIM = 0
let PLUGIN_NEOSNIPPET = 0
let PLUGIN_NEOSNIPPET_SNIPPETS = 0

" C/C++
let PLUGIN_A = 1
let PLUGIN_VIM_CPP = 1

" C#
let PLUGIN_VIM_CSHARP = 1

" XAML
let PLUGIN_DOTNET_COMPLETE = 1
let PLUGIN_DOTNET_COMPLETE_XAML_ONLY = 1

" Go
let PLUGIN_GOCODE = 0
let PLUGIN_GODEF = 0

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

" TypeScript
let PLUGIN_TYPESCRIPT_VIM = 0
let PLUGIN_YATS_VIM = 0
let PLUGIN_TSUQUYOMI = 0

" Swift
let PLUGIN_COMPLETOR_SWIFT = 0

" SQL
let PLUGIN_SQLCOMPLETE = 1

" Colorscheme- and Theme-related
let PLUGIN_CSAPPROX = 0
let PLUGIN_VIM_COLORSTEPPER = 1
let PLUGIN_VIM_THEMATIC = 0
let PLUGIN_VIM_FONTZOOM = 0
let PLUGIN_TABPAGECOLORSCHEME = 0
let PLUGIN_POWERLINE_FONTS = 1
let PLUGIN_SCROLLCOLORS = 0

" Colorschemes
let PLUGIN_FLAZZ_VIM_COLORSCHEMES = 0
let PLUGIN_COLOUR_SAMPLER_PACK = 0
let PLUGIN_VIM_COLORS_SOLARIZED = 0
let PLUGIN_BASE16_VIM = 0
let PLUGIN_MOLOKAI = 0
let PLUGIN_SHIRACHA_VIM = 0
let PLUGIN_VIM_LUNA = 0
let PLUGIN_ZENESQUE = 0
let PLUGIN_NEVERLAND_VIM_THEME = 0
let PLUGIN_VIM_ALDMERIS = 0
let PLUGIN_VIM_HYBRID = 0
let PLUGIN_VIM_HYBRID_MATERIAL = 0
let PLUGIN_LAST256 = 0

" Additional syntax highlighting
let PLUGIN_VIM_QML = 0
let PLUGIN_FT_CMAKE = 0
let PLUGIN_MOONSCRIPT_VIM = 0
let PLUGIN_VIM_COFFEE_SCRIPT = 0
let PLUGIN_RCSHELL = 0
let PLUGIN_RUST = 0
let PLUGIN_VIM_TOML = 0
let PLUGIN_VBNET = 0
let PLUGIN_ASPNET = 0
let PLUGIN_HLA = 0
let PLUGIN_OPENSCAD = 0
let PLUGIN_VIM_PS1 = 0
let PLUGIN_POLLEN = 0
let PLUGIN_SCRIBBLE = 0
let PLUGIN_FITNESSE = 0

" Doing more with vim!
let PLUGIN_CALENDAR = 0
let PLUGIN_VIM_PAGER = 0
let PLUGIN_VIM_MANPAGER = 0
let PLUGIN_VIMSHELL = 0
let PLUGIN_VIMFILER = 0
let PLUGIN_VS_BROWSER = 0
let PLUGIN_SYNMARK = 0
let PLUGIN_MJBROWNIE_BROWSER = 0
let PLUGIN_VS_WEBBROWSER = 0
let PLUGIN_VIMWIKI = 1
let PLUGIN_VIM_NOTES = 0
let PLUGIN_VIM_ORGMODE = 0
let PLUGIN_VIM_TASKWARRIOR = 0
