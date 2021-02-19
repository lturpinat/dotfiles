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
Plugin 'DoxygenToolkit.vim'

call vundle#end()

filetype plugin indent on

" =============================================================================
" # Editor settings
" =============================================================================

set nocompatible
syntax on
filetype on
filetype plugin on
filetype indent on

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

" Making clipboard merging with laptop's one
set clipboard+=unnamedplus

" Configure max collumn size
set colorcolumn=100
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Enable mouse support
set mouse+=a

" Les ; sont rarement utilises l’un a la suite de l’autre
:imap ;; <Esc>
:map ;; <Esc>

" Managing tabs
set tabstop=4
set softtabstop=5
set shiftwidth=4
set noexpandtab

" =============================================================================
" # Misc.
" =============================================================================

" 72 chars tab limit with mutt
au BufRead /tmp/mutt-* set tw=72

packadd! dracula
colorscheme dracula
