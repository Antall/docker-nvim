let s:path = expand('<sfile>:p:h')

" Load vim-enabled plugins from plugins.vim file
call plug#begin(s:path . '/plugged')
exe 'source ' . s:path . '/custom/plugins.vim'
call plug#end()

" Core customizations
exe 'source ' . s:path . '/custom/settings.vim'
exe 'source ' . s:path . '/custom/mappings.vim'

" Plugin Configurations
exe 'source ' . s:path . '/custom/plugins/fzf.vim'
exe 'source ' . s:path . '/custom/plugins/nerdtree.vim'