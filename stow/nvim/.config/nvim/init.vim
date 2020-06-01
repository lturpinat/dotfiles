" Nvim configuration


" =============================================================================
" # PLUGINS
" =============================================================================
" Load vundle
set nocompatible
filetype off
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'preservim/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()

filetype plugin indent on

" =============================================================================
" # Editor settings
" =============================================================================

set nocompatible
syntax on

" Disable the default Vim startup message.
set shortmess+=I
set number
set relativenumber

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" Make backspace behave more 'normally'
set backspace=indent,eol,start

" Disable buffer hidding security
set hidden

set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Enable mouse support
set mouse+=a

nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>


packadd! dracula
colorscheme dracula
