set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
call vundle#end()
syntax on
colorscheme vimvscode
set number
set tabstop=2
set shiftwidth=2
set expandtab
set splitbelow
if has('win32') || has('macunix')
  set clipboard=unnamed
endif
if has('linux')
  set clipboard=unnamedplus
endif
