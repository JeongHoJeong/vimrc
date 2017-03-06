set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'rails.vim'
Plugin 'The-NERD-tree'
Plugin 'pangloss/vim-javascript'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'shougo/neocomplete.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'tpope/vim-fugitive'
Plugin 'mxw/vim-jsx'
Plugin 'scrooloose/syntastic'
Plugin 'groenewege/vim-less'
Plugin 'skammer/vim-css-color'
Plugin 'bling/vim-airline'
Plugin 'mileszs/ack.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-surround'
Plugin 'posva/vim-vue'

call vundle#end()
filetype plugin indent on

execute 'source' expand('<sfile>:p:h') . '/plugins/ctrlp.vimrc'
execute 'source' expand('<sfile>:p:h') . '/plugins/neocomplete.vimrc'
execute 'source' expand('<sfile>:p:h') . '/plugins/NERDTree.vimrc'
execute 'source' expand('<sfile>:p:h') . '/plugins/syntastic.vimrc'
execute 'source' expand('<sfile>:p:h') . '/plugins/vim_better_whitespace.vimrc'
