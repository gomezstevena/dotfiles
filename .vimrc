set nocompatible
filetype off
set rtp +=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/a.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'w0ng/vim-hybrid'
Plugin 'flazz/vim-colorschemes'
Plugin 'kien/ctrlp.vim'
Plugin 'benmills/vimux'
Plugin 'peterhoeg/vim-qml'
Plugin 'fatih/vim-go'
Plugin 'dag/vim-fish'
call vundle#end()
filetype plugin indent on

set mouse=a
set number
set relativenumber
set t_Co=256
set background=dark
colorscheme hybrid
set incsearch

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
