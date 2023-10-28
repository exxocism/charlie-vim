filetype off
set shellslash
set rtp+=~/vimfiles/bundle/Vundle.vim
call vundle#begin('~/vimfiles/bundle')
Plugin 'VundleVim/Vundle.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/nerdtree'
Bundle 'LucHermitte/lh-vim-lib'
Bundle 'LucHermitte/lh-brackets'
call vundle#end()
let g:usemarks=0
let NERDTreeShowHidden=1
syntax on
colorscheme vimvscode
set number
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set splitbelow
set hidden
set autoread
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
  let uname = system('uname -a | grep Android')
  if len(uname) > 7
    autocmd VimEnter * ter ++rows=8
    autocmd VimEnter * wincmd w
  else
    autocmd VimEnter * ter ++rows=12
    autocmd VimEnter * wincmd w
  endif
endif
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd w

