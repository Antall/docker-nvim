let s:path = expand('<sfile>:p:h')

" Configuration for language dependancies
let g:python3_host_prog = "/home/neovim/.local/share/vendorvenv/python3_neovim_provider/bin/python3"
let g:ruby_host_prog = "/home/neovim/.gem/ruby/2.6.0/bin/neovim-ruby-host"

" Load vim-enabled plugins from plugins.vim file
call plug#begin(s:path . '/plugged')
exe 'source ' . s:path . '/custom/plugins.vim'
call plug#end()

" Core customizations
exe 'source ' . s:path . '/custom/settings.vim'
exe 'source ' . s:path . '/custom/mappings.vim'
exe 'source ' . s:path . '/custom/abbreviations.vim'

" Plugin Configurations
exe 'source ' . s:path . '/custom/plugins/language_client.vim'
exe 'source ' . s:path . '/custom/plugins/fzf.vim'
exe 'source ' . s:path . '/custom/plugins/nerdtree.vim'
exe 'source ' . s:path . '/custom/plugins/nerdcommenter.vim'
exe 'source ' . s:path . '/custom/plugins/fugitive.vim'
exe 'source ' . s:path . '/custom/plugins/airline-theme.vim'
exe 'source ' . s:path . '/custom/plugins/syntastic.vim'



