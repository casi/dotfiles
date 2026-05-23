" Show line numbers on the left
set number

" Break lines at word boundaries
set linebreak
set showbreak=+++         " Prefix for wrapped lines
set textwidth=100         " Line breaks after 100 characters (for auto linebreak)

" Highlight matching brackets, braces, etc.
set showmatch

" No beeping on errors
set visualbell

" Search settings
set hlsearch              " Highlight search results
set incsearch             " Show matches while typing
set ignorecase            " Ignore case in search patterns...
set smartcase             " ...unless uppercase used

" Indentation behavior
set autoindent
set smartindent
set smarttab
set expandtab             " Use spaces instead of tabs
set shiftwidth=4          " Indentation width (spaces)
set softtabstop=4         " Number of spaces when pressing Tab

" Show cursor position (line/col) in the status line
set ruler

" Persistent undo
set undolevels=1000

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" === Optional Enhancements ===

" Enable syntax highlighting and filetype plugins
" (recommended unless you're deliberately using minimal Vim)
syntax on
filetype plugin indent on

" Highlight the text that was just yanked (if Vim supports it)
" au TextYankPost * silent! lua vim.highlight.on_yank()

" Show current line highlight
set cursorline

" Visualize whitespace (optional for debugging indentation)
" set list
" set listchars=tab:»·,trail:·

" Filetype-specific indentation for Ruby (optional)
" autocmd FileType ruby setlocal shiftwidth=2 softtabstop=2

" Better line wrapping for Markdown files
" autocmd FileType markdown setlocal wrap linebreak nolist
