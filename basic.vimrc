set smartindent
set autoindent
set shiftwidth=2
set tabstop=2
set number
set expandtab

syntax on

set hlsearch

autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

" for MacVim
if has("gui_macvim")
  set transparency=10
endif
