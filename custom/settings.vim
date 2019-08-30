" Set Leader key
let mapleader = ","

""
"" Default Editor
""

set number            " Show line numbers
set ruler             " Show line and column number
syntax enable         " Turn on syntax highlighting allowing local overrides
set mouse=a           " Enable all mouse interactions
set relativenumber    " set hybrid linenumbers


""
"" Whitespace
""

set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode

""
"" Searching
""

set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter


""
"" Wildcard settings
""

" Disable temp and backup files
set wildignore+=*.swp,*~,._*



""
"" Backup and swap files
""

set backupdir^=/tmp/_backup//    " where to put backup files.
set directory^=/tmp/_temp//      " where to put swap files.