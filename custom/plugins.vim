" Use this file to load any vim-plug enabled extension
" Make sure you use single quotes

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Comment functions so powerful—no comment necessary.
Plug 'scrooloose/nerdcommenter'

" Syntax checking hacks
Plug 'scrooloose/syntastic'

" cloudformation linter
Plug 'speshak/vim-cfn'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Displays tags in a window, ordered by scope
Plug 'majutsushi/tagbar'

"A Git wrapper
Plug 'tpope/vim-fugitive'

" Quoting/parenthesizing made simple
Plug 'tpope/vim-surround'

Plug 'soramugi/auto-ctags.vim'

" Theme
Plug 'chriskempson/base16-vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" PlantUML
Plug 'scrooloose/vim-slumlord'
Plug 'aklt/plantuml-syntax'

" JSX syntax pretty highligher
Plug 'maxmellon/vim-jsx-pretty'

" LanguageClient plugin
Plug 'autozimu/LanguageClient-neovim', {
    \ 'for': ['ruby', 'python', 'javascript'],
    \ 'branch': 'next',
    \ 'do': './install.sh',
    \ }
