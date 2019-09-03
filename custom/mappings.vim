" remap escape sequence
inoremap jk <ESC>
inoremap <ESC> <Nop>

" File Finder mapping
map <leader>f :FZF<cr>

" Select All mapping
map <C-a> <esc>ggVG<CR>

" save file
nnoremap <leader>s <ESC>:silent! %s/\s\+$//<cr> :retab<cr> :w<cr>
inoremap <leader>s <ESC>:silent! %s/\s\+$//<cr> :retab<cr> :w<cr>

" close current buffer
nnoremap <leader>c <ESC>:bd<cr>

" swap between recent buffers
nnoremap <leader><leader> <c-^>

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
