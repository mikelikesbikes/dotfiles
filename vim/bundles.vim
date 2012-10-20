augroup bundles
  autocmd!

  filetype off

  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()

  " Let Vundle manage Vundle
    Bundle 'gmarik/vundle'

  " Ruby/Rails
    Bundle 'tpope/vim-rails'

  " Clojure
    Bundle 'VimClojure'

  " Golang
    Bundle 'jnwhiteh/vim-golang'

  " Markdown/Textile/etc
    Bundle 'timcharper/textile.vim'
    Bundle 'tpope/vim-markdown'

  " HTML/CSS/Javascript
    Bundle 'vim-coffee-script'


  " Utilities
    Bundle 'ack.vim'

    Bundle 'tpope/vim-fugitive'

    Bundle 'kien/ctrlp.vim'
    noremap <C-t> :CtrlPMixed<CR>

    " Bundle 'Command-T'
    " noremap <C-t> :CommandT<CR>
    " let g:CommandTMaxFiles=80085

    " Bundle 'FuzzyFinder'
    " noremap <C-t> :FufCoverageFile<CR>
  filetype plugin indent on
augroup END
