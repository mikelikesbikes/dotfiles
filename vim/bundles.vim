
augroup bundles
  autocmd!

  set nocompatible
  filetype off

  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()

  " Let Vundle manage Vundle
    Plugin 'gmarik/vundle'

  " Ruby/Rails
    Plugin 'tpope/vim-rails'

  " Clojure
    Plugin 'VimClojure'

  " Scala
    Plugin 'derekwyatt/vim-scala'

  " Golang
    Plugin 'fatih/vim-go'

  " Markdown/Textile/etc
    Plugin 'timcharper/textile.vim'
    Plugin 'tpope/vim-markdown'

  " HTML/CSS/Javascript
    Plugin 'vim-coffee-script'


  " Utilities
    Plugin 'ack.vim'
    let g:ackprg = 'ag --nogroup --nocolor --column'

    Plugin 'kien/ctrlp.vim'

    " Bundle 'Command-T'
    " noremap <C-t> :CommandT<CR>
    " let g:CommandTMaxFiles=80085

    Plugin 'vim-airline/vim-airline'
    Plugin 'rking/ag.vim'
    Plugin 'tpope/vim-fugitive'
    Plugin 'tpope/vim-surround'

    " from: https://github.com/Shougo/neocomplete.vim
    Plugin 'Shougo/neocomplete.vim'
    let g:acp_enableAtStartup = 0
    let g:neocomplete#enable_at_startup = 1
    let g:neocomplete#enable_smart_case = 1

  filetype plugin indent on
augroup END
