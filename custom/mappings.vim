" remap escape sequence
inoremap jk <ESC>
inoremap <ESC> <Nop>

" File Finder mapping
map <leader>f :FZF<cr>

" Select All mapping
map <leader>a <esc>ggVG<CR>

" save file
nnoremap <leader>s <ESC>:silent! %s/\s\+$//<cr> :retab<cr> :w<cr>
inoremap <leader>s <ESC>:silent! %s/\s\+$//<cr> :retab<cr> :w<cr>

" close current buffer
nnoremap <leader>c <ESC>:bd<cr>

" swap between recent buffers
nnoremap <leader><leader> <c-^>

" tagbar toggle
noremap <silent> <leader>tt :TagbarToggle<CR>

" Nerdtree toggle
noremap <silent> <leader>nn :NERDTreeToggle<CR>
noremap <silent> <leader>nf :NERDTreeFind<CR>

" Git fugitive
noremap <silent> <leader>gs :G<CR>
noremap <silent> <leader>gc :Gcommit<CR>
noremap <silent> <leader>gw :Gwrite<CR>
noremap <silent> <leader>gd :Gdiffsplit<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NAVIGATE NEOVIM PANES
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ARROW KEYS ARE UNACCEPTABLE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

if has('nvim')
  " Hack to get C-h working in NeoVim
  nmap <BS> <C-W>h
endif
