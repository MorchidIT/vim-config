" Vim configuration file "

" ensure compatibility and disable vi-compatible mode
set nocompatible

" disable automatic filetype detection until Vundle is set up
filetype off

" set runtime path for Vundle
set rtp+=~/.vim/Vundle.vim

" start Vundle configuration
call vundle#begin()

" let Vundel manage Vundel. this should go before any other plugins
" plugin 'VundelVim/Vundel.vim'

" add your plugins here
Plugin 'Yggdroot/indentLine'
Plugin 'fratajczak/one-monokai-vim'
Plugin 'preservim/nerdtree'


" end Vundle configuration
call vundle#end() "required

" re-enable filetype detection, plugins, and indenting
filetype plugin indent on "required

set backspace=indent,eol,start

" ------------------------------------------------------------------------------------------------------------------------------
"  indetention line
let g:indentLine_char_list = ['¦']
let g:colors_name = "one-monokai"

" set nerdtree on by default
autocmd VimEnter * NERDTree

" ------------------------------------------------------------------------------------------------------------------------------

" enable mouse support "
set mouse=a

" enable syntax "
syntax on

" enable line numbers "
set number

" highlight current line "
set cursorline
:highlight Cursorline cterm=bold ctermbg=black

" enable highlight search pattern "
set hlsearch

" enable smatcase search sensitivity "
set ignorecase
set smartcase

" Indentation using spaces "
" tabstop:	width of tab character
" softtabstop:	fine tunes the amount of whitespace to be added
" shiftwidth:	determines the amount of whitespace to add in normal mode
" expandtab:	when on use space instead of tab
" textwidth:	text wrap width
" autoindent:	autoindent in new line
set tabstop	=4
set softtabstop	=4
set shiftwidth	=4
set textwidth 	=79
set expandtab
set autoindent

" show matching part of pairs [] {} and () "
set showmatch

" remove trailing whitespace from Python files "
autocmd BufWritePre *.py : %s/\s\+s//e
autocmd BufWritePre *.f90 : %s/\s\+s//e
autocmd BufWritePre *.f95 : %s/\s\+s//e
autocmd BufWritePre *.dor : %s/\s\+s//e

" enable color thems "
if !has('gui_running')
	set t_Co=256
endif
" enable tru colors support "
set termguicolors
" Vim colorscheme "
colorscheme  one-monokai

