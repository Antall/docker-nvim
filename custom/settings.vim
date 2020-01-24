" All settings for Neovim.
"
" Following settings are defined:
"
" leader key
" backup and swap
" default editor
" search
" syntax highlighting
" theme
" whitespace
" wildcards
"

""
"" Leader Key
""
let mapleader = ","

""
"" Backup and swap files
""
set nobackup
set noswapfile
set noundofile

""
"" Default Editor
""

set number            " Show line numbers
set ruler             " Show line and column number
syntax enable         " Turn on syntax highlighting allowing local overrides
set mouse=a           " Enable all mouse interactions
set relativenumber    " set hybrid linenumbers

""
"" Search
""

set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter

""
"" Syntax Highlighting
""

" thor files
autocmd BufNewFile, BufRead *.thor set syntax=ruby

""
"" Theme activation
""
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
colorscheme base16-default-dark
set termguicolors
set background=dark

""
"" Whitespace
""

set wrap                          " wrap lines
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode
set cul                           " Highlight the line the cursor is on (local to window)
set colorcolumn=120


""
"" Wildcards
""

" Disable temp and backup files
set wildignore+=*.swp,*~,._*

