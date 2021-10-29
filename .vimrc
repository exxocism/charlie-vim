set rtp+=~/.vim/bundle/Vundle.vim/
let g:usemarks=0
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Bundle 'LucHermitte/lh-vim-lib'
Bundle 'LucHermitte/lh-brackets'
call vundle#end()
syntax on
colorscheme vimvscode
set number
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set splitbelow
if has('win32') 
  set backspace=indent,eol,start
  set clipboard=unnamed
  autocmd VimEnter * ter ++rows=12
  autocmd VimEnter * wincmd w
endif
if has('macunix')
  set backspace=indent,eol,start
  set clipboard=unnamed
  autocmd VimEnter * ter ++rows=12
  autocmd VimEnter * wincmd w
endif
if has('linux')
  set clipboard=unnamedplus
  autocmd VimEnter * ter ++rows=12
  autocmd VimEnter * wincmd w
endif
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd w

